
// === ZMJS test262 flat bundle ===
// Auto-generated — do not edit.
// Run via: ZCL_MJS=>EVAL( iv_source = lv_js )
// Expected output: PASS=N FAIL=M TOTAL=T

function Test262Error(message) {
  this.message = message || "";
}
Test262Error.prototype.toString = function() {
  return "Test262Error: " + this.message;
};

function $ERROR(msg) { throw new Test262Error(msg); }
function $DONOTEVALUATE() { throw new Test262Error("$DONOTEVALUATE"); }

var assert = function(mustBeTrue, message) {
  if (mustBeTrue === true) return;
  throw new Test262Error(message || "Expected true but got " + mustBeTrue);
};
assert.sameValue = function(a, b, msg) {
  if (a === b) return;
  if (a !== a && b !== b) return; // NaN === NaN
  throw new Test262Error((msg ? msg + ": " : "") + "Expected " + a + " === " + b);
};
assert.notSameValue = function(a, b, msg) {
  if (a !== b) return;
  throw new Test262Error((msg ? msg + ": " : "") + "Expected " + a + " !== " + b);
};
assert.throws = function(ctor, fn, msg) {
  try { fn(); }
  catch(e) { return; }
  throw new Test262Error((msg || "Expected exception not thrown"));
};

var __pass = 0;
var __fail = 0;
var __errors = [];

function __test(name, fn) {
  try {
    fn();
    __pass = __pass + 1;
  } catch(e) {
    __fail = __fail + 1;
    var msg = (e && e.message) ? e.message : "" + e;
    if (msg.length > 80) { msg = msg.substring(0, 80); }
    __errors.push("FAIL: " + name + ": " + msg);
  }
}

__test("expressions/addition/S11.6.1_A2.2_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
function f1(){
  return 0;
}
if (f1 + 1 !== f1.toString() + 1) {
  throw new Test262Error('#1: function f1() {return 0;}; f1 + 1 === f1.toString() + 1');
}

//CHECK#2
function f2(){
  return 0;
}
f2.valueOf = function() {return 1;};
if (1 + f2 !== 1 + 1) {
  throw new Test262Error('#2: f1unction f2() {return 0;} f2.valueOf = function() {return 1;}; 1 + f2 === 1 + 1. Actual: ' + (1 + f2));
}

//CHECK#3
function f3(){
  return 0;
}
f3.toString = function() {return 1;};
if (1 + f3 !== 1 + 1) {
  throw new Test262Error('#3: f1unction f3() {return 0;} f3.toString() = function() {return 1;}; 1 + f3 === 1 + 1. Actual: ' + (1 + f3));
}

//CHECK#4
function f4(){
  return 0;
}
f4.valueOf = function() {return -1;};
f4.toString = function() {return 1;};
if (f4 + 1 !== 1 - 1) {
  throw new Test262Error('#4: f1unction f4() {return 0;}; f2.valueOf = function() {return -1;}; f4.toString() = function() {return 1;}; f4 + 1 === 1 - 1. Actual: ' + (f4 + 1));
}

});

__test("expressions/addition/S11.6.1_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x + y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x + y throw "x". Actual: ' + (x + y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x + y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/addition/S11.6.1_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) + x !== 2) {
  throw new Test262Error('#1: var x = 0; (x = 1) + x === 2. Actual: ' + ((x = 1) + x));
}

//CHECK#2
var x = 0; 
if (x + (x = 1) !== 1) {
  throw new Test262Error('#2: var x = 0; x + (x = 1) === 1. Actual: ' + (x + (x = 1)));
}

});

__test("expressions/addition/S11.6.1_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() + y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() + y() throw "x". Actual: ' + (x() + y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() + y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/addition/S11.6.1_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) + y !== 2) {
  throw new Test262Error('#1: (y = 1) + y === 2. Actual: ' + ((y = 1) + y));
}

});

__test("expressions/subtraction/S11.6.2_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x - y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x - y throw "x". Actual: ' + (x - y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x - y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/subtraction/S11.6.2_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) - x !== 0) {
  throw new Test262Error('#1: var x = 0; (x = 1) - x === 0. Actual: ' + ((x = 1) - x));
}

//CHECK#2
var x = 0; 
if (x - (x = 1) !== -1) {
  throw new Test262Error('#2: var x = 0; x - (x = 1) === -1. Actual: ' + (x - (x = 1)));
}

});

__test("expressions/subtraction/S11.6.2_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() - y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() - y() throw "x". Actual: ' + (x() - y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() - y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/subtraction/S11.6.2_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) - y !== 0) {
  throw new Test262Error('#1: (y = 1) - y === 0. Actual: ' + ((y = 1) - y));
}

});

__test("expressions/multiplication/S11.5.1_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x * y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x * y throw "x". Actual: ' + (x * y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x * y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/multiplication/S11.5.1_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) * x !== 1) {
  throw new Test262Error('#1: var x = 0; (x = 1) * x === 1. Actual: ' + ((x = 1) * x));
}

//CHECK#2
var x = 0; 
if (x * (x = 1) !== 0) {
  throw new Test262Error('#2: var x = 0; x * (x = 1) === 0. Actual: ' + (x * (x = 1)));
}

});

__test("expressions/multiplication/S11.5.1_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() * y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() * y() throw "x". Actual: ' + (x() * y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() * y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/multiplication/S11.5.1_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) * y !== 1) {
  throw new Test262Error('#1: (y = 1) * y === 1. Actual: ' + ((y = 1) * y));
}

});

__test("expressions/multiplication/line-terminator.js", function() {
// Copyright (C) 2019 Leo Balter. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x = 18

*

2

*

9
;

assert.sameValue(x, 324);

});

__test("expressions/division/S11.5.2_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x / y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x / y throw "x". Actual: ' + (x / y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x / y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/division/S11.5.2_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) / x !== 1) {
  throw new Test262Error('#1: var x = 0; (x = 1) / x === 1. Actual: ' + ((x = 1) / x));
}

//CHECK#2
var x = 0; 
if (x / (x = 1) !== 0) {
  throw new Test262Error('#2: var x = 0; x / (x = 1) === 0. Actual: ' + (x / (x = 1)));
}

});

__test("expressions/division/S11.5.2_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() / y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() / y() throw "x". Actual: ' + (x() / y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() / y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/division/S11.5.2_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) / y !== 1) {
  throw new Test262Error('#1: (y = 1) / y === 1. Actual: ' + ((y = 1) / y));
}

});

__test("expressions/division/line-terminator.js", function() {
// Copyright (C) 2019 Leo Balter. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x = 18

/

2

/

9
;

assert.sameValue(x, 1);

});

__test("expressions/division/no-magic-asi.js", function() {
// Copyright (C) 2019 Leo Balter. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var instance = 60;
var of = 6;
var g = 2;

var notRegExp = instance/of/g;

assert.sameValue(notRegExp, 5);

});

__test("expressions/modulus/S11.5.3_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x % y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x % y throw "x". Actual: ' + (x % y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x % y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/modulus/S11.5.3_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) % x !== 0) {
  throw new Test262Error('#1: var x = 0; (x = 1) % x === 0. Actual: ' + ((x = 1) % x));
}

//CHECK#2
var x = 1; 
if (x % (x = 2) !== 1) {
  throw new Test262Error('#2: var x = 1; x % (x = 2) === 1. Actual: ' + (x % (x = 2)));
}

});

__test("expressions/modulus/S11.5.3_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() % y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() % y() throw "x". Actual: ' + (x() % y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() % y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/modulus/S11.5.3_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) % y !== 0) {
  throw new Test262Error('#1: (y = 1) % y === 0. Actual: ' + ((y = 1) % y));
}

});

__test("expressions/modulus/line-terminator.js", function() {
// Copyright (C) 2019 Leo Balter. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x = 18

%

7

%

3
;

assert.sameValue(x, 1);

});

__test("expressions/logical-and/S11.11.1_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = false; 
if (((x = true) && x) !== true) {
  throw new Test262Error('#1: var x = false; ((x = true) && x) === true');
}

//CHECK#2
var x = false; 
if ((x && (x = true)) !== false) {
  throw new Test262Error('#2: var x = false; (x && (x = true)) === false');
}

});

__test("expressions/logical-and/S11.11.1_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() && y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() && y() throw "x". Actual: ' + (x() && y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() && y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/logical-or/S11.11.2_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = true; 
if (((x = false) || x) !== false) {
  throw new Test262Error('#1: var x = true; ((x = false) || x) === false');
}

//CHECK#2
var x = true; 
if ((x || (x = false)) !== true) {
  throw new Test262Error('#2: var x = true; (x || (x = false)) === true');
}

});

__test("expressions/logical-or/S11.11.2_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() || y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() || y() throw "x". Actual: ' + (x() || y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() || y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/logical-not/S9.2_A5_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// CHECK#1
if (!("") !== true) {
  throw new Test262Error('#1: !("") === true. Actual: ' + (!("")));
}

});

__test("expressions/strict-equals/S11.9.4_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if (!((x = 1) === x)) {
  throw new Test262Error('#1: var x = 0; (x = 1) === x');
}

//CHECK#2
var x = 0; 
if (x === (x = 1)) {
  throw new Test262Error('#2: var x = 0; x !== (x = 1)');
}

});

__test("expressions/strict-equals/S11.9.4_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() === y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() === y() throw "x". Actual: ' + (x() === y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (!(e === "x")) {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() === y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/strict-equals/S11.9.4_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if (!((y = 1) === y)) {
  throw new Test262Error('#1: (y = 1) === y');
}

});

__test("expressions/strict-does-not-equals/S11.9.5_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) !== x) {
  throw new Test262Error('#1: var x = 0; (x = 1) === x');
}

//CHECK#2
var x = 0; 
if (!(x !== (x = 1))) {
  throw new Test262Error('#2: var x = 0; x !== (x = 1)');
}

});

__test("expressions/strict-does-not-equals/S11.9.5_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() !== y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() !== y() throw "x". Actual: ' + (x() !== y()));
} catch (e) {
   if (!(e !== "y")) {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() !== y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/strict-does-not-equals/S11.9.5_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) !== y) {
  throw new Test262Error('#1: (y = 1) === y');
}

});

__test("expressions/does-not-equals/S11.9.2_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if (((x = 1) != x) !== false) {
  throw new Test262Error('#1: var x = 0; ((x = 1) != x) === false');
}

//CHECK#2
var x = 0; 
if ((x != (x = 1)) !== true) {
  throw new Test262Error('#2: var x = 0; (x != (x = 1)) === true');
}

});

__test("expressions/does-not-equals/S11.9.2_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() != y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() != y() throw "x". Actual: ' + (x() != y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() != y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/does-not-equals/S11.9.2_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if (((y = 1) != y) !== false) {
  throw new Test262Error('#1: ((y = 1) != y) === false');
}

});

__test("expressions/less-than/S11.8.1_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x < y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x < y throw "x". Actual: ' + (x < y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x < y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/less-than/S11.8.1_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 1; 
if ((x = 0) < x !== false) {
  throw new Test262Error('#1: var x = 1; (x = 0) < x === false');
}

//CHECK#2
var x = 0; 
if (x < (x = 1) !== true) {
  throw new Test262Error('#2: var x = 0; x < (x = 1) === true');
}

});

__test("expressions/less-than/S11.8.1_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() < y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() < y() throw "x". Actual: ' + (x() < y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() < y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/less-than/S11.8.1_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) < y !== false) {
  throw new Test262Error('#1: (y = 1) < y === false');
}

});

__test("expressions/greater-than/S11.8.2_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) > x !== false) {
  throw new Test262Error('#1: var x = 0; (x = 1) > x === false');
}

//CHECK#2
var x = 1; 
if (x > (x = 0) !== true) {
  throw new Test262Error('#2: var x = 1; x > (x = 0) === true');
}

});

__test("expressions/greater-than/S11.8.2_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() > y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() > y() throw "x". Actual: ' + (x() > y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() > y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/greater-than/S11.8.2_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) > y !== false) {
  throw new Test262Error('#1: (y = 1) > y === false');
}

});

__test("expressions/less-than-or-equal/S11.8.3_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 0; 
if ((x = 1) <= x !== true) {
  throw new Test262Error('#1: var x = 0; (x = 1) <= x === true');
}

//CHECK#2
var x = 1; 
if (x <= (x = 0) !== false) {
  throw new Test262Error('#2: var x = 1; x <= (x = 0) === false');
}

});

__test("expressions/less-than-or-equal/S11.8.3_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() <= y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() <= y() throw "x". Actual: ' + (x() <= y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() <= y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/less-than-or-equal/S11.8.3_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) <= y !== true) {
  throw new Test262Error('#1: (y = 1) <= y === true');
}

});

__test("expressions/greater-than-or-equal/S11.8.4_A2.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = { valueOf: function () { throw "x"; } };
var y = { valueOf: function () { throw "y"; } };
try {
   x >= y;
   throw new Test262Error('#1.1: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x >= y throw "x". Actual: ' + (x >= y));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: ToNumber(first expression) is called first, and then ToNumber(second expression)');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = { valueOf: function () { throw "x"; } }; var y = { valueOf: function () { throw "y"; } }; x >= y throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/greater-than-or-equal/S11.8.4_A2.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = 1; 
if ((x = 0) >= x !== true) {
  throw new Test262Error('#1: var x = 1; (x = 0) >= x === true');
}

//CHECK#2
var x = 0; 
if (x >= (x = 1) !== false) {
  throw new Test262Error('#2: var x = 0; x >= (x = 1) === false');
}

});

__test("expressions/greater-than-or-equal/S11.8.4_A2.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
var x = function () { throw "x"; };
var y = function () { throw "y"; };
try {
   x() >= y();
   throw new Test262Error('#1.1: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() >= y() throw "x". Actual: ' + (x() >= y()));
} catch (e) {
   if (e === "y") {
     throw new Test262Error('#1.2: First expression is evaluated first, and then second expression');
   } else {
     if (e !== "x") {
       throw new Test262Error('#1.3: var x = function () { throw "x"; }; var y = function () { throw "y"; }; x() >= y() throw "x". Actual: ' + (e));
     }
   }
}

});

__test("expressions/greater-than-or-equal/S11.8.4_A2.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ((y = 1) >= y !== true) {
  throw new Test262Error('#1: (y = 1) >= y === true');
}

});

__test("expressions/typeof/boolean.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(
  typeof true,
   "boolean",
  'typeof true === "boolean"'
);

assert.sameValue(
  typeof false,
   "boolean",
  'typeof false === "boolean"'
);

});

__test("expressions/typeof/built-in-ordinary-objects-no-call.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(
  typeof Math,
   "object",
  'typeof Math === "object"'
);

assert.sameValue(
  typeof Reflect,
   "object",
  'typeof Reflect === "object"'
);

});

__test("expressions/typeof/get-value-ref-err.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  typeof x.x;
});

});

__test("expressions/typeof/null.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(
  typeof null,
   "object",
  'typeof null === "object"'
);

assert.sameValue(
  typeof RegExp("0").exec("1"),
   "object",
  'typeof RegExp("0").exec("1") === "object"'
);

});

__test("expressions/typeof/undefined.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(
  typeof undefined,
  "undefined",
  'typeof undefined === "undefined"'
);

assert.sameValue(
  typeof void 0,
  "undefined",
  'typeof void 0 === "undefined"'
);

});

__test("expressions/typeof/unresolvable-reference.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(
  typeof x,
  "undefined",
  "typeof x === 'undefined'"
);

});

__test("expressions/conditional/coalesce-expr-ternary.js", function() {
// Copyright (C) 2019 Leo Balter. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x;

x = undefined ?? true ? 0 : 42;
assert.sameValue(x, 0, 'undefined ?? true ? 0 : 42');

x = undefined;
x = null ?? true ? 0 : 42;
assert.sameValue(x, 0, 'null ?? true ? 0 : 42');

x = undefined;
x = undefined ?? false ? 0 : 42;
assert.sameValue(x, 42, 'undefined ?? false ? 0 : 42');

x = undefined;
x = null ?? false ? 0 : 42;
assert.sameValue(x, 42, 'null ?? false ? 0 : 42');

x = undefined;
x = false ?? true ? 0 : 42;
assert.sameValue(x, 42, 'false ?? true ? 0 : 42');

x = undefined;
x = 0 ?? true ? 0 : 42;
assert.sameValue(x, 42, '0 ?? true ? 0 : 42');

x = undefined;
x = 1 ?? false ? 0 : 42;
assert.sameValue(x, 0, '1 ?? false ? 0 : 42');

x = undefined;
x = true ?? false ? 0 : 42;
assert.sameValue(x, 0, 'true ?? false ? 0 : 42');

x = undefined;
x = true ?? true ? 0 : 42;
assert.sameValue(x, 0, 'true ?? true ? 0 : 42');

x = undefined;
x = '' ?? true ? 0 : 42;
assert.sameValue(x, 42, '"" ?? true ? 0 : 42');

x = undefined;
x = Symbol() ?? false ? 0 : 42;
assert.sameValue(x, 0, 'Symbol() ?? false ? 0 : 42');

x = undefined;
x = {} ?? false ? 0 : 42;
assert.sameValue(x, 0, 'object ?? false ? 0 : 42');

});

__test("statements/if/S12.5_A3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//////////////////////////////////////////////////////////////////////////////
//CHECK#1
try {
	if ((function(){throw 1})()) abracadabra
} catch (e) {
	if (e !== 1) {
		throw new Test262Error('#1: Exception === 1. Actual:  Exception ==='+ e);
	}
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
try {
	if ((function(){throw 1})()) abracadabra; else blablachat;
} catch (e) {
	if (e !== 1) {
		throw new Test262Error('#2: Exception === 1. Actual:  Exception ==='+ e);
	}
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/if/S12.5_A4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//////////////////////////////////////////////////////////////////////////////
//CHECK#1
try {
	if (true) (function(){throw "instatement"})();
	throw new Test262Error("#1 failed")
} catch (e) {
	if (e !== "instatement") {
		throw new Test262Error('#1: Exception === "instatement". Actual:  Exception ==='+ e);
	}
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
try {
	if (false) (function(){throw "truebranch"})(); (function(){throw "missbranch"})();
	throw new Test262Error("#2 failed")
} catch (e) {
	if (e !== "missbranch") {
		throw new Test262Error('#2: Exception === "missbranch". Actual:  Exception ==='+ e);
	}
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/if/S12.5_A5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//////////////////////////////////////////////////////////////////////////////
//CHECK#1
try {
	__func=__func;
	throw new Test262Error('#1: "__func=__func" lead to throwing exception');
} catch (e) {
	;
}
//
//////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////
//CHECK#2
try {
	if(function __func(){throw "FunctionExpression";}) (function(){throw "TrueBranch"})(); else (function(){"MissBranch"})();
} catch (e) {
	if (e !== "TrueBranch") {
		throw new Test262Error('#2: Exception ==="TrueBranch". Actual:  Exception ==='+ e);
	}
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
try {
	__func=__func;
	throw new Test262Error('#3: "__func=__func" lead to throwing exception');
} catch (e) {
	;
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/if/empty-statement.js", function() {
// Copyright 2019 Mike Pennisi.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



if(1);

});

__test("statements/if/let-block-with-newline.js", function() {
// Copyright (C) 2017 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



if (false) let // ASI
{}

});

__test("statements/if/let-identifier-with-newline.js", function() {
// Copyright (C) 2017 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



if (false) let // ASI
x = 1;

});

__test("statements/for/12.6.3_2-3-a-ii-17.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



        var accessed = false;
        for (var i = 0; 2;) {
            accessed = true;
            break;
        }

assert(accessed, 'accessed !== true');

});

__test("statements/for/12.6.3_2-3-a-ii-19.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



        var accessed = false;
        for (var i = 0; "undefined";) {
            accessed = true;
            break;
        }

assert(accessed, 'accessed !== true');

});

__test("statements/for/12.6.3_2-3-a-ii-20.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



        var accessed = false;
        for (var i = 0; "null";) {
            accessed = true;
            break;
        }

assert(accessed, 'accessed !== true');

});

__test("statements/for/12.6.3_2-3-a-ii-21.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



        var accessed = false;
        for (var i = 0; "1";) {
            accessed = true;
            break;
        }

assert(accessed, 'accessed !== true');

});

__test("statements/for/head-let-destructuring.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var value;

for ( let[x] = [23]; ; ) {
  value = x;
  break;
}

assert.sameValue(typeof x, 'undefined', 'binding is block-scoped');
assert.sameValue(value, 23);

});

