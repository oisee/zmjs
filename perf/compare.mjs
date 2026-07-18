// Compares two result files produced by perf/run.mjs (one or more passes
// each) and prints a markdown summary with the median time per benchmark.
//
// usage: node perf/compare.mjs <before.json> <after.json>

import * as fs from "node:fs";

const [beforeFile, afterFile] = process.argv.slice(2);
if (beforeFile === undefined || afterFile === undefined) {
  console.error("usage: node perf/compare.mjs <before.json> <after.json>");
  process.exit(1);
}

// [{name, ms, value} | {name, error}] per pass -> {name: {median, value, error}}
function aggregate(file) {
  const passes = JSON.parse(fs.readFileSync(file, "utf-8"));
  const byName = new Map();
  for (const pass of passes) {
    for (const r of pass) {
      const agg = byName.get(r.name) ?? {times: []};
      if (r.error !== undefined) {
        agg.error = r.error;
      } else {
        agg.times.push(r.ms);
        agg.value = r.value;
      }
      byName.set(r.name, agg);
    }
  }
  for (const agg of byName.values()) {
    agg.times.sort((x, y) => x - y);
    agg.median = agg.times[Math.floor(agg.times.length / 2)];
  }
  return byName;
}

const before = aggregate(beforeFile);
const after = aggregate(afterFile);
const passCount = JSON.parse(fs.readFileSync(afterFile, "utf-8")).length;

const lines = [];
lines.push("## Performance regression results");
lines.push("");
lines.push("| Benchmark | Base | PR | Change |");
lines.push("|---|---:|---:|---:|");

for (const [name, a] of after) {
  const b = before.get(name);
  const col = agg => agg === undefined ? "n/a" : agg.error !== undefined ? "ERROR" : `${agg.median}ms`;
  let changeCol = "";
  if (b !== undefined && b.error === undefined && a.error === undefined) {
    const delta = ((a.median - b.median) / b.median) * 100;
    const sign = delta >= 0 ? "+" : "";
    let marker = "";
    if (delta > 15) {
      marker = " 🔺";
    } else if (delta < -15) {
      marker = " 🟢";
    }
    changeCol = `${sign}${delta.toFixed(1)}%${marker}`;
    if (a.value !== b.value) {
      const fmt = v => String(v).replace(/\r?\n/g, "\\n").replace(/\|/g, "\\|");
      changeCol += ` ⚠️ result changed: \`${fmt(b.value)}\` → \`${fmt(a.value)}\``;
    }
  } else if (a.error !== undefined || b?.error !== undefined) {
    changeCol = `⚠️ ${a.error ?? b.error}`;
  }
  lines.push(`| ${name} | ${col(b)} | ${col(a)} | ${changeCol} |`);
}

lines.push("");
lines.push(`Median of ${passCount} interleaved passes of the transpiled interpreter — small deltas are noise.`);

console.log(lines.join("\n"));
