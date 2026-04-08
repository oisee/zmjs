import { Statements, String } from "@abaplint/runtime";
import { ABAPRegExp } from "@abaplint/runtime";
try {
  let res = [];
  Statements.find({val: new String().set("abc"), regex: new ABAPRegExp().set("(?=)"), results: res});
  console.log(res);
} catch(e) { console.log(e); }