__test("statements/for/head-lhs-let.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var let;

let = 1;
for ( let; ; )
  break;

assert.sameValue(let, 1, 'IdentifierReference');

let = 2;
for ( let = 3; ; )
  break;

assert.sameValue(let, 3, 'AssignmentExpression');

let = 4;
for ( [let][0]; ; )
  break;

assert.sameValue(let, 4, 'MemberExpression');

});

__test("statements/for/let-block-with-newline.js", function() {
// Copyright (C) 2017 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



for (; false; ) let // ASI
{}

});

__test("statements/for/let-identifier-with-newline.js", function() {
// Copyright (C) 2017 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



for (; false; ) let // ASI
x = 1;

});

__test("statements/for/scope-body-lex-boundary.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var probeFirst;
var probeSecond = null;

for (let x = 'first'; probeSecond === null; x = 'second')
  if (!probeFirst)
    probeFirst = function() { return x; };
  else
    probeSecond = function() { return x; };

assert.sameValue(probeFirst(), 'first');
assert.sameValue(probeSecond(), 'second');

});

__test("statements/for/scope-body-lex-open.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var probeBefore, probeTest, probeIncr, probeBody;
var run = true;

for (
    let x = 'outside', _ = probeBefore = function() { return x; };
    run && (x = 'inside', probeTest = function() { return x; });
    probeIncr = function() { return x; }
  )
  probeBody = function() { return x; }, run = false;

assert.sameValue(probeBefore(), 'outside');
assert.sameValue(probeTest(), 'inside', 'reference from "test" position');
assert.sameValue(probeBody(), 'inside', 'reference from statement body');
assert.sameValue(probeIncr(), 'inside', 'reference from "increment" position');

});

__test("statements/for/scope-head-lex-close.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


let x = 'outside';
var run = true;
var probeTest, probeIncr, probeBody;

for (
    let x = 'inside';
    (probeTest = function() { return x; }) && run;
    probeIncr = function() { return x; }
  )
  probeBody = function() { return x; }, run = false;

assert.sameValue(probeBody(), 'inside', 'reference from statement body');
assert.sameValue(probeIncr(), 'inside', 'reference from "increment" position');
assert.sameValue(probeTest(), 'inside', 'reference from "test" position');
assert.sameValue(x, 'outside');

});

__test("statements/for/scope-head-lex-open.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


let x = 'outside';
var probeBefore = function() { return x; };
var probeDecl, probeTest, probeIncr, probeBody;
var run = true;

for (
    let x = 'inside', _ = probeDecl = function() { return x; };
    run && (probeTest = function() { return x; });
    probeIncr = function() { return x; }
  )
  probeBody = function() { return x; }, run = false;

assert.sameValue(probeBefore(), 'outside');
assert.sameValue(probeDecl(), 'inside', 'reference from LexicalDeclaration');
assert.sameValue(probeTest(), 'inside', 'reference from "test" position');
assert.sameValue(probeBody(), 'inside', 'reference from statement body');
assert.sameValue(probeIncr(), 'inside', 'reference from "increment" position');

});

__test("statements/while/S12.6.2_A4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __in__do__before__break, __in__do__after__break;

while(1===1){
    __in__do__before__break="reached"; 
    break;
     __in__do__after__break="where am i";
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__in__do__before__break !== "reached") {
	throw new Test262Error('#1: __in__do__before__break === "reached". Actual:  __in__do__before__break ==='+ __in__do__before__break  );
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (typeof __in__do__after__break !== "undefined") {
	throw new Test262Error('#2: typeof __in__do__after__break === "undefined". Actual:  typeof __in__do__after__break ==='+ typeof __in__do__after__break  );
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/while/S12.6.2_A4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



do_out : while(1===1) {
    if (__in__do__before__break) break;
    var __in__do__before__break="black";
    do_in : while (1) {
        var __in__do__IN__before__break="hole";
        break do_in; 
        var __in__do__IN__after__break="sun";
    } ;
    var __in__do__after__break="won't you come";
};

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (!(__in__do__before__break&&__in__do__IN__before__break&&!__in__do__IN__after__break&&__in__do__after__break)) {
	throw new Test262Error('#1: Break inside do-while is allowed as its described at standard');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/while/S12.6.2_A4_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



do_out : while(1===1) {
    if (__in__do__before__break) break;
    var __in__do__before__break="once";
    do_in : while (1) {
        var __in__do__IN__before__break="in";
        break do_out;
        var __in__do__IN__after__break="the";
    } ;
    var __in__do__after__break="lifetime";
} ;

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (!(__in__do__before__break&&__in__do__IN__before__break&&!__in__do__IN__after__break&&!__in__do__after__break)) {
	throw new Test262Error('#1: Break inside do-while is allowed as its described at standard');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/while/S12.6.2_A4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



do_out : while(1===1) {
    if(__in__do__before__break)break;
    var __in__do__before__break="can't";
    do_in : while (1) {
        var __in__do__IN__before__break="get";
        break;
        var __in__do__IN__after__break="no";
    } ;
    var __in__do__after__break="Satisfaction";
} ;

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (!(__in__do__before__break&&__in__do__IN__before__break&&!__in__do__IN__after__break&&__in__do__after__break)) {
	throw new Test262Error('#1: Break inside do-while is allowed as its described at standard');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/while/let-block-with-newline.js", function() {
// Copyright (C) 2017 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



while (false) let // ASI
{}

});

__test("statements/while/let-identifier-with-newline.js", function() {
// Copyright (C) 2017 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



while (false) let // ASI
x = 1;

});

__test("statements/switch/scope-lex-close-case.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


let x = 'outside';
var probe1, probe2;

switch (null) {
  case null:
    let x = 'inside';
    probe1 = function() { return x; };
  case null:
    probe2 = function() { return x; };
}

assert.sameValue(probe1(), 'inside', 'from first `case` clause');
assert.sameValue(probe2(), 'inside', 'from second `case` clause');
assert.sameValue(x, 'outside');

});

__test("statements/switch/scope-lex-close-dflt.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


let x = 'outside';
var probeDefault, probeDefaultBeforeCase, probeCase;

switch (null) {
  default:
    let x = 'inside';
    probeDefault = function() { return x; };
}

assert.sameValue(probeDefault(), 'inside', 'from lone `default` clause`');
assert.sameValue(x, 'outside');

switch (null) {
  default:
    let x = 'inside';
    probeDefaultBeforeCase = function() { return x; };
  case 0:
    probeCase = function() { return x; };
}

assert.sameValue(
  probeDefaultBeforeCase(),
  'inside',
  'from `default` clause preceding `case` clause'
);
assert.sameValue(
  probeCase(), 'inside', 'from `case` clause following `default` clause'
);

});

__test("statements/switch/scope-lex-open-case.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


let x = 'outside';
var probeExpr, probeSelector, probeStmt;

switch (probeExpr = function() { return x; }, null) {
  case probeSelector = function() { return x; }, null:
    probeStmt = function() { return x; };
    let x = 'inside';
}

assert.sameValue(probeExpr(), 'outside');
assert.sameValue(
  probeSelector(), 'inside', 'reference from "selector" Expression'
);
assert.sameValue(probeStmt(), 'inside', 'reference from Statement position');

});

__test("statements/switch/scope-lex-open-dflt.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


let x = 'outside';
var probeExpr, probeStmt;

switch (probeExpr = function() { return x; }) {
  default:
    probeStmt = function() { return x; };
    let x = 'inside';
}

assert.sameValue(probeExpr(), 'outside');
assert.sameValue(probeStmt(), 'inside');

});

__test("statements/throw/S12.13_A1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var inCatch = false;

try {
  throw "expected_message";
} catch (err) {
  assert.sameValue(err, "expected_message");
  inCatch = true;
}

assert.sameValue(inCatch, true);

});

__test("statements/try/12.14-13.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



        var res1 = false;
        var res2 = false;
        var res3 = false;

(function() {
        var x_12_14_13 = 'local';

            function foo() {
                this.x_12_14_13 = 'instance';
            }

            try {
                throw foo;
            }
            catch (e) {
                res1 = (x_12_14_13 === 'local');
                e();
                res2 = (x_12_14_13 === 'local');
            }
            res3 = (x_12_14_13 === 'local');
})();

assert(res1, 'res1 !== true');
assert(res2, 'res2 !== true');
assert(res3, 'res3 !== true');

});

__test("statements/try/12.14-14.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var global = this;
var result;

(function() {
        try {
            throw function () {
                this._12_14_14_foo = "test";
            };
        } catch (e) {
            e();
            result = global._12_14_14_foo;
        }
})();

assert.sameValue(result, "test", 'result');

});

__test("statements/try/12.14-15.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var global = this;
var result;

(function() {
        var obj = {};
        obj.test = function () {
            this._12_14_15_foo = "test";
        };
        try {
            throw obj.test;
        } catch (e) {
            e();
            result = global._12_14_15_foo;
        }
})();

assert.sameValue(result, "test", 'result');

});

__test("statements/try/12.14-16.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var global = this;
var result;

(function() {
        try {
            throw function () {
                this._12_14_16_foo = "test";
            };
        } catch (e) {
            var obj = {};
            obj.test = function () {
                this._12_14_16_foo = "test1";
            };
            e = obj.test;
            e();
            result = global._12_14_16_foo;
        }
})();

assert.sameValue(result, "test1", 'result');

});

__test("statements/try/12.14-8.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



  var o = {foo: 42};

  try {
    throw o;
  }
  catch (e) {
    var foo = 1;
  }

assert.sameValue(o.foo, 42);

});

__test("statements/try/S12.14_A2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// CHECK#1
try {
  throw "catchme";	
  throw new Test262Error('#1: throw "catchme" lead to throwing exception');
}
catch(e){}

// CHECK#2
var c2=0;
try{
  try{
    throw "exc";
    throw new Test262Error('#2.1: throw "exc" lead to throwing exception');
  }finally{
    c2=1;
  }
}
catch(e){
  if (c2!==1){
    throw new Test262Error('#2.2: "finally" block must be evaluated');
  }
}
 
// CHECK#3
var c3=0;
try{
  throw "exc";
  throw new Test262Error('#3.1: throw "exc" lead to throwing exception');
}
catch(err){  	
  var x3=1;
}
finally{
  c3=1;
}
if (x3!==1){
  throw new Test262Error('#3.2: "catch" block must be evaluated');
}  
if (c3!==1){
  throw new Test262Error('#3.3: "finally" block must be evaluated');
}

});

__test("statements/try/scope-catch-block-lex-close.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var probe, x;

try {
  throw null;
} catch (_) {
  let x = 'inside';
  probe = function() { return x; };
}
x = 'outside';

assert.sameValue(x, 'outside');
assert.sameValue(probe(), 'inside');

});

__test("statements/try/scope-catch-block-lex-open.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var probeParam, probeBlock;
let x = 'outside';

try {
  throw [];
} catch ([_ = probeParam = function() { return x; }]) {
  probeBlock = function() { return x; };
  let x = 'inside';
}

assert.sameValue(probeParam(), 'outside');
assert.sameValue(probeBlock(), 'inside');

});

__test("statements/try/scope-catch-block-var-none.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var x = 1;
var probeBefore = function() { return x; };
var probeInside;

try {
  throw null;
} catch (_) {
  var x = 2;
  probeInside = function() { return x; };
}

assert.sameValue(probeBefore(), 2, 'reference preceding statement');
assert.sameValue(probeInside(), 2, 'reference within statement');
assert.sameValue(x, 2, 'reference following statement');

});

__test("statements/try/static-init-await-binding-valid.js", function() {
// Copyright (C) 2021 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


class C {
  static {
    (() => { try {} catch (await) {} });
  }
}

});

__test("statements/variable/12.2.1-10-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



  var s = eval;
  s('eval = 42;');

});

__test("statements/variable/S12.2_A2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (delete(__variable)) {
	throw new Test262Error('#1: delete(__variable)===false');
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (delete(this["__variable"])) {
	throw new Test262Error('#2: delete(this["__variable"])===false');
}
//
//////////////////////////////////////////////////////////////////////////////


var __variable;
var __variable = "defined";

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (delete(__variable) | delete(this["__variable"])) {
	throw new Test262Error('#3: (delete(__variable) | delete(this["__variable"]))===false' );
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if ((__variable !== "defined")|(this["__variable"] !=="defined")) {
	throw new Test262Error('#4: __variable === "defined" and this["__variable"] ==="defined"');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/variable/arguments-fn-non-strict.js", function() {
// Copyright (c) 2018 Mike Pennisi.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function f() {
  var arguments;
}

});

__test("statements/variable/arguments-non-strict.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var arguments;

});

__test("statements/variable/eval-non-strict.js", function() {
// Copyright (c) 2018 Mike Pennisi.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var eval;

});

__test("statements/variable/fn-name-arrow.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var arrow = () => {};

verifyProperty(arrow, 'name', {
  value: 'arrow',
  writable: false,
  enumerable: false,
  configurable: true,
});

});

__test("statements/variable/fn-name-class.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var xCls = class x {};
var cls = class {};
var xCls2 = class { static name() {} };

assert.notSameValue(xCls.name, 'xCls');
assert.notSameValue(xCls2.name, 'xCls2');

verifyProperty(cls, 'name', {
  value: 'cls',
  writable: false,
  enumerable: false,
  configurable: true,
});

});

__test("statements/variable/fn-name-cover.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var xCover = (0, function() {});
var cover = (function() {});

assert(xCover.name !== 'xCover');

verifyProperty(cover, 'name', {
  value: 'cover',
  writable: false,
  enumerable: false,
  configurable: true,
});

});

__test("statements/variable/fn-name-fn.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var xFn = function x() {};
var fn = function() {};

assert(xFn.name !== 'xFn');

verifyProperty(fn, 'name', {
  value: 'fn',
  writable: false,
  enumerable: false,
  configurable: true,
});

});

__test("statements/variable/static-init-await-binding-valid.js", function() {
// Copyright (C) 2021 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


class C {
  static {
    (() => { var await; });
  }
}

});

__test("statements/function/13.2-1-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var foo = function () {
    this.caller = 12;
}
var obj = new foo();

assert.sameValue(obj.caller, 12, 'obj.caller');

});

__test("statements/function/13.2-20-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var foo = Function("'use strict'; for (var tempIndex in this) {assert.notSameValue(tempIndex, 'arguments', 'tempIndex');}");
foo.call(foo);

});

__test("statements/function/13.2-21-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {"use strict";}

assert.throws(TypeError, function() {
    var temp = foo.caller;
});

});

__test("statements/function/13.2-22-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {"use strict";}

assert.throws(TypeError, function() {
    foo.caller = 41;
});

});

__test("statements/function/13.2-23-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {"use strict";}
for (var tempIndex in foo) {
    assert.notSameValue(tempIndex, "caller", 'tempIndex');
}

});

__test("statements/function/13.2-24-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {
    "use strict";
    for (var tempIndex in this) {
        assert.notSameValue(tempIndex, "caller", 'tempIndex');
    }
}

foo.call(foo);

});

__test("statements/function/13.2-25-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {"use strict";}

assert.throws(TypeError, function() {
    var temp = foo.arguments;
});

});

__test("statements/function/13.2-26-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {"use strict";}

assert.throws(TypeError, function() {
    foo.arguments = 41;
});

});

__test("statements/function/13.2-27-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo () {"use strict";}

for (var tempIndex in foo) {
    assert.notSameValue(tempIndex, "arguments", 'tempIndex');
}

});

__test("statements/function/13.2-28-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo() {
    "use strict";
    for (var tempIndex in this) {
        assert.notSameValue(tempIndex, "arguments", 'tempIndex');
    }
}
foo.call(foo);

});

__test("statements/function/13.2-3-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var foo = function () {
    this.arguments = 12;
}
var obj = new foo();

assert.sameValue(obj.arguments, 12, 'obj.arguments');

});

__test("statements/function/13.2-9-s.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var foo = Function("'use strict';");

assert.throws(TypeError, function() {
    var temp = foo.caller;
});

});

__test("statements/function/S13.2.1_A4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(__arg){
    __arg.foo=7;
}

var __obj={};

