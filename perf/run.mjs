// Runs one timing pass of every perf/benchmarks/*.js file through the
// transpiled ZCL_MJS interpreter and appends the pass to the result file.
//
// Invoke multiple times, alternating between the two builds under comparison,
// so both sides sample the same machine conditions (see regression.yml).
// perf/compare.mjs computes the median per benchmark across all passes.
//
// usage: node perf/run.mjs <transpiled-output-dir> [result.json]

import * as fs from "node:fs";
import * as path from "node:path";
import {fileURLToPath, pathToFileURL} from "node:url";
import {performance} from "node:perf_hooks";

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const outputDir = process.argv[2];
const resultFile = process.argv[3];
if (outputDir === undefined) {
  console.error("usage: node perf/run.mjs <transpiled-output-dir> [result.json]");
  process.exit(1);
}

const {initializeABAP} = await import(pathToFileURL(path.resolve(outputDir, "init.mjs")));
await initializeABAP();

const benchmarkDir = path.join(__dirname, "benchmarks");
const files = fs.readdirSync(benchmarkDir).filter(f => f.endsWith(".js")).sort();
const pass = [];

for (const file of files) {
  const name = path.basename(file, ".js");
  const source = fs.readFileSync(path.join(benchmarkDir, file), "utf-8");
  try {
    const start = performance.now();
    const res = await abap.Classes["ZCL_MJS"].eval({iv_source: new abap.types.String().set(source)});
    const ms = Math.round((performance.now() - start) * 10) / 10;
    const value = res.get().trim();
    console.log(`${name}: ${ms}ms = ${value}`);
    pass.push({name, ms, value});
  } catch (e) {
    const error = "" + (e?.message ?? e);
    console.log(`${name}: ERROR ${error}`);
    pass.push({name, error});
  }
}

if (resultFile) {
  let passes = [];
  if (fs.existsSync(resultFile)) {
    passes = JSON.parse(fs.readFileSync(resultFile, "utf-8"));
  }
  passes.push(pass);
  fs.writeFileSync(resultFile, JSON.stringify(passes, null, 2));
}
