import {fileURLToPath} from 'node:url';
import {initializeABAP} from "../output/init.mjs";
import * as fs from 'node:fs';
import * as path from 'node:path';

await initializeABAP();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function run() {
  const js = fs.readFileSync(__dirname + path.sep + "zmjs_test262.js", "utf-8");
  const result = await abap.Classes["ZCL_MJS"].eval({iv_source: new abap.types.String().set(js)});
  console.dir(result);
}

run();