__func(__obj);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.foo !== 7) {
	throw new Test262Error('#1: __obj.foo === 7. Actual: __obj.foo ==='+__obj.foo);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(__arg){
    __arg.foo="whiskey gogo";
}

var __obj={};

 __func(__obj);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.foo !== "whiskey gogo") {
	throw new Test262Error('#1: __obj.foo === "whiskey gogo". Actual: __obj.foo ==='+__obj.foo);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A4_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(){
    arguments[0]["PI"]=3.14;
}

var __obj={};

__func(__obj);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.PI !== 3.14) {
	throw new Test262Error('#1: __obj.PI === 3.14. Actual: __obj.PI ==='+__obj.PI);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(){
    arguments[0]["E"]=2.74;
}

var __obj={};

__func(__obj);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.E !== 2.74) {
	throw new Test262Error('#1: __obj.E === 2.74. Actual: __obj.E ==='+__obj.E);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A6_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(arg1, arg2){
    arg1++;
    arg2+="BA";
};

var x=1;
y=2;
var a="AB"
b="SAM";

__func(x,a);
__func(y,b);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x!==1 || y!==2 || a!=="AB" || b!=="SAM") {
	throw new Test262Error('#1: x === 1 and y === 2 and a === "AB" and b === "SAM". Actual: x ==='+x+' and y ==='+y+' and a ==='+a+' and b ==='+b);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A6_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



__func = function(arg1, arg2){
    arg1++;
    arg2+="BA";
};

var x=1;
y=2;
var a="AB"
b="SAM";

__func(x,a);
__func(y,b);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x!==1 || y!==2 || a!=="AB" || b!=="SAM") {
	throw new Test262Error('#1: x === 1 and y === 2 and a === "AB" and b === "SAM". Actual: x ==='+x+' and y ==='+y+' and a ==='+a+' and b ==='+b);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A6_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __func, y, b;

function __func(arg1, arg2){
    arg1++;
    arg2+="BA";
};

var x=1;
y=2;
var a="AB"
b="SAM";

__func(x,a);
__func(y,b);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x!==1 || y!==2 || a!=="AB" || b!=="SAM") {
	throw new Test262Error('#1: x === 1 and y === 2 and a === "AB" and b === "SAM". Actual: x ==='+x+' and y ==='+y+' and a ==='+a+' and b ==='+b);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A6_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __func, y, b;

__func = function(arg1, arg2){
    arg1++;
    arg2+="BA";
};

var x=1;
y=2;
var a="AB"
b="SAM";

__func(x,a);
__func(y,b);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x!==1 || y!==2 || a!=="AB" || b!=="SAM") {
	throw new Test262Error('#1: x === 1 and y === 2 and a === "AB" and b === "SAM". Actual: x ==='+x+' and y ==='+y+' and a ==='+a+' and b ==='+b);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A7_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(){
    var x = null;
    return x;
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
try{
    var x=__func();
} catch(e){
    throw new Test262Error('#1: var x=__func() does not lead to throwing exception. Actual: exception is '+e);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A7_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __func = function (){
    var x = null;
    return x;
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
try{
    var x=__func();
} catch(e){
    throw new Test262Error('#1: var x=__func() does not lead to throwing exception. Actual: exception is '+e);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A8_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(){
    var x = 1;
    throw ("Catch Me If You Can")
    return x;
}

try{
    var x=__func()
    throw new Test262Error('#0: var x=__func() lead to throwing exception');
} catch(e){
    if (e !== "Catch Me If You Can") {
    	throw new Test262Error('#1: Exception === "Catch Me If You Can". Actual: exception ==='+e);
    }
}

});

__test("statements/function/S13.2.1_A8_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var CATCH_ME_IF_YOU_CAN = true;

var __func = function (message){
    var x = 1;
    throw (message)
    return x;
}

try{
    var x=__func(CATCH_ME_IF_YOU_CAN)
    throw new Test262Error('#0: var x=__func(CATCH_ME_IF_YOU_CAN) lead to throwing exception');
} catch(e){
    if (!e) {
    	throw new Test262Error('#1: Exception === true. Actual: exception ==='+e);
    }
}

});

__test("statements/function/S13.2.1_A9_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x; 

function __func(){
    x = 1;
    return;
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func() !== undefined) {
	throw new Test262Error('#1: __func() === undefined. Actual: __func() ==='+__func());
};
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (x!==1) {
	throw new Test262Error('#2: x === 1. Actual: x === '+x);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.1_A9_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x; 

var __func = function(){
    x = 1;
    return;
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func() !== undefined) {
	throw new Test262Error('#1: __func() === undefined. Actual: __func() ==='+__func());
};
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (x!==1) {
	throw new Test262Error('#2: x === 1. Actual: x === '+x);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A12.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function FACTORY(){
   this.id = 0;
      
   this.id = func();
   
   function func(){
      return "id_string";
   }
     
}
//////////////////////////////////////////////////////////////////////////////
//CHECK#1
try {
	var obj = new FACTORY();
} catch (e) {
	throw new Test262Error('#1: var obj = new FACTORY() does not lead to throwing exception. Actual: Exception is '+e);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (obj.id !== "id_string") {
	throw new Test262Error('#2: obj.id === "id_string". Actual: obj.id ==='+obj.id);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A15_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __obj = new __FACTORY();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (typeof obj !== "undefined") {
	throw new Test262Error('#1: typeof obj === "undefined". Actual: typeof obj ==='+typeof obj);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.prop !== "A") {
	throw new Test262Error('#2: __obj.prop === "A". Actual: __obj.prop ==='+__obj.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__obj.slot.prop !==1) {
	throw new Test262Error('#3: __obj.slot.prop ===1. Actual: __obj.slot.prop ==='+__obj.slot.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

function __FACTORY(){
    this.prop = 1;
    var obj = {};
    obj.prop = "A";
    obj.slot = this;
    return obj;
}

});

__test("statements/function/S13.2.2_A15_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var obj;

var __obj = new __FACTORY();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (obj.prop !== "A") {
	throw new Test262Error('#1: obj.prop === "A". Actual: obj.prop ==='+obj.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.prop !== "A") {
	throw new Test262Error('#2: __obj.prop === "A". Actual: __obj.prop ==='+__obj.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__obj.slot.prop !==1) {
	throw new Test262Error('#3: __obj.slot.prop === 1. Actual: __obj.slot.prop ==='+__obj.slot.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

function __FACTORY(){
    this.prop = 1;
    obj = {};
    obj.prop = "A";
    obj.slot = this;
    return obj;
}

});

__test("statements/function/S13.2.2_A15_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __FACTORY, __obj;

__FACTORY = function (){
    this.prop = 1;
    var obj = {};
    obj.prop = "A";
    obj.slot = this;
    return obj;
}

__obj = new __FACTORY();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (typeof obj !== "undefined") {
	throw new Test262Error('#1: typeof obj === "undefined". Actual: typeof obj ==='+typeof obj);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.prop !== "A") {
	throw new Test262Error('#2: __obj.prop === "A". Actual: __obj.prop ==='+__obj.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__obj.slot.prop !==1) {
	throw new Test262Error('#3: __obj.slot.prop ===1. Actual: __obj.slot.prop ==='+__obj.slot.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A15_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __FACTORY, __obj, obj;

__FACTORY = function(){
    this.prop = 1;
    obj = {};
    obj.prop = "A";
    obj.slot = this;
    return obj;
}

__obj = new __FACTORY();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (obj.prop !== "A") {
	throw new Test262Error('#1: obj.prop === "A". Actual: obj.prop ==='+obj.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.prop !== "A") {
	throw new Test262Error('#2: __obj.prop === "A". Actual: __obj.prop ==='+obj.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__obj.slot.prop !==1) {
	throw new Test262Error('#3: __obj.slot.prop ===1. Actual: __obj.slot.prop ==='+obj.slot.prop);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A17_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



this.p1="alert";

__obj={p1:1,getRight:function(){return "right";}};

getRight=function(){return "napravo";};

try {
	(function(){
        with(__obj){
            p1="w1";
            getRight=function(){return false;}
            throw p1;
        }
    })();
} catch (e) {
	resukt = p1;
}


//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (p1!=="alert") {
	throw new Test262Error('#1: p1 === "alert". Actual: p1==='+p1);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (getRight()!=="napravo") {
	throw new Test262Error('#2: getRight() === "napravo". Actual: getRight() === '+getRight());
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__obj.p1!=="w1") {
	throw new Test262Error('#3: __obj.p1 === "w1". Actual: __obj.p1 ==='+__obj.p1);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (__obj.getRight()!==false) {
	throw new Test262Error('#4: __obj.getRight() === false. Actual: __obj.getRight() === '+__obj.getRight());
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#5
if (resukt !== "alert") {
	throw new Test262Error('#5: resukt === "alert". Actual: resukt ==='+resukt);
}
//
//////////////////////////////////////////////////////////////////////////////

var resukt;

});

__test("statements/function/S13.2.2_A17_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



p1="alert";

this.__obj={p1:1,getRight:function(){return "right";}};

var getRight=function(){return "napravo";};

resukt=(function(){
    with(__obj){
        p1="w1";
        var getRight=function(){return false;};
        return p1;
    }
})();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (p1!=="alert") {
	throw new Test262Error('#1: p1 === "alert". Actual: p1==='+p1);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (getRight()!=="napravo") {
	throw new Test262Error('#2: getRight() === "napravo". Actual: getRight()==='+getRight());
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__obj.p1!=="w1") {
	throw new Test262Error('#3: __obj.p1 === "w1". Actual: __obj.p1 ==='+__obj.p1);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (__obj.getRight()!==false) {
	throw new Test262Error('#4: __obj.getRight() === false. Actual: __obj.getRight()==='+__obj.getRight());
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#5
if (resukt !== "w1") {
	throw new Test262Error('#5: resukt === "w1". Actual: resukt ==='+resukt);
}
//
//////////////////////////////////////////////////////////////////////////////

var resukt;

});

__test("statements/function/S13.2.2_A18_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var callee=0, b;

var __obj={callee:"a"};

result=(function(){
    with (arguments){
        callee=1;
        b=true;
    }
    return arguments;
})(__obj);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (callee !== 0) {
	throw new Test262Error('#1: callee === 0. Actual: callee ==='+callee);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.callee !== "a") {
	throw new Test262Error('#2: __obj.callee === "a". Actual: __obj.callee==='+__obj.callee);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (result.callee !== 1) {
	throw new Test262Error('#3: result.callee === 1. Actual: result.callee ==='+result.callee);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (!(this.b)) {
	throw new Test262Error('#4: this.b === true. Actual: this.b ==='+this.b);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A18_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



this.callee = 0;
var b;

__obj={callee:"a"};

function f(){
    with (arguments){
        callee=1;
        b=true;
        return arguments;
    }
};

result=f(__obj);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (callee !== 0) {
	throw new Test262Error('#1: callee === 0. Actual: callee ==='+callee);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.callee !== "a") {
	throw new Test262Error('#2: __obj.callee === "a". Actual: __obj.callee ==='+__obj.callee);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (result.callee !== 1) {
	throw new Test262Error('#3: result.callee === 1. Actual: result.callee ==='+result.callee);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (!(this.b)) {
	throw new Test262Error('#4: this.b === true. Actual: this.b ==='+this.b);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A19_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var a = 1;

var __func= function(){return a;};

var __obj = {a:2};

with (__obj)
{
    result = __func();
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (result !== 1) {
	throw new Test262Error('#1: result === 1. Actual: result ==='+result);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A19_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var a = 1;

var __obj = {a:2};

with (__obj)
{
    result = (function(){return a;})();
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (result !== 2) {
	throw new Test262Error('#1: result === 2. Actual: result ==='+result);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A19_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var a = 1;

var __obj = {a:2};

try {
	with (__obj)
    {
        var __func = function (){return a;};
        throw 3;
    }
} catch (e) {
	;
}

result = __func();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (result !== 2) {
	throw new Test262Error('#1: result === 2. Actual: result ==='+result);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A19_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var a = 1;

var __obj = {a:2,__obj:{a:3}};

try {
	with (__obj)
    {
        with(__obj){
            var __func = function(){return a;};
            throw 5;
        }
    }
} catch (e) {
	;
}

result = __func();

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (result !== 3) {
	throw new Test262Error('#1: result === 3. Actual: result ==='+result);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A19_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var a = 1;

var __obj = {a:2};

with (__obj)
{
    var __func = function()
    {
        return a;
    }
}

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.hasOwnProperty('__func')) {
	throw new Test262Error('#1: __obj.hasOwnProperty(\'__func\') === false');
}
//
//////////////////////////////////////////////////////////////////////////////

///////////////////////////////////// /////////////////////////////////////////
//CHECK#2
if (!(this.hasOwnProperty('__func'))) {
	throw new Test262Error('#2: this.hasOwnProperty(\'__func\') === true');
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__func in __obj) {
	throw new Test262Error('#3: (__func in __obj) === false');
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (this.__func === undefined) {
	throw new Test262Error('#4: this.__func !== undefined');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A5_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __VOLUME, __RED, __ID, __BOTTOM, __TOP, __LEFT, color, bottom, left, __device;

__VOLUME=8;
__RED="red";
__ID=12342;
__BOTTOM=1.1;
__TOP=0.1;
__LEFT=0.5;


function __FACTORY(arg1, arg2){
	this.volume=__VOLUME;
	color=__RED;
	this.id=arg1;
	bottom=arg2;
	this.top=arguments[2];
	left=arguments[3];
};

__device = new __FACTORY(__ID, __BOTTOM, __TOP, __LEFT);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__device.color !== undefined) {
	throw new Test262Error('#1: __device.color === undefined. Actual: __device.color ==='+__device.color);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__device.volume !== __VOLUME) {
	throw new Test262Error('#2: __device.volume === __VOLUME. Actual: __device.volume ==='+__device.volume);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__device.bottom !== undefined) {
	throw new Test262Error('#3: __device.bottom === undefined. Actual: __device.bottom ==='+__device.bottom);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (__device.id !== __ID) {
	throw new Test262Error('#4: __device.id === __ID. Actual: __device.id ==='+__device.id);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#5
if (__device.left !== undefined) {
	throw new Test262Error('#5: __device.left === undefined. Actual: __device.left ==='+__device.left);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#6
if (__device.top !== __TOP) {
	throw new Test262Error('#6: __device.top === __TOP. Actual: __device.top ==='+__device.top);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A5_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __VOLUME, __RED, __ID, __BOTTOM, __TOP, __LEFT, __FACTORY, color, bottom, left, __device;

__VOLUME=8;
__RED="red";
__ID=12342;
__BOTTOM=1.1;
__TOP=0.1;
__LEFT=0.5;


__FACTORY = function(arg1, arg2){
	this.volume=__VOLUME;
	color=__RED;
	this.id=arg1;
	bottom=arg2;
	this.top=arguments[2];
	left=arguments[3];
};

__device = new __FACTORY(__ID, __BOTTOM, __TOP, __LEFT);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__device.color !== undefined) {
	throw new Test262Error('#1: __device.color === undefined. Actual: __device.color ==='+__device.color);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__device.volume !== __VOLUME) {
	throw new Test262Error('#2: __device.volume === __VOLUME. Actual: __device.volume ==='+__device.volume);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#3
if (__device.bottom !== undefined) {
	throw new Test262Error('#3: __device.bottom === undefined. Actual: __device.bottom ==='+__device.bottom);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#4
if (__device.id !== __ID) {
	throw new Test262Error('#4: __device.id === __ID. Actual: __device.id ==='+__device.id);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#5
if (__device.left !== undefined) {
	throw new Test262Error('#5: __device.left === undefined. Actual: __device.left ==='+__device.left);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#6
if (__device.top !== __TOP) {
	throw new Test262Error('#6: __device.top === __TOP. Actual: __device.top ==='+__device.top);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A6_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __FOO, __BAR, __func, __obj;

__FOO="fooValue";
__BAR="barValue";

__func = function(arg){
	this.foo=arg;
    return 0;
	this.bar=arguments[1];
};

__obj = new __func(__FOO, __BAR);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.foo!==__FOO) {
	throw new Test262Error('#1: __obj.foo === __FOO. Actual: __obj.foo==='+__obj.foo);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.bar!==undefined) {
	throw new Test262Error('#2: __obj.bar === undefined. Actual: __obj.bar==='+__obj.bar);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A6_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __FOO="fooValue";
var __BAR="barValue";

function __func (arg){
	this.foo=arg;
    return true;
	this.bar=arguments[1];
};

var __obj = new __func(__FOO, __BAR);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj.foo!==__FOO) {
	throw new Test262Error('#1: __obj.foo === __FOO. Actual: __obj.foo==='+__obj.foo);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj.bar!==undefined) {
	throw new Test262Error('#2: __obj.bar === undefined. Actual: __obj.bar==='+__obj.bar);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A7_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __FRST="one";
var __SCND="two";

function __func (arg1, arg2){
	this.first=arg1;
	var __obj={second:arg2};
    return __obj;
	
};

var __obj__ = new __func(__FRST, __SCND);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj__.first !== undefined) {
	throw new Test262Error('#1: __obj__.first === undefined. Actual: __obj__.first==='+__obj__.first);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj__.second !== __SCND) {
	throw new Test262Error('#2: __obj__.second === __SCND. Actual: __obj__.second ==='+__obj__.second);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13.2.2_A7_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var __FRST, __SCND, __func, __obj__;

__FRST="one";
__SCND="two";

__func = function(arg1, arg2){
	this.first=arg1;
	var __obj={second:arg2};
    return __obj;
	
};

__obj__ = new __func(__FRST, __SCND);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__obj__.first !== undefined) {
	throw new Test262Error('#1: __obj__.first === undefined. Actual: __obj__.first==='+__obj__.first);
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__obj__.second !== __SCND) {
	throw new Test262Error('#2: __obj__.second === __SCND. Actual: __obj__.second ==='+__obj__.second);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A15_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function __func(arguments){
    return arguments;
};

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func(42) !== 42) {
	throw new Test262Error('#1: "arguments" variable overrides ActivationObject.arguments');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A15_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



THE_ANSWER="Answer to Life, the Universe, and Everything";

function __func(){
    var arguments = THE_ANSWER;
    return arguments;
};

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func(42,42,42) !== THE_ANSWER) {
	throw new Test262Error('#1:  "arguments" variable overrides ActivationObject.arguments');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A15_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



THE_ANSWER="Answer to Life, the Universe, and Everything";

var arguments = THE_ANSWER;

function __func(arguments){
    return arguments;
    
};

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (typeof __func() !== "undefined") {
	throw new Test262Error('#1: typeof __func() === "undefined". Actual: typeof __func() ==='+typeof __func());
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__func("The Ultimate Question") !== "The Ultimate Question") {
	throw new Test262Error('#2: __func("The Ultimate Question") === "The Ultimate Question". Actual: __func("The Ultimate Question")==='+__func("The Ultimate Question"));
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A15_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



THE_ANSWER="Answer to Life, the Universe, and Everything";

function __func(){
    return typeof arguments;
    var arguments = THE_ANSWER;
};

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func(42,42,42) !== "object") {
	throw new Test262Error('#1: __func(42,42,42) === "object". Actual: __func(42,42,42)==='+__func(42,42,42));
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A15_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



THE_ANSWER="Answer to Life, the Universe, and Everything";

var arguments = THE_ANSWER;

function __func(){
    return arguments;
};

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if ( __func() === THE_ANSWER) {
	throw new Test262Error('#1: __func() !== THE_ANSWER');
}
//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (__func("The Ultimate Question") === "The Ultimate Question") {
	throw new Test262Error('#2: __func("The Ultimate Question") !== "The Ultimate Question"');
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A2_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x = (function __func(arg){return arg})(1);

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x !== 1) {
	throw new Test262Error('#1: x === 1. Actual: x ==='+x);
}

//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (typeof __func !== 'undefined') {
	throw new Test262Error('#2: typeof __func === \'undefined\'. Actual: typeof __func ==='+typeof __func);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A2_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x = (function __func(arg){return arg + arguments[1]})(1,"1");

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x !== "11") {
	throw new Test262Error('#1: x === "11". Actual: x ==='+x);
}

//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (typeof __func !== 'undefined') {
	throw new Test262Error('#2: typeof __func === \'undefined\'. Actual: typeof __func ==='+typeof __func);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S13_A2_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



var x = (function __func(){return arguments[0] +"-"+ arguments[1]})("Obi","Wan");

//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (x !== "Obi-Wan") {
	throw new Test262Error('#1: x === "Obi-Wan". Actual: x ==='+x);
}

//
//////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////
//CHECK#2
if (typeof __func !== 'undefined') {
	throw new Test262Error('#2: typeof __func === \'undefined\'. Actual: typeof __func ==='+typeof __func);
}
//
//////////////////////////////////////////////////////////////////////////////

});

__test("statements/function/S14_A5_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func() !== "both") {
	throw new Test262Error('#1: __func() === "both". Actual:  __func() ==='+ __func()  );
}
//
//////////////////////////////////////////////////////////////////////////////

function __func(){return "ascii"};
function \u005f\u005f\u0066\u0075\u006e\u0063(){return "unicode"};//__func in unicode
function __\u0066\u0075\u006e\u0063(){return "both"};//__func in unicode

});

__test("statements/function/S14_A5_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//////////////////////////////////////////////////////////////////////////////
//CHECK#1
if (__func() !== "unicode") {
	throw new Test262Error('#1: __func() === "unicode". Actual:  __func() ==='+ __func()  );
}
//
//////////////////////////////////////////////////////////////////////////////

function __func(){return "ascii"};
function \u005f\u005f\u0066\u0075\u006e\u0063(){return "unicode"};//__func in unicode

});

__test("statements/function/arguments-with-arguments-fn.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var args;

function f(x = args = arguments) {
  function arguments() {}
}

f();

assert.sameValue(typeof args, 'object');
assert.sameValue(args.length, 0);

});

__test("statements/function/arguments-with-arguments-lex.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var args;

function f(x = args = arguments) {
  let arguments;
}

f();

assert.sameValue(typeof args, 'object');
assert.sameValue(args.length, 0);

});

__test("statements/function/dflt-params-abrupt.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/dflt-params-abrupt.case
// - src/function-forms/error/func-decl.template


var callCount = 0;
function f(_ = (function() { throw new Test262Error(); }())) {
  
  callCount = callCount + 1;
}
assert.throws(Test262Error, function() {
  f();
});
assert.sameValue(callCount, 0, 'function body not evaluated');

});

__test("statements/function/dflt-params-arg-val-undefined.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/dflt-params-arg-val-undefined.case
// - src/function-forms/default/func-decl.template


var callCount = 0;
// Stores a reference `ref` for case evaluation
function ref(fromLiteral = 23, fromExpr = 45, fromHole = 99) {
  assert.sameValue(fromLiteral, 23);
  assert.sameValue(fromExpr, 45);
  assert.sameValue(fromHole, 99);
  callCount = callCount + 1;
}

ref(undefined, void 0);

assert.sameValue(callCount, 1, 'function invoked exactly once');

});

__test("statements/function/dflt-params-ref-later.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/dflt-params-ref-later.case
// - src/function-forms/error/func-decl.template

var x = 0;

var callCount = 0;
function f(x = y, y) {
  
  callCount = callCount + 1;
}
assert.throws(ReferenceError, function() {
  f();
});
assert.sameValue(callCount, 0, 'function body not evaluated');

});

__test("statements/function/dflt-params-ref-prior.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/dflt-params-ref-prior.case
// - src/function-forms/default/func-decl.template

var x = 0;

var callCount = 0;
// Stores a reference `ref` for case evaluation
function ref(x, y = x, z = y) {
  assert.sameValue(x, 3, 'first argument value');
  assert.sameValue(y, 3, 'second argument value');
  assert.sameValue(z, 3, 'third argument value');
  callCount = callCount + 1;
}

ref(3);

assert.sameValue(callCount, 1, 'function invoked exactly once');

});

__test("statements/function/dflt-params-ref-self.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/dflt-params-ref-self.case
// - src/function-forms/error/func-decl.template

var x = 0;

var callCount = 0;
function f(x = x) {
  
  callCount = callCount + 1;
}
assert.throws(ReferenceError, function() {
  f();
});
assert.sameValue(callCount, 0, 'function body not evaluated');

});

__test("statements/function/dflt-params-trailing-comma.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/dflt-params-trailing-comma.case
// - src/function-forms/default/func-decl.template


var callCount = 0;
// Stores a reference `ref` for case evaluation
function ref(a, b = 39,) {
  assert.sameValue(a, 42);
  assert.sameValue(b, 39);
  callCount = callCount + 1;
}

ref(42, undefined, 1);

assert.sameValue(callCount, 1, 'function invoked exactly once');

assert.sameValue(ref.length, 1, 'length is properly set');

});

__test("statements/function/length-dflt.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function f1(x = 42) {}

verifyProperty(f1, "length", {
  value: 0,
  writable: false,
  enumerable: false,
  configurable: true,
});

function f2(x = 42, y) {}

verifyProperty(f2, "length", {
  value: 0,
  writable: false,
  enumerable: false,
  configurable: true,
});

function f3(x, y = 42) {}

verifyProperty(f3, "length", {
  value: 1,
  writable: false,
  enumerable: false,
  configurable: true,
});

function f4(x, y = 42, z) {}

verifyProperty(f4, "length", {
  value: 1,
  writable: false,
  enumerable: false,
  configurable: true,
});

});

__test("statements/function/name-arguments-non-strict.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function arguments (){}

});

__test("statements/function/name.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function func() {}

verifyProperty(func, "name", {
  value: "func",
  writable: false,
  enumerable: false,
  configurable: true,
});

});

__test("statements/function/param-arguments-non-strict.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo(arguments){}

});

__test("statements/function/param-duplicated-non-strict.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo(a,a){}

});

__test("statements/function/param-eval-non-strict.js", function() {
// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



function foo(eval){};

});

__test("statements/function/params-dflt-args-unmapped.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var callCount = 0;
function f(x, _ = 0) {
  assert.sameValue(x, undefined, 'parameter binding value (initial)');
  assert.sameValue(
    arguments[0], undefined, 'arguments property value (initial)'
  );

  arguments[0] = 1;

  assert.sameValue(
    x, undefined, 'parameter binding value (after arguments modification)'
  );
  assert.sameValue(
    arguments[0], 1, 'arguments property value (after arguments modification)'
  );

  x = 2;

  assert.sameValue(
    x, 2, 'parameter binding value (after parameter binding modification)'
  );
  assert.sameValue(
    arguments[0],
    1,
    'arguments property value (after parameter binding modification)'
  );
  callCount = callCount + 1;
}

f();

assert.sameValue(callCount, 1, 'function invoked exactly once');

});

__test("statements/function/params-dflt-ref-arguments.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var callCount = 0;
function f(x = arguments[2], y = arguments[3], z) {
  assert.sameValue(x, 'third', 'first parameter');
  assert.sameValue(y, 'fourth', 'second parameter');
  assert.sameValue(z, 'third', 'third parameter');
  callCount = callCount + 1;
}

f(undefined, undefined, 'third', 'fourth');

assert.sameValue(callCount, 1, 'function invoked exactly once');

});

__test("statements/function/params-trailing-comma-multiple.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/params-trailing-comma-multiple.case
// - src/function-forms/default/func-decl.template


var callCount = 0;
// Stores a reference `ref` for case evaluation
function ref(a, b,) {
  assert.sameValue(a, 42);
  assert.sameValue(b, 39);
  callCount = callCount + 1;
}

ref(42, 39, 1);

assert.sameValue(callCount, 1, 'function invoked exactly once');

assert.sameValue(ref.length, 2, 'length is properly set');

});

__test("statements/function/params-trailing-comma-single.js", function() {
// This file was procedurally generated from the following sources:
// - src/function-forms/params-trailing-comma-single.case
// - src/function-forms/default/func-decl.template


var callCount = 0;
// Stores a reference `ref` for case evaluation
function ref(a,) {
  assert.sameValue(a, 42);
  callCount = callCount + 1;
}

ref(42, 39);

assert.sameValue(callCount, 1, 'function invoked exactly once');

assert.sameValue(ref.length, 1, 'length is properly set');

});

__test("statements/function/scope-paramsbody-var-close.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var probe;

// A parameter expression is necessary to trigger the creation of the scope
// under test.
function f(_ = null) {
  var x = 'inside';
  probe = function() { return x; };
}
f();

var x = 'outside';

assert.sameValue(probe(), 'inside');
assert.sameValue(x, 'outside');

});

__test("statements/function/scope-paramsbody-var-open.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


var x = 'outside';
var probeParams, probeBody;

function f(_ = probeParams = function() { return x; }) {
  var x = 'inside';
  probeBody = function() { return x; };
}
f();

assert.sameValue(probeParams(), 'outside');
assert.sameValue(probeBody(), 'inside');

});

__test("statements/function/static-init-await-binding-valid.js", function() {
// Copyright (C) 2021 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


class C {
  static {
    (() => { function await() {} });
  }
}

});

__test("literals/numeric/S7.8.3_A1.1_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0 !== 0) {
  throw new Test262Error('#0: 0 === 0');
}

//CHECK#1
if (1 !== 1) {
  throw new Test262Error('#1: 1 === 1');
}

//CHECK#2
if (2 !== 2) {
  throw new Test262Error('#2: 2 === 2');
}

//CHECK#3
if (3 !== 3) {
  throw new Test262Error('#3: 3 === 3');
}

//CHECK#4
if (4 !== 4) {
  throw new Test262Error('#4: 4 === 4');
}

//CHECK#5
if (5 !== 5) {
  throw new Test262Error('#5: 5 === 5');
}

//CHECK#6
if (6 !== 6) {
  throw new Test262Error('#6: 6 === 6');
}

//CHECK#7
if (7 !== 7) {
  throw new Test262Error('#7: 7 === 7');
}

//CHECK#8
if (8 !== 8) {
  throw new Test262Error('#8: 8 === 8');
}

//CHECK#9
if (9 !== 9) {
  throw new Test262Error('#9: 9 === 9');
}

});

__test("literals/numeric/S7.8.3_A1.1_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if (11 !== 11) {
  throw new Test262Error('#1: 11 === 11');
}

//CHECK#2
if (22 !== 22) {
  throw new Test262Error('#2: 22 === 22');
}

//CHECK#3
if (33 !== 33) {
  throw new Test262Error('#3: 33 === 33');
}

//CHECK#4
if (44 !== 44) {
  throw new Test262Error('#4: 44 === 44');
}

//CHECK#5
if (55 !== 55) {
  throw new Test262Error('#5: 55 === 55');
}

//CHECK#6
if (66 !== 66) {
  throw new Test262Error('#6: 66 === 66');
}

//CHECK#7
if (77 !== 77) {
  throw new Test262Error('#7: 77 === 77');
}

//CHECK#8
if (88 !== 88) {
  throw new Test262Error('#8: 88 === 88');
}

//CHECK#9
if (99 !== 99) {
  throw new Test262Error('#9: 99 === 99');
}

});

__test("literals/numeric/S7.8.3_A1.2_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e1 !== 0) {
  throw new Test262Error('#0: 0e1 === 0');
}

//CHECK#1
if (1e1 !== 10) {
  throw new Test262Error('#1: 1e1 === 10');
}

//CHECK#2
if (2e1 !== 20) {
  throw new Test262Error('#2: 2e1 === 20');
}

//CHECK#3
if (3e1 !== 30) {
  throw new Test262Error('#3: 3e1 === 30');
}

//CHECK#4
if (4e1 !== 40) {
  throw new Test262Error('#4: 4e1 === 40');
}

//CHECK#5
if (5e1 !== 50) {
  throw new Test262Error('#5: 5e1 === 50');
}

//CHECK#6
if (6e1 !== 60) {
  throw new Test262Error('#6: 6e1 === 60');
}

//CHECK#7
if (7e1 !== 70) {
  throw new Test262Error('#7: 7e1 === 70');
}

//CHECK#8
if (8e1 !== 80) {
  throw new Test262Error('#8: 8e1 === 80');
}

//CHECK#9
if (9e1 !== 90) {
  throw new Test262Error('#9: 9e1 === 90');
}

});

__test("literals/numeric/S7.8.3_A1.2_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E1 !== 0) {
  throw new Test262Error('#0: 0E1 === 0');
}

//CHECK#1
if (1E1 !== 10) {
  throw new Test262Error('#1: 1E1 === 1');
}

//CHECK#2
if (2E1 !== 20) {
  throw new Test262Error('#2: 2E1 === 20');
}

//CHECK#3
if (3E1 !== 30) {
  throw new Test262Error('#3: 3E1 === 30');
}

//CHECK#4
if (4E1 !== 40) {
  throw new Test262Error('#4: 4E1 === 40');
}

//CHECK#5
if (5E1 !== 50) {
  throw new Test262Error('#5: 5E1 === 50');
}

//CHECK#6
if (6E1 !== 60) {
  throw new Test262Error('#6: 6E1 === 60');
}

//CHECK#7
if (7E1 !== 70) {
  throw new Test262Error('#7: 7E1 === 70');
}

//CHECK#8
if (8E1 !== 80) {
  throw new Test262Error('#8: 8E1 === 80');
}

//CHECK#9
if (9E1 !== 90) {
  throw new Test262Error('#9: 9E1 === 90');
}

});

__test("literals/numeric/S7.8.3_A1.2_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e-1 !== 0) {
  throw new Test262Error('#0: 0e-1 === 0');
}

//CHECK#1
if (1e-1 !== 0.1) {
  throw new Test262Error('#1: 1e-1 === 0.1');
}

//CHECK#2
if (2e-1 !== 0.2) {
  throw new Test262Error('#2: 2e-1 === 0.2');
}

//CHECK#3
if (3e-1 !== 0.3) {
  throw new Test262Error('#3: 3e-1 === 0.3');
}

//CHECK#4
if (4e-1 !== 0.4) {
  throw new Test262Error('#4: 4e-1 === 0.4');
}

//CHECK#5
if (5e-1 !== 0.5) {
  throw new Test262Error('#5: 5e-1 === 0.5');
}

//CHECK#6
if (6e-1 !== 0.6) {
  throw new Test262Error('#6: 6e-1 === 0.6');
}

//CHECK#7
if (7e-1 !== 0.7) {
  throw new Test262Error('#7: 7e-1 === 0.7');
}

//CHECK#8
if (8e-1 !== 0.8) {
  throw new Test262Error('#8: 8e-1 === 0.8');
}

//CHECK#9
if (9e-1 !== 0.9) {
  throw new Test262Error('#9: 9e-1 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A1.2_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E-1 !== 0) {
  throw new Test262Error('#0: 0E-1 === 0');
}

//CHECK#1
if (1E-1 !== 0.1) {
  throw new Test262Error('#1: 1E-1 === 0.1');
}

//CHECK#2
if (2E-1 !== 0.2) {
  throw new Test262Error('#2: 2E-1 === 0.2');
}

//CHECK#3
if (3E-1 !== 0.3) {
  throw new Test262Error('#3: 3E-1 === 0.3');
}

//CHECK#4
if (4E-1 !== 0.4) {
  throw new Test262Error('#4: 4E-1 === 0.4');
}

//CHECK#5
if (5E-1 !== 0.5) {
  throw new Test262Error('#5: 5E-1 === 0.5');
}

//CHECK#6
if (6E-1 !== 0.6) {
  throw new Test262Error('#6: 6E-1 === 0.6');
}

//CHECK#7
if (7E-1 !== 0.7) {
  throw new Test262Error('#7: 7E-1 === 0.7');
}

//CHECK#8
if (8E-1 !== 0.8) {
  throw new Test262Error('#8: 8E-1 === 0.8');
}

//CHECK#9
if (9E-1 !== 0.9) {
  throw new Test262Error('#9: 9E-1 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A1.2_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e+1 !== 0) {
  throw new Test262Error('#0: 0e+1 === 0');
}

//CHe+CK#1
if (1e+1 !== 10) {
  throw new Test262Error('#1: 1e+1 === 10');
}

//CHe+CK#2
if (2e+1 !== 20) {
  throw new Test262Error('#2: 2e+1 === 20');
}

//CHe+CK#3
if (3e+1 !== 30) {
  throw new Test262Error('#3: 3e+1 === 30');
}

//CHe+CK#4
if (4e+1 !== 40) {
  throw new Test262Error('#4: 4e+1 === 40');
}

//CHe+CK#5
if (5e+1 !== 50) {
  throw new Test262Error('#5: 5e+1 === 50');
}

//CHe+CK#6
if (6e+1 !== 60) {
  throw new Test262Error('#6: 6e+1 === 60');
}

//CHe+CK#7
if (7e+1 !== 70) {
  throw new Test262Error('#7: 7e+1 === 70');
}

//CHe+CK#8
if (8e+1 !== 80) {
  throw new Test262Error('#8: 8e+1 === 80');
}

//CHe+CK#9
if (9e+1 !== 90) {
  throw new Test262Error('#9: 9e+1 === 90');
}

});

__test("literals/numeric/S7.8.3_A1.2_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E+1 !== 0) {
  throw new Test262Error('#0: 0E+1 === 0');
}

//CHE+CK#1
if (1E+1 !== 10) {
  throw new Test262Error('#1: 1E+1 === 10');
}

//CHE+CK#2
if (2E+1 !== 20) {
  throw new Test262Error('#2: 2E+1 === 20');
}

//CHE+CK#3
if (3E+1 !== 30) {
  throw new Test262Error('#3: 3E+1 === 30');
}

//CHE+CK#4
if (4E+1 !== 40) {
  throw new Test262Error('#4: 4E+1 === 40');
}

//CHE+CK#5
if (5E+1 !== 50) {
  throw new Test262Error('#5: 5E+1 === 50');
}

//CHE+CK#6
if (6E+1 !== 60) {
  throw new Test262Error('#6: 6E+1 === 60');
}

//CHE+CK#7
if (7E+1 !== 70) {
  throw new Test262Error('#7: 7E+1 === 70');
}

//CHE+CK#8
if (8E+1 !== 80) {
  throw new Test262Error('#8: 8E+1 === 80');
}

//CHE+CK#9
if (9E+1 !== 90) {
  throw new Test262Error('#9: 9E+1 === 90');
}

});

__test("literals/numeric/S7.8.3_A1.2_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e0 !== 0) {
  throw new Test262Error('#0: 0e0 === 0');
}

//CHECK#1
if (1e0 !== 1) {
  throw new Test262Error('#1: 1e0 === 1');
}

//CHECK#2
if (2e0 !== 2) {
  throw new Test262Error('#2: 2e0 === 2');
}

//CHECK#3
if (3e0 !== 3) {
  throw new Test262Error('#3: 3e0 === 3');
}

//CHECK#4
if (4e0 !== 4) {
  throw new Test262Error('#4: 4e0 === 4');
}

//CHECK#5
if (5e0 !== 5) {
  throw new Test262Error('#5: 5e0 === 5');
}

//CHECK#6
if (6e0 !== 6) {
  throw new Test262Error('#6: 6e0 === 6');
}

//CHECK#7
if (7e0 !== 7) {
  throw new Test262Error('#7: 7e0 === 7');
}

//CHECK#8
if (8e0 !== 8) {
  throw new Test262Error('#8: 8e0 === 8');
}

//CHECK#9
if (9e0 !== 9) {
  throw new Test262Error('#9: 9e0 === 9');
}

});

__test("literals/numeric/S7.8.3_A1.2_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E0 !== 0) {
  throw new Test262Error('#0: 0E0 === 0');
}

//CHECK#1
if (1E0 !== 1) {
  throw new Test262Error('#1: 1E0 === 1');
}

//CHECK#2
if (2E0 !== 2) {
  throw new Test262Error('#2: 2E0 === 2');
}

//CHECK#3
if (3E0 !== 3) {
  throw new Test262Error('#3: 3E0 === 3');
}

//CHECK#4
if (4E0 !== 4) {
  throw new Test262Error('#4: 4E0 === 4');
}

//CHECK#5
if (5E0 !== 5) {
  throw new Test262Error('#5: 5E0 === 5');
}

//CHECK#6
if (6E0 !== 6) {
  throw new Test262Error('#6: 6E0 === 6');
}

//CHECK#7
if (7E0 !== 7) {
  throw new Test262Error('#7: 7E0 === 7');
}

//CHECK#8
if (8E0 !== 8) {
  throw new Test262Error('#8: 8E0 === 8');
}

//CHECK#9
if (9E0 !== 9) {
  throw new Test262Error('#9: 9E0 === 9');
}

});

__test("literals/numeric/S7.8.3_A2.2_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0e1 !== 0) {
  throw new Test262Error('#0: .0e1 === 0');
}

//CHECK#1
if (.1e1 !== 1) {
  throw new Test262Error('#1: .1e1 === 1');
}

//CHECK#2
if (.2e1 !== 2) {
  throw new Test262Error('#2: .2e1 === 2');
}

//CHECK#3
if (.3e1 !== 3) {
  throw new Test262Error('#3: .3e1 === 3');
}

//CHECK#4
if (.4e1 !== 4) {
  throw new Test262Error('#4: .4e1 === 4');
}

//CHECK#5
if (.5e1 !== 5) {
  throw new Test262Error('#5: .5e1 === 5');
}

//CHECK#6
if (.6e1 !== 6) {
  throw new Test262Error('#6: .6e1 === 6');
}

//CHECK#7
if (.7e1 !== 7) {
  throw new Test262Error('#7: .7e1 === 7');
}

//CHECK#8
if (.8e1 !== 8) {
  throw new Test262Error('#8: .8e1 === 8');
}

//CHECK#9
if (.9e1 !== 9) {
  throw new Test262Error('#9: .9e1 === 9');
}

});

__test("literals/numeric/S7.8.3_A2.2_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0E1 !== 0) {
  throw new Test262Error('#0: .0E1 === 0');
}

//CHECK#1
if (.1E1 !== 1) {
  throw new Test262Error('#1: .1E1 === 1');
}

//CHECK#2
if (.2E1 !== 2) {
  throw new Test262Error('#2: .2E1 === 2');
}

//CHECK#3
if (.3E1 !== 3) {
  throw new Test262Error('#3: .3E1 === 3');
}

//CHECK#4
if (.4E1 !== 4) {
  throw new Test262Error('#4: .4E1 === 4');
}

//CHECK#5
if (.5E1 !== 5) {
  throw new Test262Error('#5: .5E1 === 5');
}

//CHECK#6
if (.6E1 !== 6) {
  throw new Test262Error('#6: .6E1 === 6');
}

//CHECK#7
if (.7E1 !== 7) {
  throw new Test262Error('#7: .7E1 === 7');
}

//CHECK#8
if (.8E1 !== 8) {
  throw new Test262Error('#8: .8E1 === 8');
}

//CHECK#9
if (.9E1 !== 9) {
  throw new Test262Error('#9: .9E1 === 9');
}

});

__test("literals/numeric/S7.8.3_A2.2_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0e-1 !== 0) {
  throw new Test262Error('#0: .0e-1 === 0');
}

//CHECK#1
if (.1e-1 !== 0.01) {
  throw new Test262Error('#1: .1e-1 === 0.01');
}

//CHECK#2
if (.2e-1 !== 0.02) {
  throw new Test262Error('#2: .2e-1 === 0.02');
}

//CHECK#3
if (.3e-1 !== 0.03) {
  throw new Test262Error('#3: .3e-1 === 0.03');
}

//CHECK#4
if (.4e-1 !== 0.04) {
  throw new Test262Error('#4: .4e-1 === 0.04');
}

//CHECK#5
if (.5e-1 !== 0.05) {
  throw new Test262Error('#5: .5e-1 === 0.05');
}

//CHECK#6
if (.6e-1 !== 0.06) {
  throw new Test262Error('#6: .6e-1 === 0.06');
}

//CHECK#7
if (.7e-1 !== 0.07) {
  throw new Test262Error('#7: .7e-1 === 0.07');
}

//CHECK#8
if (.8e-1 !== 0.08) {
  throw new Test262Error('#8: .8e-1 === 0.08');
}

//CHECK#9
if (.9e-1 !== 0.09) {
  throw new Test262Error('#9: .9e-1 === 0.09');
}

});

__test("literals/numeric/S7.8.3_A2.2_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0E-1 !== 0) {
  throw new Test262Error('#0: .0E-1 === 0');
}

//CHECK#1
if (.1E-1 !== 0.01) {
  throw new Test262Error('#1: .1E-1 === 0.01');
}

//CHECK#2
if (.2E-1 !== 0.02) {
  throw new Test262Error('#2: .2E-1 === 0.02');
}

//CHECK#3
if (.3E-1 !== 0.03) {
  throw new Test262Error('#3: .3E-1 === 0.03');
}

//CHECK#4
if (.4E-1 !== 0.04) {
  throw new Test262Error('#4: .4E-1 === 0.04');
}

//CHECK#5
if (.5E-1 !== 0.05) {
  throw new Test262Error('#5: .5E-1 === 0.05');
}

//CHECK#6
if (.6E-1 !== 0.06) {
  throw new Test262Error('#6: .6E-1 === 0.06');
}

//CHECK#7
if (.7E-1 !== 0.07) {
  throw new Test262Error('#7: .7E-1 === 0.07');
}

//CHECK#8
if (.8E-1 !== 0.08) {
  throw new Test262Error('#8: .8E-1 === 0.08');
}

//CHECK#9
if (.9E-1 !== 0.09) {
  throw new Test262Error('#9: .9E-1 === 0.09');
}

});

__test("literals/numeric/S7.8.3_A2.2_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0e+1 !== 0) {
  throw new Test262Error('#0: .0e+1 === 0');
}

//CHECK#1
if (.1e+1 !== 1) {
  throw new Test262Error('#1: .1e+1 === 1');
}

//CHECK#2
if (.2e+1 !== 2) {
  throw new Test262Error('#2: .2e+1 === 2');
}

//CHECK#3
if (.3e+1 !== 3) {
  throw new Test262Error('#3: .3e+1 === 3');
}

//CHECK#4
if (.4e+1 !== 4) {
  throw new Test262Error('#4: .4e+1 === 4');
}

//CHECK#5
if (.5e+1 !== 5) {
  throw new Test262Error('#5: .5e+1 === 5');
}

//CHECK#6
if (.6e+1 !== 6) {
  throw new Test262Error('#6: .6e+1 === 6');
}

//CHECK#7
if (.7e+1 !== 7) {
  throw new Test262Error('#7: .7e+1 === 7');
}

//CHECK#8
if (.8e+1 !== 8) {
  throw new Test262Error('#8: .8e+1 === 8');
}

//CHECK#9
if (.9e+1 !== 9) {
  throw new Test262Error('#9: .9e+1 === 9');
}

});

__test("literals/numeric/S7.8.3_A2.2_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0E+1 !== 0) {
  throw new Test262Error('#0: .0E+1 === 0');
}

//CHECK#1
if (.1E+1 !== 1) {
  throw new Test262Error('#1: .1E+1 === 1');
}

//CHECK#2
if (.2E+1 !== 2) {
  throw new Test262Error('#2: .2E+1 === 2');
}

//CHECK#3
if (.3E+1 !== 3) {
  throw new Test262Error('#3: .3E+1 === 3');
}

//CHECK#4
if (.4E+1 !== 4) {
  throw new Test262Error('#4: .4E+1 === 4');
}

//CHECK#5
if (.5E+1 !== 5) {
  throw new Test262Error('#5: .5E+1 === 5');
}

//CHECK#6
if (.6E+1 !== 6) {
  throw new Test262Error('#6: .6E+1 === 6');
}

//CHECK#7
if (.7E+1 !== 7) {
  throw new Test262Error('#7: .7E+1 === 7');
}

//CHECK#8
if (.8E+1 !== 8) {
  throw new Test262Error('#8: .8E+1 === 8');
}

//CHECK#9
if (.9E+1 !== 9) {
  throw new Test262Error('#9: .9E+1 === 9');
}

});

__test("literals/numeric/S7.8.3_A2.2_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0e0 !== 0.0) {
  throw new Test262Error('#0: .0e0 === 0.0');
}

//CHECK#1
if (.1e0 !== 0.1) {
  throw new Test262Error('#1: .1e0 === 0.1');
}

//CHECK#2
if (.2e0 !== 0.2) {
  throw new Test262Error('#2: .2e0 === 0.2');
}

//CHECK#3
if (.3e0 !== 0.3) {
  throw new Test262Error('#3: .3e0 === 0.3');
}

//CHECK#4
if (.4e0 !== 0.4) {
  throw new Test262Error('#4: .4e0 === 0.4');
}

//CHECK#5
if (.5e0 !== 0.5) {
  throw new Test262Error('#5: .5e0 === 0.5');
}

//CHECK#6
if (.6e0 !== 0.6) {
  throw new Test262Error('#6: .6e0 === 0.6');
}

//CHECK#7
if (.7e0 !== 0.7) {
  throw new Test262Error('#7: .7e0 === 0.7');
}

//CHECK#8
if (.8e0 !== 0.8) {
  throw new Test262Error('#8: .8e0 === 0.8');
}

//CHECK#9
if (.9e0 !== 0.9) {
  throw new Test262Error('#9: .9e0 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A2.2_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (.0E0 !== 0.0) {
  throw new Test262Error('#0: .0E0 === 0.0');
}

//CHECK#1
if (.1E0 !== 0.1) {
  throw new Test262Error('#1: .1E0 === 0.1');
}

//CHECK#2
if (.2E0 !== 0.2) {
  throw new Test262Error('#2: .2E0 === 0.2');
}

//CHECK#3
if (.3E0 !== 0.3) {
  throw new Test262Error('#3: .3E0 === 0.3');
}

//CHECK#4
if (.4E0 !== 0.4) {
  throw new Test262Error('#4: .4E0 === 0.4');
}

//CHECK#5
if (.5E0 !== 0.5) {
  throw new Test262Error('#5: .5E0 === 0.5');
}

//CHECK#6
if (.6E0 !== 0.6) {
  throw new Test262Error('#6: .6E0 === 0.6');
}

//CHECK#7
if (.7E0 !== 0.7) {
  throw new Test262Error('#7: .7E0 === 0.7');
}

//CHECK#8
if (.8E0 !== 0.8) {
  throw new Test262Error('#8: .8E0 === 0.8');
}

//CHECK#9
if (.9E0 !== 0.9) {
  throw new Test262Error('#9: .9E0 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A3.1_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0. !== 0) {
  throw new Test262Error('#0: 0. === 0');
}

//CHECK#1
if (1. !== 1) {
  throw new Test262Error('#1: 1. === 1');
}

//CHECK#2
if (2. !== 2) {
  throw new Test262Error('#2: 2. === 2');
}

//CHECK#3
if (3. !== 3) {
  throw new Test262Error('#3: 3. === 3');
}

//CHECK#4
if (4. !== 4) {
  throw new Test262Error('#4: 4. === 4');
}

//CHECK#5
if (5. !== 5) {
  throw new Test262Error('#5: 5. === 5');
}

//CHECK#6
if (6. !== 6) {
  throw new Test262Error('#6: 6. === 6');
}

//CHECK#7
if (7. !== 7) {
  throw new Test262Error('#7: 7. === 7');
}

//CHECK#8
if (8. !== 8) {
  throw new Test262Error('#8: 8. === 8');
}

//CHECK#9
if (9. !== 9) {
  throw new Test262Error('#9: 9. === 9');
}

});

__test("literals/numeric/S7.8.3_A3.1_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if (11. !== 11) {
  throw new Test262Error('#1: 11. === 11');
}

//CHECK#2
if (22. !== 22) {
  throw new Test262Error('#2: 22. === 22');
}

//CHECK#3
if (33. !== 33) {
  throw new Test262Error('#3: 33. === 33');
}

//CHECK#4
if (44. !== 44) {
  throw new Test262Error('#4: 44. === 44');
}

//CHECK#5
if (55. !== 55) {
  throw new Test262Error('#5: 55. === 55');
}

//CHECK#6
if (66. !== 66) {
  throw new Test262Error('#6: 66. === 66');
}

//CHECK#7
if (77. !== 77) {
  throw new Test262Error('#7: 77. === 77');
}

//CHECK#8
if (88. !== 88) {
  throw new Test262Error('#8: 88. === 88');
}

//CHECK#9
if (99. !== 99) {
  throw new Test262Error('#9: 99. === 99');
}

});

__test("literals/numeric/S7.8.3_A3.3_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.e1 !== 0) {
  throw new Test262Error('#0: 0.e1 === 0');
}

//CHECK#1
if (1.e1 !== 10) {
  throw new Test262Error('#1: 1.e1 === 10');
}

//CHECK#2
if (2.e1 !== 20) {
  throw new Test262Error('#2: 2.e1 === 20');
}

//CHECK#3
if (3.e1 !== 30) {
  throw new Test262Error('#3: 3.e1 === 30');
}

//CHECK#4
if (4.e1 !== 40) {
  throw new Test262Error('#4: 4.e1 === 40');
}

//CHECK#5
if (5.e1 !== 50) {
  throw new Test262Error('#5: 5.e1 === 50');
}

//CHECK#6
if (6.e1 !== 60) {
  throw new Test262Error('#6: 6.e1 === 60');
}

//CHECK#7
if (7.e1 !== 70) {
  throw new Test262Error('#7: 7.e1 === 70');
}

//CHECK#8
if (8.e1 !== 80) {
  throw new Test262Error('#8: 8.e1 === 80');
}

//CHECK#9
if (9.e1 !== 90) {
  throw new Test262Error('#9: 9.e1 === 90');
}

});

__test("literals/numeric/S7.8.3_A3.3_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.E1 !== 0) {
  throw new Test262Error('#0: 0.E1 === 0');
}

//CHECK#1
if (1.E1 !== 10) {
  throw new Test262Error('#1: 1.E1 === 10');
}

//CHECK#2
if (2.E1 !== 20) {
  throw new Test262Error('#2: 2.E1 === 20');
}

//CHECK#3
if (3.E1 !== 30) {
  throw new Test262Error('#3: 3.E1 === 30');
}

//CHECK#4
if (4.E1 !== 40) {
  throw new Test262Error('#4: 4.E1 === 40');
}

//CHECK#5
if (5.E1 !== 50) {
  throw new Test262Error('#5: 5.E1 === 50');
}

//CHECK#6
if (6.E1 !== 60) {
  throw new Test262Error('#6: 6.E1 === 60');
}

//CHECK#7
if (7.E1 !== 70) {
  throw new Test262Error('#7: 7.E1 === 70');
}

//CHECK#8
if (8.E1 !== 80) {
  throw new Test262Error('#8: 8.E1 === 80');
}

//CHECK#9
if (9.E1 !== 90) {
  throw new Test262Error('#9: 9.E1 === 90');
}

});

__test("literals/numeric/S7.8.3_A3.3_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.e-1 !== 0) {
  throw new Test262Error('#0: 0.e-1 === 0');
}

//CHECK#1
if (1.e-1 !== 0.1) {
  throw new Test262Error('#1: 1.e-1 === 0.1');
}

//CHECK#2
if (2.e-1 !== 0.2) {
  throw new Test262Error('#2: 2.e-1 === 0.2');
}

//CHECK#3
if (3.e-1 !== 0.3) {
  throw new Test262Error('#3: 3.e-1 === 0.3');
}

//CHECK#4
if (4.e-1 !== 0.4) {
  throw new Test262Error('#4: 4.e-1 === 0.4');
}

//CHECK#5
if (5.e-1 !== 0.5) {
  throw new Test262Error('#5: 5.e-1 === 0.5');
}

//CHECK#6
if (6.e-1 !== 0.6) {
  throw new Test262Error('#6: 6.e-1 === 0.6');
}

//CHECK#7
if (7.e-1 !== 0.7) {
  throw new Test262Error('#7: 7.e-1 === 0.7');
}

//CHECK#8
if (8.e-1 !== 0.8) {
  throw new Test262Error('#8: 8.e-1 === 0.8');
}

//CHECK#9
if (9.e-1 !== 0.9) {
  throw new Test262Error('#9: 9.e-1 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A3.3_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.E-1 !== 0) {
  throw new Test262Error('#0: 0.E-1 === 0');
}

//CHECK#1
if (1.E-1 !== 0.1) {
  throw new Test262Error('#1: 1.E-1 === 0.1');
}

//CHECK#2
if (2.E-1 !== 0.2) {
  throw new Test262Error('#2: 2.E-1 === 0.2');
}

//CHECK#3
if (3.E-1 !== 0.3) {
  throw new Test262Error('#3: 3.E-1 === 0.3');
}

//CHECK#4
if (4.E-1 !== 0.4) {
  throw new Test262Error('#4: 4.E-1 === 0.4');
}

//CHECK#5
if (5.E-1 !== 0.5) {
  throw new Test262Error('#5: 5.E-1 === 0.5');
}

//CHECK#6
if (6.E-1 !== 0.6) {
  throw new Test262Error('#6: 6.E-1 === 0.6');
}

//CHECK#7
if (7.E-1 !== 0.7) {
  throw new Test262Error('#7: 7.E-1 === 0.7');
}

//CHECK#8
if (8.E-1 !== 0.8) {
  throw new Test262Error('#8: 8.E-1 === 0.8');
}

//CHECK#9
if (9.E-1 !== 0.9) {
  throw new Test262Error('#9: 9.E-1 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A3.3_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.e+1 !== 0) {
  throw new Test262Error('#0: 0.e+1 === 0');
}

//CHECK#1
if (1.e+1 !== 10) {
  throw new Test262Error('#1: 1.e+1 === 10');
}

//CHECK#2
if (2.e+1 !== 20) {
  throw new Test262Error('#2: 2.e+1 === 20');
}

//CHECK#3
if (3.e+1 !== 30) {
  throw new Test262Error('#3: 3.e+1 === 30');
}

//CHECK#4
if (4.e+1 !== 40) {
  throw new Test262Error('#4: 4.e+1 === 40');
}

//CHECK#5
if (5.e+1 !== 50) {
  throw new Test262Error('#5: 5.e+1 === 50');
}

//CHECK#6
if (6.e+1 !== 60) {
  throw new Test262Error('#6: 6.e+1 === 60');
}

//CHECK#7
if (7.e+1 !== 70) {
  throw new Test262Error('#7: 7.e+1 === 70');
}

//CHECK#8
if (8.e+1 !== 80) {
  throw new Test262Error('#8: 8.e+1 === 80');
}

//CHECK#9
if (9.e+1 !== 90) {
  throw new Test262Error('#9: 9.e+1 === 90');
}

});

__test("literals/numeric/S7.8.3_A3.3_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.E+1 !== 0) {
  throw new Test262Error('#0: 0.E+1 === 0');
}

//CHECK#1
if (1.E+1 !== 10) {
  throw new Test262Error('#1: 1.E+1 === 10');
}

//CHECK#2
if (2.E+1 !== 20) {
  throw new Test262Error('#2: 2.E+1 === 20');
}

//CHECK#3
if (3.E+1 !== 30) {
  throw new Test262Error('#3: 3.E+1 === 30');
}

//CHECK#4
if (4.E+1 !== 40) {
  throw new Test262Error('#4: 4.E+1 === 40');
}

//CHECK#5
if (5.E+1 !== 50) {
  throw new Test262Error('#5: 5.E+1 === 50');
}

//CHECK#6
if (6.E+1 !== 60) {
  throw new Test262Error('#6: 6.E+1 === 60');
}

//CHECK#7
if (7.E+1 !== 70) {
  throw new Test262Error('#7: 7.E+1 === 70');
}

//CHECK#8
if (8.E+1 !== 80) {
  throw new Test262Error('#8: 8.E+1 === 80');
}

//CHECK#9
if (9.E+1 !== 90) {
  throw new Test262Error('#9: 9.E+1 === 90');
}

});

__test("literals/numeric/S7.8.3_A3.3_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.e0 !== 0) {
  throw new Test262Error('#0: 0.e0 === 0');
}

//CHECK#1
if (1.e0 !== 1) {
  throw new Test262Error('#1: 1.e0 === 1');
}

//CHECK#2
if (2.e0 !== 2) {
  throw new Test262Error('#2: 2.e0 === 2');
}

//CHECK#3
if (3.e0 !== 3) {
  throw new Test262Error('#3: 3.e0 === 3');
}

//CHECK#4
if (4.e0 !== 4) {
  throw new Test262Error('#4: 4.e0 === 4');
}

//CHECK#5
if (5.e0 !== 5) {
  throw new Test262Error('#5: 5.e0 === 5');
}

//CHECK#6
if (6.e0 !== 6) {
  throw new Test262Error('#6: 6.e0 === 6');
}

//CHECK#7
if (7.e0 !== 7) {
  throw new Test262Error('#7: 7.e0 === 7');
}

//CHECK#8
if (8.e0 !== 8) {
  throw new Test262Error('#8: 8.e0 === 8');
}

//CHECK#9
if (9.e0 !== 9) {
  throw new Test262Error('#9: 9.e0 === 9');
}

});

__test("literals/numeric/S7.8.3_A3.3_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.E0 !== 0) {
  throw new Test262Error('#0: 0.E0 === 0');
}

//CHECK#1
if (1.E0 !== 1) {
  throw new Test262Error('#1: 1.E0 === 1');
}

//CHECK#2
if (2.E0 !== 2) {
  throw new Test262Error('#2: 2.E0 === 2');
}

//CHECK#3
if (3.E0 !== 3) {
  throw new Test262Error('#3: 3.E0 === 3');
}

//CHECK#4
if (4.E0 !== 4) {
  throw new Test262Error('#4: 4.E0 === 4');
}

//CHECK#5
if (5.E0 !== 5) {
  throw new Test262Error('#5: 5.E0 === 5');
}

//CHECK#6
if (6.E0 !== 6) {
  throw new Test262Error('#6: 6.E0 === 6');
}

//CHECK#7
if (7.E0 !== 7) {
  throw new Test262Error('#7: 7.E0 === 7');
}

//CHECK#8
if (8.E0 !== 8) {
  throw new Test262Error('#8: 8.E0 === 8');
}

//CHECK#9
if (9.E0 !== 9) {
  throw new Test262Error('#9: 9.E0 === 9');
}

});

__test("literals/numeric/S7.8.3_A3.4_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0e1 !== 0) {
  throw new Test262Error('#0: 0.0e1 === 0');
}

//CHECK#1
if (1.1e1 !== 11) {
  throw new Test262Error('#1: 1.1e1 === 11');
}

//CHECK#2
if (2.2e1 !== 22) {
  throw new Test262Error('#2: 2.2e1 === 22');
}

//CHECK#3
if (3.3e1 !== 33) {
  throw new Test262Error('#3: 3.3e1 === 33');
}

//CHECK#4
if (4.4e1 !== 44) {
  throw new Test262Error('#4: 4.4e1 === 44');
}

//CHECK#5
if (5.5e1 !== 55) {
  throw new Test262Error('#5: 5.5e1 === 55');
}

//CHECK#6
if (6.6e1 !== 66) {
  throw new Test262Error('#6: 6.e1 === 66');
}

//CHECK#7
if (7.7e1 !== 77) {
  throw new Test262Error('#7: 7.7e1 === 77');
}

//CHECK#8
if (8.8e1 !== 88) {
  throw new Test262Error('#8: 8.8e1 === 88');
}

//CHECK#9
if (9.9e1 !== 99) {
  throw new Test262Error('#9: 9.9e1 === 99');
}

});

__test("literals/numeric/S7.8.3_A3.4_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0E1 !== 0) {
  throw new Test262Error('#0: 0.0E1 === 0');
}

//CHECK#1
if (1.1E1 !== 11) {
  throw new Test262Error('#1: 1.1E1 === 11');
}

//CHECK#2
if (2.2E1 !== 22) {
  throw new Test262Error('#2: 2.2E1 === 22');
}

//CHECK#3
if (3.3E1 !== 33) {
  throw new Test262Error('#3: 3.3E1 === 33');
}

//CHECK#4
if (4.4E1 !== 44) {
  throw new Test262Error('#4: 4.4E1 === 44');
}

//CHECK#5
if (5.5E1 !== 55) {
  throw new Test262Error('#5: 5.5E1 === 55');
}

//CHECK#6
if (6.6E1 !== 66) {
  throw new Test262Error('#6: 6.E1 === 66');
}

//CHECK#7
if (7.7E1 !== 77) {
  throw new Test262Error('#7: 7.7E1 === 77');
}

//CHECK#8
if (8.8E1 !== 88) {
  throw new Test262Error('#8: 8.8E1 === 88');
}

//CHECK#9
if (9.9E1 !== 99) {
  throw new Test262Error('#9: 9.9E1 === 99');
}

});

__test("literals/numeric/S7.8.3_A3.4_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0e-1 !== 0) {
  throw new Test262Error('#0: 0.0e-1 === 0');
}

//CHECK#1
if (1.1e-1 !== 0.11) {
  throw new Test262Error('#1: 1.1e-1 === 0.11');
}

//CHECK#2
if (2.2e-1 !== 0.22) {
  throw new Test262Error('#2: 2.2e-1 === 0.22');
}

//CHECK#3
if (3.3e-1 !== 0.33) {
  throw new Test262Error('#3: 3.3e-1 === 0.33');
}

//CHECK#4
if (4.4e-1 !== 0.44) {
  throw new Test262Error('#4: 4.4e-1 === 0.44');
}

//CHECK#5
if (5.5e-1 !== 0.55) {
  throw new Test262Error('#5: 5.5e-1 === 0.55');
}

//CHECK#6
if (6.6e-1 !== 0.66) {
  throw new Test262Error('#6: 6.e-1 === 0.66');
}

//CHECK#7
if (7.7e-1 !== 0.77) {
  throw new Test262Error('#7: 7.7e-1 === 0.77');
}

//CHECK#8
if (8.8e-1 !== 0.88) {
  throw new Test262Error('#8: 8.8e-1 === 0.88');
}

//CHECK#9
if (9.9e-1 !== 0.99) {
  throw new Test262Error('#9: 9.9e-1 === 0.99');
}

});

__test("literals/numeric/S7.8.3_A3.4_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0E-1 !== 0) {
  throw new Test262Error('#0: 0.0E-1 === 0');
}

//CHECK#1
if (1.1E-1 !== 0.11) {
  throw new Test262Error('#1: 1.1E-1 === 0.11');
}

//CHECK#2
if (2.2E-1 !== 0.22) {
  throw new Test262Error('#2: 2.2E-1 === 0.22');
}

//CHECK#3
if (3.3E-1 !== 0.33) {
  throw new Test262Error('#3: 3.3E-1 === 0.33');
}

//CHECK#4
if (4.4E-1 !== 0.44) {
  throw new Test262Error('#4: 4.4E-1 === 0.44');
}

//CHECK#5
if (5.5E-1 !== 0.55) {
  throw new Test262Error('#5: 5.5E-1 === 0.55');
}

//CHECK#6
if (6.6E-1 !== 0.66) {
  throw new Test262Error('#6: 6.E-1 === 0.66');
}

//CHECK#7
if (7.7E-1 !== 0.77) {
  throw new Test262Error('#7: 7.7E-1 === 0.77');
}

//CHECK#8
if (8.8E-1 !== 0.88) {
  throw new Test262Error('#8: 8.8E-1 === 0.88');
}

//CHECK#9
if (9.9E-1 !== 0.99) {
  throw new Test262Error('#9: 9.9E-1 === 0.99');
}

});

__test("literals/numeric/S7.8.3_A3.4_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0e+1 !== 0) {
  throw new Test262Error('#0: 0.0e+1 === 0');
}

//CHECK#1
if (1.1e+1 !== 11) {
  throw new Test262Error('#1: 1.1e+1 === 11');
}

//CHECK#2
if (2.2e+1 !== 22) {
  throw new Test262Error('#2: 2.2e+1 === 22');
}

//CHECK#3
if (3.3e+1 !== 33) {
  throw new Test262Error('#3: 3.3e+1 === 33');
}

//CHECK#4
if (4.4e+1 !== 44) {
  throw new Test262Error('#4: 4.4e+1 === 44');
}

//CHECK#5
if (5.5e+1 !== 55) {
  throw new Test262Error('#5: 5.5e+1 === 55');
}

//CHECK#6
if (6.6e+1 !== 66) {
  throw new Test262Error('#6: 6.e+1 === 66');
}

//CHECK#7
if (7.7e+1 !== 77) {
  throw new Test262Error('#7: 7.7e+1 === 77');
}

//CHECK#8
if (8.8e+1 !== 88) {
  throw new Test262Error('#8: 8.8e+1 === 88');
}

//CHECK#9
if (9.9e+1 !== 99) {
  throw new Test262Error('#9: 9.9e+1 === 99');
}

});

__test("literals/numeric/S7.8.3_A3.4_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0E+1 !== 0) {
  throw new Test262Error('#0: 0.0E+1 === 0');
}

//CHECK#1
if (1.1E+1 !== 11) {
  throw new Test262Error('#1: 1.1E+1 === 11');
}

//CHECK#2
if (2.2E+1 !== 22) {
  throw new Test262Error('#2: 2.2E+1 === 22');
}

//CHECK#3
if (3.3E+1 !== 33) {
  throw new Test262Error('#3: 3.3E+1 === 33');
}

//CHECK#4
if (4.4E+1 !== 44) {
  throw new Test262Error('#4: 4.4E+1 === 44');
}

//CHECK#5
if (5.5E+1 !== 55) {
  throw new Test262Error('#5: 5.5E+1 === 55');
}

//CHECK#6
if (6.6E+1 !== 66) {
  throw new Test262Error('#6: 6.E+1 === 66');
}

//CHECK#7
if (7.7E+1 !== 77) {
  throw new Test262Error('#7: 7.7E+1 === 77');
}

//CHECK#8
if (8.8E+1 !== 88) {
  throw new Test262Error('#8: 8.8E+1 === 88');
}

//CHECK#9
if (9.9E+1 !== 99) {
  throw new Test262Error('#9: 9.9E+1 === 99');
}

});

__test("literals/numeric/S7.8.3_A3.4_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0e0 !== 0.0) {
  throw new Test262Error('#0: 0.0e0 === 0.0');
}

//CHECK#1
if (1.1e0 !== 1.1) {
  throw new Test262Error('#1: 1.1e0 === 1.1');
}

//CHECK#2
if (2.2e0 !== 2.2) {
  throw new Test262Error('#2: 2.2e0 === 2.2');
}

//CHECK#3
if (3.3e0 !== 3.3) {
  throw new Test262Error('#3: 3.3e0 === 3.3');
}

//CHECK#4
if (4.4e0 !== 4.4) {
  throw new Test262Error('#4: 4.4e0 === 4.4');
}

//CHECK#5
if (5.5e0 !== 5.5) {
  throw new Test262Error('#5: 5.5e0 === 5.5');
}

//CHECK#6
if (6.6e0 !== 6.6) {
  throw new Test262Error('#6: 6.e0 === 6.6');
}

//CHECK#7
if (7.7e0 !== 7.7) {
  throw new Test262Error('#7: 7.7e0 === 7.7');
}

//CHECK#8
if (8.8e0 !== 8.8) {
  throw new Test262Error('#8: 8.8e0 === 8.8');
}

//CHECK#9
if (9.9e0 !== 9.9) {
  throw new Test262Error('#9: 9.9e0 === 9.9');
}

});

__test("literals/numeric/S7.8.3_A3.4_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0.0E0 !== 0.0) {
  throw new Test262Error('#0: 0.0E0 === 0.0');
}

//CHECK#1
if (1.1E0 !== 1.1) {
  throw new Test262Error('#1: 1.1E0 === 1.1');
}

//CHECK#2
if (2.2E0 !== 2.2) {
  throw new Test262Error('#2: 2.2E0 === 2.2');
}

//CHECK#3
if (3.3E0 !== 3.3) {
  throw new Test262Error('#3: 3.3E0 === 3.3');
}

//CHECK#4
if (4.4E0 !== 4.4) {
  throw new Test262Error('#4: 4.4E0 === 4.4');
}

//CHECK#5
if (5.5E0 !== 5.5) {
  throw new Test262Error('#5: 5.5E0 === 5.5');
}

//CHECK#6
if (6.6E0 !== 6.6) {
  throw new Test262Error('#6: 6.E0 === 6.6');
}

//CHECK#7
if (7.7E0 !== 7.7) {
  throw new Test262Error('#7: 7.7E0 === 7.7');
}

//CHECK#8
if (8.8E0 !== 8.8) {
  throw new Test262Error('#8: 8.8E0 === 8.8');
}

//CHECK#9
if (9.9E0 !== 9.9) {
  throw new Test262Error('#9: 9.9E0 === 9.9');
}

});

__test("literals/numeric/S7.8.3_A4.1_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  e1
});

});

__test("literals/numeric/S7.8.3_A4.1_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  E1
});

});

__test("literals/numeric/S7.8.3_A4.1_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  e-1
});

});

__test("literals/numeric/S7.8.3_A4.1_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  E-1
});

});

__test("literals/numeric/S7.8.3_A4.1_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  e+1
});

});

__test("literals/numeric/S7.8.3_A4.1_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  E+1
});

});

__test("literals/numeric/S7.8.3_A4.1_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  e0
});

});

__test("literals/numeric/S7.8.3_A4.1_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.throws(ReferenceError, function() {
  E0
});

});

__test("literals/numeric/S7.8.3_A4.2_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e01 !== 0) {
  throw new Test262Error('#0: 0e01 === 0');
}

//CHECK#1
if (1e01 !== 10) {
  throw new Test262Error('#1: 1e01 === 10');
}

//CHECK#2
if (2e01 !== 20) {
  throw new Test262Error('#2: 2e01 === 20');
}

//CHECK#3
if (3e01 !== 30) {
  throw new Test262Error('#3: 3e01 === 30');
}

//CHECK#4
if (4e01 !== 40) {
  throw new Test262Error('#4: 4e01 === 40');
}

//CHECK#5
if (5e01 !== 50) {
  throw new Test262Error('#5: 5e01 === 50');
}

//CHECK#6
if (6e01 !== 60) {
  throw new Test262Error('#6: 6e01 === 60');
}

//CHECK#7
if (7e01 !== 70) {
  throw new Test262Error('#7: 7e01 === 70');
}

//CHECK#8
if (8e01 !== 80) {
  throw new Test262Error('#8: 8e01 === 80');
}

//CHECK#9
if (9e01 !== 90) {
  throw new Test262Error('#9: 9e01 === 90');
}

});

__test("literals/numeric/S7.8.3_A4.2_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E01 !== 0) {
  throw new Test262Error('#0: 0E01 === 0');
}

//CHECK#1
if (1E01 !== 10) {
  throw new Test262Error('#1: 1E01 === 10');
}

//CHECK#2
if (2E01 !== 20) {
  throw new Test262Error('#2: 2E01 === 20');
}

//CHECK#3
if (3E01 !== 30) {
  throw new Test262Error('#3: 3E01 === 30');
}

//CHECK#4
if (4E01 !== 40) {
  throw new Test262Error('#4: 4E01 === 40');
}

//CHECK#5
if (5E01 !== 50) {
  throw new Test262Error('#5: 5E01 === 50');
}

//CHECK#6
if (6E01 !== 60) {
  throw new Test262Error('#6: 6E01 === 60');
}

//CHECK#7
if (7E01 !== 70) {
  throw new Test262Error('#7: 7E01 === 70');
}

//CHECK#8
if (8E01 !== 80) {
  throw new Test262Error('#8: 8E01 === 80');
}

//CHECK#9
if (9E01 !== 90) {
  throw new Test262Error('#9: 9E01 === 90');
}

});

__test("literals/numeric/S7.8.3_A4.2_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e-01 !== 0) {
  throw new Test262Error('#0: 0e-01 === 0');
}

//CHECK#1
if (1e-01 !== 0.1) {
  throw new Test262Error('#1: 1e-01 === 0.1');
}

//CHECK#2
if (2e-01 !== 0.2) {
  throw new Test262Error('#2: 2e-01 === 0.2');
}

//CHECK#3
if (3e-01 !== 0.3) {
  throw new Test262Error('#3: 3e-01 === 0.3');
}

//CHECK#4
if (4e-01 !== 0.4) {
  throw new Test262Error('#4: 4e-01 === 0.4');
}

//CHECK#5
if (5e-01 !== 0.5) {
  throw new Test262Error('#5: 5e-01 === 0.5');
}

//CHECK#6
if (6e-01 !== 0.6) {
  throw new Test262Error('#6: 6e-01 === 0.6');
}

//CHECK#7
if (7e-01 !== 0.7) {
  throw new Test262Error('#7: 7e-01 === 0.7');
}

//CHECK#8
if (8e-01 !== 0.8) {
  throw new Test262Error('#8: 8e-01 === 0.8');
}

//CHECK#9
if (9e-01 !== 0.9) {
  throw new Test262Error('#9: 9e-01 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A4.2_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E-01 !== 0) {
  throw new Test262Error('#0: 0E-01 === 0');
}

//CHECK#1
if (1E-01 !== 0.1) {
  throw new Test262Error('#1: 1E-01 === 0.1');
}

//CHECK#2
if (2E-01 !== 0.2) {
  throw new Test262Error('#2: 2E-01 === 0.2');
}

//CHECK#3
if (3E-01 !== 0.3) {
  throw new Test262Error('#3: 3E-01 === 0.3');
}

//CHECK#4
if (4E-01 !== 0.4) {
  throw new Test262Error('#4: 4E-01 === 0.4');
}

//CHECK#5
if (5E-01 !== 0.5) {
  throw new Test262Error('#5: 5E-01 === 0.5');
}

//CHECK#6
if (6E-01 !== 0.6) {
  throw new Test262Error('#6: 6E-01 === 0.6');
}

//CHECK#7
if (7E-01 !== 0.7) {
  throw new Test262Error('#7: 7E-01 === 0.7');
}

//CHECK#8
if (8E-01 !== 0.8) {
  throw new Test262Error('#8: 8E-01 === 0.8');
}

//CHECK#9
if (9E-01 !== 0.9) {
  throw new Test262Error('#9: 9E-01 === 0.9');
}

});

__test("literals/numeric/S7.8.3_A4.2_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e+01 !== 0) {
  throw new Test262Error('#0: 0e+01 === 0');
}

//CHECK#1
if (1e+01 !== 10) {
  throw new Test262Error('#1: 1e+01 === 10');
}

//CHECK#2
if (2e+01 !== 20) {
  throw new Test262Error('#2: 2e+01 === 20');
}

//CHECK#3
if (3e+01 !== 30) {
  throw new Test262Error('#3: 3e+01 === 30');
}

//CHECK#4
if (4e+01 !== 40) {
  throw new Test262Error('#4: 4e+01 === 40');
}

//CHECK#5
if (5e+01 !== 50) {
  throw new Test262Error('#5: 5e+01 === 50');
}

//CHECK#6
if (6e+01 !== 60) {
  throw new Test262Error('#6: 6e+01 === 60');
}

//CHECK#7
if (7e+01 !== 70) {
  throw new Test262Error('#7: 7e+01 === 70');
}

//CHECK#8
if (8e+01 !== 80) {
  throw new Test262Error('#8: 8e+01 === 80');
}

//CHECK#9
if (9e+01 !== 90) {
  throw new Test262Error('#9: 9e+01 === 90');
}

});

__test("literals/numeric/S7.8.3_A4.2_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E+01 !== 0) {
  throw new Test262Error('#0: 0E+01 === 0');
}

//CHECK#1
if (1E+01 !== 10) {
  throw new Test262Error('#1: 1E+01 === 10');
}

//CHECK#2
if (2E+01 !== 20) {
  throw new Test262Error('#2: 2E+01 === 20');
}

//CHECK#3
if (3E+01 !== 30) {
  throw new Test262Error('#3: 3E+01 === 30');
}

//CHECK#4
if (4E+01 !== 40) {
  throw new Test262Error('#4: 4E+01 === 40');
}

//CHECK#5
if (5E+01 !== 50) {
  throw new Test262Error('#5: 5E+01 === 50');
}

//CHECK#6
if (6E+01 !== 60) {
  throw new Test262Error('#6: 6E+01 === 60');
}

//CHECK#7
if (7E+01 !== 70) {
  throw new Test262Error('#7: 7E+01 === 70');
}

//CHECK#8
if (8E+01 !== 80) {
  throw new Test262Error('#8: 8E+01 === 80');
}

//CHECK#9
if (9E+01 !== 90) {
  throw new Test262Error('#9: 9E+01 === 90');
}

});

__test("literals/numeric/S7.8.3_A4.2_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0e00 !== 0) {
  throw new Test262Error('#0: 0e00 === 0');
}

//CHECK#1
if (1e00 !== 1) {
  throw new Test262Error('#1: 1e00 === 1');
}

//CHECK#2
if (2e00 !== 2) {
  throw new Test262Error('#2: 2e00 === 2');
}

//CHECK#3
if (3e00 !== 3) {
  throw new Test262Error('#3: 3e00 === 3');
}

//CHECK#4
if (4e00 !== 4) {
  throw new Test262Error('#4: 4e00 === 4');
}

//CHECK#5
if (5e00 !== 5) {
  throw new Test262Error('#5: 5e00 === 5');
}

//CHECK#6
if (6e00 !== 6) {
  throw new Test262Error('#6: 6e00 === 6');
}

//CHECK#7
if (7e00 !== 7) {
  throw new Test262Error('#7: 7e00 === 7');
}

//CHECK#8
if (8e00 !== 8) {
  throw new Test262Error('#8: 8e00 === 8');
}

//CHECK#9
if (9e00 !== 9) {
  throw new Test262Error('#9: 9e00 === 9');
}

});

__test("literals/numeric/S7.8.3_A4.2_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0E00 !== 0) {
  throw new Test262Error('#0: 0E00 === 0');
}

//CHECK#1
if (1E00 !== 1) {
  throw new Test262Error('#1: 1E00 === 1');
}

//CHECK#2
if (2E00 !== 2) {
  throw new Test262Error('#2: 2E00 === 2');
}

//CHECK#3
if (3E00 !== 3) {
  throw new Test262Error('#3: 3E00 === 3');
}

//CHECK#4
if (4E00 !== 4) {
  throw new Test262Error('#4: 4E00 === 4');
}

//CHECK#5
if (5E00 !== 5) {
  throw new Test262Error('#5: 5E00 === 5');
}

//CHECK#6
if (6E00 !== 6) {
  throw new Test262Error('#6: 6E00 === 6');
}

//CHECK#7
if (7E00 !== 7) {
  throw new Test262Error('#7: 7E00 === 7');
}

//CHECK#8
if (8E00 !== 8) {
  throw new Test262Error('#8: 8E00 === 8');
}

//CHECK#9
if (9E00 !== 9) {
  throw new Test262Error('#9: 9E00 === 9');
}

});

__test("literals/numeric/S7.8.3_A5.1_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0x0 !== 0) {
  throw new Test262Error('#0: 0x0 === 0');
}

//CHECK#1
if (0x1 !== 1) {
  throw new Test262Error('#1: 0x1 === 1');
}

//CHECK#2
if (0x2 !== 2) {
  throw new Test262Error('#2: 0x2 === 2');
}

//CHECK#3
if (0x3 !== 3) {
  throw new Test262Error('#3: 0x3 === 3');
}

//CHECK#4
if (0x4 !== 4) {
  throw new Test262Error('#4: 0x4 === 4');
}

//CHECK#5
if (0x5 !== 5) {
  throw new Test262Error('#5: 0x5 === 5');
}

//CHECK#6
if (0x6 !== 6) {
  throw new Test262Error('#6: 0x6 === 6');
}

//CHECK#7
if (0x7 !== 7) {
  throw new Test262Error('#7: 0x7 === 7');
}

//CHECK#8
if (0x8 !== 8) {
  throw new Test262Error('#8: 0x8 === 8');
}

//CHECK#9
if (0x9 !== 9) {
  throw new Test262Error('#9: 0x9 === 9');
}

//CHECK#A
if (0xA !== 10) {
  throw new Test262Error('#A: 0xA === 10');
}

//CHECK#B
if (0xB !== 11) {
  throw new Test262Error('#B: 0xB === 11');
}

//CHECK#C
if (0xC !== 12) {
  throw new Test262Error('#C: 0xC === 12');
}

//CHECK#D
if (0xD !== 13) {
  throw new Test262Error('#D: 0xD === 13');
}

//CHECK#E
if (0xE !== 14) {
  throw new Test262Error('#E: 0xE === 14');
}

//CHECK#F
if (0xF !== 15) {
  throw new Test262Error('#F: 0xF === 15');
}

});

__test("literals/numeric/S7.8.3_A5.1_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0X0 !== 0) {
  throw new Test262Error('#0: 0X0 === 0');
}

//CHECK#1
if (0X1 !== 1) {
  throw new Test262Error('#1: 0X1 === 1');
}

//CHECK#2
if (0X2 !== 2) {
  throw new Test262Error('#2: 0X2 === 2');
}

//CHECK#3
if (0X3 !== 3) {
  throw new Test262Error('#3: 0X3 === 3');
}

//CHECK#4
if (0X4 !== 4) {
  throw new Test262Error('#4: 0X4 === 4');
}

//CHECK#5
if (0X5 !== 5) {
  throw new Test262Error('#5: 0X5 === 5');
}

//CHECK#6
if (0X6 !== 6) {
  throw new Test262Error('#6: 0X6 === 6');
}

//CHECK#7
if (0X7 !== 7) {
  throw new Test262Error('#7: 0X7 === 7');
}

//CHECK#8
if (0X8 !== 8) {
  throw new Test262Error('#8: 0X8 === 8');
}

//CHECK#9
if (0X9 !== 9) {
  throw new Test262Error('#9: 0X9 === 9');
}

//CHECK#A
if (0XA !== 10) {
  throw new Test262Error('#A: 0XA === 10');
}

//CHECK#B
if (0XB !== 11) {
  throw new Test262Error('#B: 0XB === 11');
}

//CHECK#C
if (0XC !== 12) {
  throw new Test262Error('#C: 0XC === 12');
}

//CHECK#D
if (0XD !== 13) {
  throw new Test262Error('#D: 0XD === 13');
}

//CHECK#E
if (0XE !== 14) {
  throw new Test262Error('#E: 0XE === 14');
}

//CHECK#F
if (0XF !== 15) {
  throw new Test262Error('#F: 0XF === 15');
}

});

__test("literals/numeric/S7.8.3_A5.1_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0x0 !== 0) {
  throw new Test262Error('#0: 0x0 === 0');
}

//CHECK#1
if (0x1 !== 1) {
  throw new Test262Error('#1: 0x1 === 1');
}

//CHECK#2
if (0x10 !== 16) {
  throw new Test262Error('#2: 0x10 === 16');
}

//CHECK3
if (0x100 !== 256) {
  throw new Test262Error('3: 0x100 === 256');
}

//CHECK#4
if (0x1000 !== 4096) {
  throw new Test262Error('#4: 0x1000 === 4096');
}

//CHECK#5
if (0x10000 !== 65536) {
  throw new Test262Error('#5: 0x10000 === 65536');
}

//CHECK#6
if (0x100000 !== 1048576) {
  throw new Test262Error('#6: 0x100000 === 1048576');
}

//CHECK#7
if (0x1000000 !== 16777216) {
  throw new Test262Error('#7: 0x1000000 === 16777216');
}

//CHECK#8
if (0x10000000 !== 268435456) {
  throw new Test262Error('#8: 0x10000000 === 268435456');
}

});

__test("literals/numeric/S7.8.3_A5.1_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0X0 !== 0) {
  throw new Test262Error('#0: 0X0 === 0');
}

//CHECK#1
if (0X1 !== 1) {
  throw new Test262Error('#1: 0X1 === 1');
}

//CHECK#2
if (0X10 !== 16) {
  throw new Test262Error('#2: 0X10 === 16');
}

//CHECK3
if (0X100 !== 256) {
  throw new Test262Error('3: 0X100 === 256');
}

//CHECK#4
if (0X1000 !== 4096) {
  throw new Test262Error('#4: 0X1000 === 4096');
}

//CHECK#5
if (0X10000 !== 65536) {
  throw new Test262Error('#5: 0X10000 === 65536');
}

//CHECK#6
if (0X100000 !== 1048576) {
  throw new Test262Error('#6: 0X100000 === 1048576');
}

//CHECK#7
if (0X1000000 !== 16777216) {
  throw new Test262Error('#7: 0X1000000 === 16777216');
}

//CHECK#8
if (0X10000000 !== 268435456) {
  throw new Test262Error('#8: 0X10000000 === 268435456');
}

});

__test("literals/numeric/S7.8.3_A5.1_T5.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0x00 !== 0) {
  throw new Test262Error('#0: 0x00 === 0');
}

//CHECK#1
if (0x01 !== 1) {
  throw new Test262Error('#1: 0x01 === 1');
}

//CHECK#2
if (0x010 !== 16) {
  throw new Test262Error('#2: 0x010 === 16');
}

//CHECK3
if (0x0100 !== 256) {
  throw new Test262Error('3: 0x0100 === 256');
}

//CHECK#4
if (0x01000 !== 4096) {
  throw new Test262Error('#4: 0x01000 === 4096');
}

//CHECK#5
if (0x010000 !== 65536) {
  throw new Test262Error('#5: 0x010000 === 65536');
}

//CHECK#6
if (0x0100000 !== 1048576) {
  throw new Test262Error('#6: 0x0100000 === 1048576');
}

//CHECK#7
if (0x01000000 !== 16777216) {
  throw new Test262Error('#7: 0x01000000 === 16777216');
}

//CHECK#8
if (0x010000000 !== 268435456) {
  throw new Test262Error('#8: 0x010000000 === 268435456');
}

});

__test("literals/numeric/S7.8.3_A5.1_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#0
if (0X00 !== 0) {
  throw new Test262Error('#0: 0X00 === 0');
}

//CHECK#1
if (0X01 !== 1) {
  throw new Test262Error('#1: 0X01 === 1');
}

//CHECK#2
if (0X010 !== 16) {
  throw new Test262Error('#2: 0X010 === 16');
}

//CHECK3
if (0X0100 !== 256) {
  throw new Test262Error('3: 0X0100 === 256');
}

//CHECK#4
if (0X01000 !== 4096) {
  throw new Test262Error('#4: 0X01000 === 4096');
}

//CHECK#5
if (0X010000 !== 65536) {
  throw new Test262Error('#5: 0X010000 === 65536');
}

//CHECK#6
if (0X0100000 !== 1048576) {
  throw new Test262Error('#6: 0X0100000 === 1048576');
}

//CHECK#7
if (0X01000000 !== 16777216) {
  throw new Test262Error('#7: 0X01000000 === 16777216');
}

//CHECK#8
if (0X010000000 !== 268435456) {
  throw new Test262Error('#8: 0X010000000 === 268435456');
}

});

__test("literals/numeric/S7.8.3_A5.1_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#a
if (0xa !== 10) {
  throw new Test262Error('#a: 0xa === 10');
}

//CHECK#b
if (0xb !== 11) {
  throw new Test262Error('#b: 0xb === 11');
}

//CHECK#c
if (0xc !== 12) {
  throw new Test262Error('#c: 0xc === 12');
}

//CHECK#d
if (0xd !== 13) {
  throw new Test262Error('#d: 0xd === 13');
}

//CHECK#e
if (0xe !== 14) {
  throw new Test262Error('#e: 0xe === 14');
}

//CHECK#f
if (0xf !== 15) {
  throw new Test262Error('#f: 0xf === 15');
}

});

__test("literals/numeric/S7.8.3_A5.1_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#a
if (0Xa !== 10) {
  throw new Test262Error('#a: 0Xa === 10');
}

//CHECK#b
if (0Xb !== 11) {
  throw new Test262Error('#b: 0Xb === 11');
}

//CHECK#c
if (0Xc !== 12) {
  throw new Test262Error('#c: 0Xc === 12');
}

//CHECK#d
if (0Xd !== 13) {
  throw new Test262Error('#d: 0Xd === 13');
}

//CHECK#e
if (0Xe !== 14) {
  throw new Test262Error('#e: 0Xe === 14');
}

//CHECK#f
if (0Xf !== 15) {
  throw new Test262Error('#f: 0Xf === 15');
}

});

__test("literals/numeric/binary.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(0b0, 0, 'lower-case head');
assert.sameValue(0B0, 0, 'upper-case head');
assert.sameValue(0b00, 0, 'lower-case head with leading zeros');
assert.sameValue(0B00, 0, 'upper-case head with leading zeros');

assert.sameValue(0b1, 1, 'lower-case head');
assert.sameValue(0B1, 1, 'upper-case head');
assert.sameValue(0b01, 1, 'lower-case head with leading zeros');
assert.sameValue(0B01, 1, 'upper-case head with leading zeros');

assert.sameValue(0b10, 2, 'lower-case head');
assert.sameValue(0B10, 2, 'upper-case head');
assert.sameValue(0b010, 2, 'lower-case head with leading zeros');
assert.sameValue(0B010, 2, 'upper-case head with leading zeros');

assert.sameValue(0b11, 3, 'lower-case head');
assert.sameValue(0B11, 3, 'upper-case head');
assert.sameValue(0b011, 3, 'lower-case head with leading zeros');
assert.sameValue(0B011, 3, 'upper-case head with leading zeros');

});

__test("literals/numeric/legacy-octal-integer.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


// LegacyOctalIntegerLiteral ::
//   0 OctalDigit
assert.sameValue(00, 0, '00');
assert.sameValue(01, 1, '01');
assert.sameValue(02, 2, '02');
assert.sameValue(03, 3, '03');
assert.sameValue(04, 4, '04');
assert.sameValue(05, 5, '05');
assert.sameValue(06, 6, '06');
assert.sameValue(07, 7, '07');

// LegacyOctalIntegerLiteral ::
//   LegacyOctalIntegerLiteral OctalDigit
assert.sameValue(000, 0, '000');
assert.sameValue(001, 1, '001');
assert.sameValue(002, 2, '002');
assert.sameValue(003, 3, '003');
assert.sameValue(004, 4, '004');
assert.sameValue(005, 5, '005');
assert.sameValue(006, 6, '006');
assert.sameValue(007, 7, '007');

assert.sameValue(070, 56);
assert.sameValue(071, 57);
assert.sameValue(072, 58);
assert.sameValue(073, 59);
assert.sameValue(074, 60);
assert.sameValue(075, 61);
assert.sameValue(076, 62);
assert.sameValue(077, 63);

});

__test("literals/numeric/non-octal-decimal-integer.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


// NonOctalDecimalIntegerLiteral ::
//   0 NonOctalDigit
assert.sameValue(08, 8, '08');
assert.sameValue(09, 9, '09');

// NonOctalDecimalIntegerLiteral ::
//   LegacyOctalLikeDecimalIntegerLiteral NonOctalDigit
assert.sameValue(008, 8, '008');
assert.sameValue(018, 18, '018');
assert.sameValue(028, 28, '028');
assert.sameValue(038, 38, '038');
assert.sameValue(048, 48, '048');
assert.sameValue(058, 58, '058');
assert.sameValue(068, 68, '068');
assert.sameValue(078, 78, '078');
assert.sameValue(088, 88, '088');
assert.sameValue(098, 98, '098');
assert.sameValue(0708, 708, '708');
assert.sameValue(0718, 718, '718');
assert.sameValue(0728, 728, '728');
assert.sameValue(0738, 738, '738');
assert.sameValue(0748, 748, '748');
assert.sameValue(0758, 758, '758');
assert.sameValue(0768, 768, '768');
assert.sameValue(0778, 778, '778');
assert.sameValue(0788, 788, '788');
assert.sameValue(0798, 798, '798');

assert.sameValue(009, 9, '009');
assert.sameValue(019, 19, '019');
assert.sameValue(029, 29, '029');
assert.sameValue(039, 39, '039');
assert.sameValue(049, 49, '049');
assert.sameValue(059, 59, '059');
assert.sameValue(069, 69, '069');
assert.sameValue(079, 79, '079');
assert.sameValue(089, 89, '089');
assert.sameValue(099, 99, '099');
assert.sameValue(0709, 709, '0709');
assert.sameValue(0719, 719, '0719');
assert.sameValue(0729, 729, '0729');
assert.sameValue(0739, 739, '0739');
assert.sameValue(0749, 749, '0749');
assert.sameValue(0759, 759, '0759');
assert.sameValue(0769, 769, '0769');
assert.sameValue(0779, 779, '0779');
assert.sameValue(0789, 789, '0789');
assert.sameValue(0799, 799, '0799');

// NonOctalDecimalIntegerLiteral ::
//   NonOctalDecimalIntegerLiteral DecimalDigit
assert.sameValue(080, 80, '080');
assert.sameValue(081, 81, '081');
assert.sameValue(082, 82, '082');
assert.sameValue(083, 83, '083');
assert.sameValue(084, 84, '084');
assert.sameValue(085, 85, '085');
assert.sameValue(086, 86, '086');
assert.sameValue(087, 87, '087');
assert.sameValue(088, 88, '088');
assert.sameValue(089, 89, '089');

assert.sameValue(0780, 780, '0780');
assert.sameValue(0781, 781, '0781');
assert.sameValue(0782, 782, '0782');
assert.sameValue(0783, 783, '0783');
assert.sameValue(0784, 784, '0784');
assert.sameValue(0785, 785, '0785');
assert.sameValue(0786, 786, '0786');
assert.sameValue(0787, 787, '0787');
assert.sameValue(0788, 788, '0788');
assert.sameValue(0789, 789, '0789');

assert.sameValue(090, 90, '090');
assert.sameValue(091, 91, '091');
assert.sameValue(092, 92, '092');
assert.sameValue(093, 93, '093');
assert.sameValue(094, 94, '094');
assert.sameValue(095, 95, '095');
assert.sameValue(096, 96, '096');
assert.sameValue(097, 97, '097');
assert.sameValue(098, 98, '098');
assert.sameValue(099, 99, '099');

assert.sameValue(0790, 790, '0790');
assert.sameValue(0791, 791, '0791');
assert.sameValue(0792, 792, '0792');
assert.sameValue(0793, 793, '0793');
assert.sameValue(0794, 794, '0794');
assert.sameValue(0795, 795, '0795');
assert.sameValue(0796, 796, '0796');
assert.sameValue(0797, 797, '0797');
assert.sameValue(0798, 798, '0798');
assert.sameValue(0799, 799, '0799');

});

__test("literals/numeric/octal.js", function() {
// Copyright (C) 2015 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



assert.sameValue(0o0, 0, 'lower-case head');
assert.sameValue(0O0, 0, 'upper-case head');
assert.sameValue(0o00, 0, 'lower-case head with leading zeros');
assert.sameValue(0O00, 0, 'upper-case head with leading zeros');

assert.sameValue(0o1, 1, 'lower-case head');
assert.sameValue(0O1, 1, 'upper-case head');
assert.sameValue(0o01, 1, 'lower-case head with leading zeros');
assert.sameValue(0O01, 1, 'upper-case head with leading zeros');

assert.sameValue(0o7, 7, 'lower-case head');
assert.sameValue(0O7, 7, 'upper-case head');
assert.sameValue(0o07, 7, 'lower-case head with leading zeros');
assert.sameValue(0O07, 7, 'upper-case head with leading zeros');

assert.sameValue(0o10, 8, 'lower-case head');
assert.sameValue(0O10, 8, 'upper-case head');
assert.sameValue(0o010, 8, 'lower-case head with leading zeros');
assert.sameValue(0O010, 8, 'upper-case head with leading zeros');

assert.sameValue(0o11, 9, 'lower-case head');
assert.sameValue(0O11, 9, 'upper-case head');
assert.sameValue(0o011, 9, 'lower-case head with leading zeros');
assert.sameValue(0O011, 9, 'upper-case head with leading zeros');

assert.sameValue(0o77, 63, 'lower-case head');
assert.sameValue(0O77, 63, 'upper-case head');
assert.sameValue(0o077, 63, 'lower-case head with leading zeros');
assert.sameValue(0O077, 63, 'upper-case head with leading zeros');

});

__test("literals/string/S7.8.4_A4.2_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#A-Z
if ("A" !== "\A") {
  throw new Test262Error('#A');
}

if ("B" !== "\B") {
  throw new Test262Error('#B');
}

if ("C" !== "\C") {
  throw new Test262Error('#C');
}

if ("D" !== "\D") {
  throw new Test262Error('#D');
}

if ("E" !== "\E") {
  throw new Test262Error('#E');
}

if ("F" !== "\F") {
  throw new Test262Error('#F');
}

if ("G" !== "\G") {
  throw new Test262Error('#G');
}

if ("H" !== "\H") {
  throw new Test262Error('#H');
}

if ("I" !== "\I") {
  throw new Test262Error('#I');
}

if ("J" !== "\J") {
  throw new Test262Error('#J');
}

if ("K" !== "\K") {
  throw new Test262Error('#K');
}

if ("L" !== "\L") {
  throw new Test262Error('#L');
}

if ("M" !== "\M") {
  throw new Test262Error('#M');
}

if ("N" !== "\N") {
  throw new Test262Error('#N');
}

if ("O" !== "\O") {
  throw new Test262Error('#O');
}

if ("P" !== "\P") {
  throw new Test262Error('#P');
}

if ("Q" !== "\Q") {
  throw new Test262Error('#Q');
}

if ("R" !== "\R") {
  throw new Test262Error('#R');
}

if ("S" !== "\S") {
  throw new Test262Error('#S');
}

if ("T" !== "\T") {
  throw new Test262Error('#T');
}

if ("U" !== "\U") {
  throw new Test262Error('#U');
}

if ("V" !== "\V") {
  throw new Test262Error('#V');
}

if ("W" !== "\W") {
  throw new Test262Error('#W');
}

if ("X" !== "\X") {
  throw new Test262Error('#X');
}

if ("Y" !== "\Y") {
  throw new Test262Error('#Y');
}

if ("Z" !== "\Z") {
  throw new Test262Error('#Z');
}

});

__test("literals/string/S7.8.4_A4.2_T4.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#a-z without b, f, n, r, t, v, x, u

if ("a" !== "\a") {
  throw new Test262Error('#a');
}

if ("c" !== "\c") {
  throw new Test262Error('#c');
}

if ("d" !== "\d") {
  throw new Test262Error('#d');
}

if ("e" !== "\e") {
  throw new Test262Error('#e');
}

if ("g" !== "\g") {
  throw new Test262Error('#g');
}

if ("h" !== "\h") {
  throw new Test262Error('#h');
}

if ("i" !== "\i") {
  throw new Test262Error('#i');
}

if ("j" !== "\j") {
  throw new Test262Error('#j');
}

if ("k" !== "\k") {
  throw new Test262Error('#k');
}

if ("l" !== "\l") {
  throw new Test262Error('#l');
}

if ("m" !== "\m") {
  throw new Test262Error('#m');
}


if ("o" !== "\o") {
  throw new Test262Error('#o');
}

if ("p" !== "\p") {
  throw new Test262Error('#p');
}

if ("q" !== "\q") {
  throw new Test262Error('#q');
}

if ("s" !== "\s") {
  throw new Test262Error('#s');
}

if ("w" !== "\w") {
  throw new Test262Error('#w');
}

if ("y" !== "\y") {
  throw new Test262Error('#y');
}

if ("z" !== "\z") {
  throw new Test262Error('#z');
}

});

__test("literals/string/S7.8.4_A4.2_T6.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#А-Я

if ("А" !== "\А") {
  throw new Test262Error('#А');
}

if ("Б" !== "\Б") {
  throw new Test262Error('#Б');
}

if ("В" !== "\В") {
  throw new Test262Error('#В');
}

if ("Г" !== "\Г") {
  throw new Test262Error('#Г');
}

if ("Д" !== "\Д") {
  throw new Test262Error('#Д');
}

if ("Е" !== "\Е") {
  throw new Test262Error('#Е');
}

if ("Ж" !== "\Ж") {
  throw new Test262Error('#Ж');
}

if ("З" !== "\З") {
  throw new Test262Error('#З');
}

if ("И" !== "\И") {
  throw new Test262Error('#И');
}

if ("Й" !== "\Й") {
  throw new Test262Error('#Й');
}

if ("К" !== "\К") {
  throw new Test262Error('#К');
}

if ("Л" !== "\Л") {
  throw new Test262Error('#Л');
}

if ("М" !== "\М") {
  throw new Test262Error('#М');
}

if ("Н" !== "\Н") {
  throw new Test262Error('#Н');
}

if ("О" !== "\О") {
  throw new Test262Error('#О');
}

if ("П" !== "\П") {
  throw new Test262Error('#П');
}

if ("Р" !== "\Р") {
  throw new Test262Error('#Р');
}

if ("С" !== "\С") {
  throw new Test262Error('#С');
}

if ("Т" !== "\Т") {
  throw new Test262Error('#Т');
}

if ("У" !== "\У") {
  throw new Test262Error('#У');
}

if ("Ф" !== "\Ф") {
  throw new Test262Error('#Ф');
}

if ("Х" !== "\Х") {
  throw new Test262Error('#Х');
}

if ("Ц" !== "\Ц") {
  throw new Test262Error('#Ц');
}

if ("Ч" !== "\Ч") {
  throw new Test262Error('#Ч');
}

if ("Ш" !== "\Ш") {
  throw new Test262Error('#Ш');
}

if ("Щ" !== "\Щ") {
  throw new Test262Error('#Щ');
}

if ("Ъ" !== "\Ъ") {
  throw new Test262Error('#Ъ');
}

if ("Ы" !== "\Ы") {
  throw new Test262Error('#Ы');
}

if ("Ь" !== "\Ь") {
  throw new Test262Error('#Ь');
}

if ("Э" !== "\Э") {
  throw new Test262Error('#Э');
}

if ("Ю" !== "\Ю") {
  throw new Test262Error('#Ю');
}

if ("Я" !== "\Я") {
  throw new Test262Error('#Я');
}

if ("Ё" !== "\Ё") {
  throw new Test262Error('#Ё');
}

});

__test("literals/string/S7.8.4_A4.2_T8.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#а-я

if ("а" !== "\а") {
  throw new Test262Error('#а');
}

if ("б" !== "\б") {
  throw new Test262Error('#б');
}

if ("в" !== "\в") {
  throw new Test262Error('#в');
}

if ("г" !== "\г") {
  throw new Test262Error('#г');
}

if ("д" !== "\д") {
  throw new Test262Error('#д');
}

if ("е" !== "\е") {
  throw new Test262Error('#е');
}

if ("ж" !== "\ж") {
  throw new Test262Error('#ж');
}

if ("з" !== "\з") {
  throw new Test262Error('#з');
}

if ("и" !== "\и") {
  throw new Test262Error('#и');
}

if ("й" !== "\й") {
  throw new Test262Error('#й');
}

if ("к" !== "\к") {
  throw new Test262Error('#к');
}

if ("л" !== "\л") {
  throw new Test262Error('#л');
}

if ("м" !== "\м") {
  throw new Test262Error('#м');
}

if ("н" !== "\н") {
  throw new Test262Error('#н');
}

if ("о" !== "\о") {
  throw new Test262Error('#о');
}

if ("п" !== "\п") {
  throw new Test262Error('#п');
}

if ("р" !== "\р") {
  throw new Test262Error('#р');
}

if ("с" !== "\с") {
  throw new Test262Error('#с');
}

if ("т" !== "\т") {
  throw new Test262Error('#т');
}

if ("у" !== "\у") {
  throw new Test262Error('#у');
}

if ("ф" !== "\ф") {
  throw new Test262Error('#ф');
}

if ("х" !== "\х") {
  throw new Test262Error('#х');
}

if ("ц" !== "\ц") {
  throw new Test262Error('#ц');
}

if ("ч" !== "\ч") {
  throw new Test262Error('#ч');
}

if ("ш" !== "\ш") {
  throw new Test262Error('#ш');
}

if ("щ" !== "\щ") {
  throw new Test262Error('#щ');
}

if ("ъ" !== "\ъ") {
  throw new Test262Error('#ъ');
}

if ("ы" !== "\ы") {
  throw new Test262Error('#ы');
}

if ("ь" !== "\ь") {
  throw new Test262Error('#ь');
}

if ("э" !== "\э") {
  throw new Test262Error('#э');
}

if ("ю" !== "\ю") {
  throw new Test262Error('#ю');
}

if ("я" !== "\я") {
  throw new Test262Error('#я');
}

if ("ё" !== "\ё") {
  throw new Test262Error('#ё');
}

});

__test("literals/string/S7.8.4_A4.3_T7.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#bfnrtv
if ("b" === "\b") {
  throw new Test262Error('#b');
}

if ("f" === "\f") {
  throw new Test262Error('#f');
}

if ("n" === "\n") {
  throw new Test262Error('#n');
}

if ("r" === "\r") {
  throw new Test262Error('#r');
}

if ("t" === "\t") {
  throw new Test262Error('#t');
}

if ("v" === "\v") {
  throw new Test262Error('#v');
}

});

__test("literals/string/S7.8.4_A5.1_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ("\u0000" !== "\0") {
  throw new Test262Error('#1: "\\u0000" === "\\0"');
}

});

__test("literals/string/S7.8.4_A5.1_T3.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if ("\x00" !== "\0") {
  throw new Test262Error('#1: "\\x00" === "\\0"');
}

});

__test("literals/string/legacy-non-octal-escape-sequence-8-non-strict.js", function() {
// Copyright (C) 2021 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


assert.sameValue('\8', '8');

});

__test("literals/string/legacy-non-octal-escape-sequence-9-non-strict.js", function() {
// Copyright (C) 2021 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


assert.sameValue('\9', '9');

});

__test("literals/string/legacy-octal-escape-sequence.js", function() {
// Copyright (C) 2016 the V8 project authors. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.


// LegacyOctalEscapeSequence ::
//   OctalDigit [lookahead ∉ OctalDigit]
assert.sameValue('\0', '\x00', '\\0');
assert.sameValue('\1', '\x01', '\\1');
assert.sameValue('\2', '\x02', '\\2');
assert.sameValue('\3', '\x03', '\\3');
assert.sameValue('\4', '\x04', '\\4');
assert.sameValue('\5', '\x05', '\\5');
assert.sameValue('\6', '\x06', '\\6');
assert.sameValue('\7', '\x07', '\\7');

assert.sameValue('\08', '\x008', '\\08');
assert.sameValue('\18', '\x018', '\\18');
assert.sameValue('\28', '\x028', '\\28');
assert.sameValue('\38', '\x038', '\\38');
assert.sameValue('\48', '\x048', '\\48');
assert.sameValue('\58', '\x058', '\\58');
assert.sameValue('\68', '\x068', '\\68');
assert.sameValue('\78', '\x078', '\\78');
assert.sameValue('\08', '\x008', '\\08');

// LegacyOctalEscapeSequence ::
//   ZeroToThree OctalDigit [lookahead ∉ OctalDigit]
assert.sameValue('\00', '\x00', '\\00');
assert.sameValue('\01', '\x01', '\\01');
assert.sameValue('\06', '\x06', '\\06');
assert.sameValue('\07', '\x07', '\\07');
assert.sameValue('\10', '\x08', '\\10');
assert.sameValue('\11', '\x09', '\\11');
assert.sameValue('\16', '\x0e', '\\16');
assert.sameValue('\17', '\x0f', '\\17');
assert.sameValue('\20', '\x10', '\\20');
assert.sameValue('\21', '\x11', '\\21');
assert.sameValue('\26', '\x16', '\\26');
assert.sameValue('\27', '\x17', '\\27');
assert.sameValue('\30', '\x18', '\\30');
assert.sameValue('\31', '\x19', '\\31');
assert.sameValue('\36', '\x1e', '\\36');
assert.sameValue('\37', '\x1f', '\\37');
assert.sameValue('\008', '\x008', '\\008');
assert.sameValue('\018', '\x018', '\\018');
assert.sameValue('\068', '\x068', '\\068');
assert.sameValue('\078', '\x078', '\\078');
assert.sameValue('\108', '\x088', '\\108');
assert.sameValue('\118', '\x098', '\\118');
assert.sameValue('\168', '\x0e8', '\\168');
assert.sameValue('\178', '\x0f8', '\\178');
assert.sameValue('\208', '\x108', '\\208');
assert.sameValue('\218', '\x118', '\\218');
assert.sameValue('\268', '\x168', '\\268');
assert.sameValue('\278', '\x178', '\\278');
assert.sameValue('\308', '\x188', '\\308');
assert.sameValue('\318', '\x198', '\\318');
assert.sameValue('\368', '\x1e8', '\\368');
assert.sameValue('\378', '\x1f8', '\\378');

// LegacyOctalEscapeSequence ::
//   FourToSeven OctalDigit
assert.sameValue('\40', '\x20', '\\40');
assert.sameValue('\41', '\x21', '\\41');
assert.sameValue('\46', '\x26', '\\46');
assert.sameValue('\47', '\x27', '\\47');
assert.sameValue('\50', '\x28', '\\50');
assert.sameValue('\51', '\x29', '\\51');
assert.sameValue('\56', '\x2e', '\\56');
assert.sameValue('\57', '\x2f', '\\57');
assert.sameValue('\60', '\x30', '\\60');
assert.sameValue('\61', '\x31', '\\61');
assert.sameValue('\66', '\x36', '\\66');
assert.sameValue('\67', '\x37', '\\67');
assert.sameValue('\70', '\x38', '\\70');
assert.sameValue('\71', '\x39', '\\71');
assert.sameValue('\76', '\x3e', '\\76');
assert.sameValue('\77', '\x3f', '\\77');
assert.sameValue('\400', '\x200', '\\400');
assert.sameValue('\410', '\x210', '\\410');
assert.sameValue('\460', '\x260', '\\460');
assert.sameValue('\470', '\x270', '\\470');
assert.sameValue('\500', '\x280', '\\500');
assert.sameValue('\510', '\x290', '\\510');
assert.sameValue('\560', '\x2e0', '\\560');
assert.sameValue('\570', '\x2f0', '\\570');
assert.sameValue('\600', '\x300', '\\600');
assert.sameValue('\610', '\x310', '\\610');
assert.sameValue('\660', '\x360', '\\660');
assert.sameValue('\670', '\x370', '\\670');
assert.sameValue('\700', '\x380', '\\700');
assert.sameValue('\710', '\x390', '\\710');
assert.sameValue('\760', '\x3e0', '\\760');
assert.sameValue('\770', '\x3f0', '\\770');

// LegacyOctalEscapeSequence ::
//   ZeroToThree OctalDigit OctalDigit
assert.sameValue('\000', '\x00', '\\000');
assert.sameValue('\001', '\x01', '\\001');
assert.sameValue('\010', '\x08', '\\010');
assert.sameValue('\006', '\x06', '\\006');
assert.sameValue('\060', '\x30', '\\060');
assert.sameValue('\007', '\x07', '\\007');
assert.sameValue('\070', '\x38', '\\070');
assert.sameValue('\077', '\x3f', '\\077');
assert.sameValue('\100', '\x40', '\\100');
assert.sameValue('\101', '\x41', '\\101');
assert.sameValue('\110', '\x48', '\\110');
assert.sameValue('\106', '\x46', '\\106');
assert.sameValue('\160', '\x70', '\\160');
assert.sameValue('\107', '\x47', '\\107');
assert.sameValue('\170', '\x78', '\\170');
assert.sameValue('\177', '\x7f', '\\177');
assert.sameValue('\200', '\x80', '\\200');
assert.sameValue('\201', '\x81', '\\201');
assert.sameValue('\210', '\x88', '\\210');
assert.sameValue('\206', '\x86', '\\206');
assert.sameValue('\260', '\xb0', '\\260');
assert.sameValue('\207', '\x87', '\\207');
assert.sameValue('\270', '\xb8', '\\270');
assert.sameValue('\277', '\xbf', '\\277');
assert.sameValue('\300', '\xc0', '\\300');
assert.sameValue('\301', '\xc1', '\\301');
assert.sameValue('\310', '\xc8', '\\310');
assert.sameValue('\306', '\xc6', '\\306');
assert.sameValue('\360', '\xf0', '\\360');
assert.sameValue('\307', '\xc7', '\\307');
assert.sameValue('\370', '\xf8', '\\370');
assert.sameValue('\377', '\xff', '\\377');

});

__test("literals/string/line-continuation-double.js", function() {
// Copyright (C) 2018 Richard Gibson. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// LineTerminatorSequence :: <LF>
assert.sameValue("\
", "");

// LineTerminatorSequence :: <CR> [lookahead ≠ <LF>]
assert.sameValue("\", "");

// LineTerminatorSequence :: <LS>
// <LS> is U+2028 LINE SEPARATOR; UTF8(0x2028) = 0xE2 0x80 0xA8
assert.sameValue("\ ", "");

// LineTerminatorSequence :: <PS>
// <PS> is U+2029 PARAGRAPH SEPARATOR; UTF8(0x2029) = 0xE2 0x80 0xA9
assert.sameValue("\ ", "");

// LineTerminatorSequence :: <CR> <LF>
assert.sameValue("\
", "");

});

__test("literals/string/line-continuation-single.js", function() {
// Copyright (C) 2018 Richard Gibson. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// LineTerminatorSequence :: <LF>
assert.sameValue('\
', '');

// LineTerminatorSequence :: <CR> [lookahead ≠ <LF>]
assert.sameValue('\', '');

// LineTerminatorSequence :: <LS>
// <LS> is U+2028 LINE SEPARATOR; UTF8(0x2028) = 0xE2 0x80 0xA8
assert.sameValue('\ ', '');

// LineTerminatorSequence :: <PS>
// <PS> is U+2029 PARAGRAPH SEPARATOR; UTF8(0x2029) = 0xE2 0x80 0xA9
assert.sameValue('\ ', '');

// LineTerminatorSequence :: <CR> <LF>
assert.sameValue('\
', '');

});

__test("literals/string/line-separator.js", function() {
// Copyright (C) 2018 Richard Gibson. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// U+2028 in strings; UTF8(0x2028) = 0xE2 0x80 0xA8
assert.sameValue(" ", "\u2028");

});

__test("literals/string/mongolian-vowel-separator.js", function() {
// Copyright (C) 2016 André Bargull. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// U+180E in strings; UTF8(0x180E) = 0xE1 0xA0 0x8E
assert.sameValue("᠎", "\u180E");

});

__test("literals/string/paragraph-separator.js", function() {
// Copyright (C) 2018 Richard Gibson. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



// U+2029 in strings; UTF8(0x2029) = 0xE2 0x80 0xA9
assert.sameValue(" ", "\u2029");

});

__test("literals/boolean/S7.8.2_A1_T1.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if (Boolean(true) !== true) {
  throw new Test262Error('#1: Boolean(true) === true. Actual: Boolean(true) === ' + (Boolean(true)));
}

});

__test("literals/boolean/S7.8.2_A1_T2.js", function() {
// Copyright 2009 the Sputnik authors.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.



//CHECK#1
if (Boolean(false) !== false) {
  throw new Test262Error('#1: Boolean(false) === false. Actual: Boolean(false) === ' + (Boolean(false)));
}

});


var __i = 0;
while (__i < __errors.length) {
  console.log(__errors[__i]);
  __i = __i + 1;
}
console.log("PASS=" + __pass + " FAIL=" + __fail + " TOTAL=" + (__pass + __fail));
