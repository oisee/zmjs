/*eslint-disable*/
var __defProp = Object.defineProperty;
var __export = (target, all) => {
  for (var name in all)
    __defProp(target, name, { get: all[name], enumerable: true });
};

// ../core/src/abap/2_statements/statements/index.ts
var statements_exports = {};
__export(statements_exports, {
  Add: () => Add,
  AddCorresponding: () => AddCorresponding,
  Aliases: () => Aliases,
  Append: () => Append,
  Assert: () => Assert,
  Assign: () => Assign,
  AssignLocalCopy: () => AssignLocalCopy,
  At: () => At2,
  AtFirst: () => AtFirst,
  AtLast: () => AtLast,
  AtLineSelection: () => AtLineSelection,
  AtPF: () => AtPF,
  AtSelectionScreen: () => AtSelectionScreen,
  AtUserCommand: () => AtUserCommand,
  AuthorityCheck: () => AuthorityCheck,
  Back: () => Back,
  Break: () => Break,
  BreakId: () => BreakId,
  Call: () => Call,
  CallBadi: () => CallBadi,
  CallDatabase: () => CallDatabase,
  CallDialog: () => CallDialog,
  CallFunction: () => CallFunction,
  CallKernel: () => CallKernel,
  CallOLE: () => CallOLE,
  CallScreen: () => CallScreen,
  CallSelectionScreen: () => CallSelectionScreen,
  CallSubscreen: () => CallSubscreen,
  CallTransaction: () => CallTransaction,
  CallTransformation: () => CallTransformation,
  Case: () => Case,
  CaseType: () => CaseType,
  Catch: () => Catch,
  CatchSystemExceptions: () => CatchSystemExceptions,
  Chain: () => Chain,
  Check: () => Check,
  CheckSelectOptions: () => CheckSelectOptions,
  ClassData: () => ClassData,
  ClassDataBegin: () => ClassDataBegin,
  ClassDataEnd: () => ClassDataEnd,
  ClassDeferred: () => ClassDeferred,
  ClassDefinition: () => ClassDefinition,
  ClassDefinitionLoad: () => ClassDefinitionLoad,
  ClassImplementation: () => ClassImplementation,
  ClassLocalFriends: () => ClassLocalFriends,
  Cleanup: () => Cleanup,
  Clear: () => Clear,
  CloseCursor: () => CloseCursor,
  CloseDataset: () => CloseDataset,
  Collect: () => Collect,
  Commit: () => Commit,
  CommitEntities: () => CommitEntities,
  Communication: () => Communication,
  Compute: () => Compute,
  Concatenate: () => Concatenate,
  Condense: () => Condense,
  Constant: () => Constant2,
  ConstantBegin: () => ConstantBegin,
  ConstantEnd: () => ConstantEnd,
  Contexts: () => Contexts,
  Continue: () => Continue,
  Controls: () => Controls,
  Convert: () => Convert,
  ConvertText: () => ConvertText,
  CreateData: () => CreateData,
  CreateOLE: () => CreateOLE,
  CreateObject: () => CreateObject,
  Data: () => Data,
  DataBegin: () => DataBegin,
  DataEnd: () => DataEnd,
  Define: () => Define,
  DeleteCluster: () => DeleteCluster,
  DeleteDatabase: () => DeleteDatabase,
  DeleteDataset: () => DeleteDataset,
  DeleteDynpro: () => DeleteDynpro,
  DeleteInternal: () => DeleteInternal,
  DeleteMemory: () => DeleteMemory,
  DeleteReport: () => DeleteReport,
  DeleteTextpool: () => DeleteTextpool,
  Demand: () => Demand,
  Describe: () => Describe,
  Detail: () => Detail,
  Divide: () => Divide,
  Do: () => Do,
  DynproLoop: () => DynproLoop,
  EditorCall: () => EditorCall,
  Else: () => Else,
  ElseIf: () => ElseIf,
  EndAt: () => EndAt,
  EndCase: () => EndCase,
  EndCatch: () => EndCatch,
  EndChain: () => EndChain,
  EndClass: () => EndClass,
  EndDo: () => EndDo,
  EndEnhancement: () => EndEnhancement,
  EndEnhancementSection: () => EndEnhancementSection,
  EndExec: () => EndExec,
  EndForm: () => EndForm,
  EndFunction: () => EndFunction,
  EndIf: () => EndIf,
  EndInterface: () => EndInterface,
  EndLoop: () => EndLoop,
  EndMethod: () => EndMethod,
  EndModule: () => EndModule,
  EndOfDefinition: () => EndOfDefinition,
  EndOfPage: () => EndOfPage,
  EndOfSelection: () => EndOfSelection,
  EndOn: () => EndOn,
  EndProvide: () => EndProvide,
  EndSelect: () => EndSelect,
  EndTestInjection: () => EndTestInjection,
  EndTestSeam: () => EndTestSeam,
  EndTry: () => EndTry,
  EndWhile: () => EndWhile,
  EndWith: () => EndWith,
  Enhancement: () => Enhancement,
  EnhancementPoint: () => EnhancementPoint,
  EnhancementSection: () => EnhancementSection,
  Events: () => Events,
  ExecSQL: () => ExecSQL,
  Exit: () => Exit,
  Export: () => Export,
  ExportDynpro: () => ExportDynpro,
  Extract: () => Extract,
  FetchNextCursor: () => FetchNextCursor,
  Field: () => Field2,
  FieldGroup: () => FieldGroup,
  FieldSymbol: () => FieldSymbol2,
  Fields: () => Fields,
  Find: () => Find,
  Form: () => Form,
  FormDefinition: () => FormDefinition,
  Format: () => Format,
  Free: () => Free,
  FreeMemory: () => FreeMemory,
  FreeObject: () => FreeObject,
  FunctionModule: () => FunctionModule,
  FunctionPool: () => FunctionPool,
  GenerateDynpro: () => GenerateDynpro,
  GenerateReport: () => GenerateReport,
  GenerateSubroutine: () => GenerateSubroutine,
  Get: () => Get,
  GetBadi: () => GetBadi,
  GetBit: () => GetBit,
  GetCursor: () => GetCursor,
  GetDataset: () => GetDataset,
  GetLocale: () => GetLocale,
  GetPFStatus: () => GetPFStatus,
  GetParameter: () => GetParameter,
  GetPermissions: () => GetPermissions,
  GetProperty: () => GetProperty,
  GetReference: () => GetReference,
  GetRunTime: () => GetRunTime,
  GetTime: () => GetTime,
  Hide: () => Hide,
  If: () => If,
  Import: () => Import,
  ImportDynpro: () => ImportDynpro,
  ImportNametab: () => ImportNametab,
  Include: () => Include,
  IncludeType: () => IncludeType,
  Infotypes: () => Infotypes,
  Initialization: () => Initialization,
  Input: () => Input,
  InsertDatabase: () => InsertDatabase,
  InsertFieldGroup: () => InsertFieldGroup,
  InsertInternal: () => InsertInternal,
  InsertReport: () => InsertReport,
  InsertTextpool: () => InsertTextpool,
  Interface: () => Interface,
  InterfaceDef: () => InterfaceDef,
  InterfaceDeferred: () => InterfaceDeferred,
  InterfaceLoad: () => InterfaceLoad,
  Leave: () => Leave,
  LoadOfProgram: () => LoadOfProgram,
  LoadReport: () => LoadReport,
  Local: () => Local,
  LogPoint: () => LogPoint,
  Loop: () => Loop,
  LoopAtScreen: () => LoopAtScreen,
  LoopExtract: () => LoopExtract,
  Message: () => Message,
  MethodDef: () => MethodDef,
  MethodImplementation: () => MethodImplementation,
  ModifyDatabase: () => ModifyDatabase,
  ModifyEntities: () => ModifyEntities,
  ModifyInternal: () => ModifyInternal,
  ModifyLine: () => ModifyLine,
  ModifyScreen: () => ModifyScreen,
  Module: () => Module,
  Move: () => Move,
  MoveCorresponding: () => MoveCorresponding,
  Multiply: () => Multiply,
  NewLine: () => NewLine,
  NewPage: () => NewPage,
  Nodes: () => Nodes,
  OnChange: () => OnChange,
  OpenCursor: () => OpenCursor,
  OpenDataset: () => OpenDataset,
  Overlay: () => Overlay,
  Pack: () => Pack,
  Parameter: () => Parameter,
  Perform: () => Perform,
  Position: () => Position2,
  PrintControl: () => PrintControl,
  Private: () => Private,
  ProcessAfterInput: () => ProcessAfterInput,
  ProcessBeforeOutput: () => ProcessBeforeOutput,
  ProcessOnHelpRequest: () => ProcessOnHelpRequest,
  ProcessOnValueRequest: () => ProcessOnValueRequest,
  Program: () => Program,
  Protected: () => Protected,
  Provide: () => Provide,
  Public: () => Public,
  Put: () => Put,
  Raise: () => Raise,
  RaiseEntityEvent: () => RaiseEntityEvent,
  RaiseEvent: () => RaiseEvent,
  Ranges: () => Ranges,
  ReadDataset: () => ReadDataset,
  ReadEntities: () => ReadEntities,
  ReadLine: () => ReadLine,
  ReadReport: () => ReadReport,
  ReadTable: () => ReadTable,
  ReadTextpool: () => ReadTextpool,
  Receive: () => Receive,
  Refresh: () => Refresh,
  RefreshControl: () => RefreshControl,
  Reject: () => Reject,
  Replace: () => Replace,
  Report: () => Report,
  Reserve: () => Reserve,
  Resume: () => Resume,
  Retry: () => Retry,
  Return: () => Return,
  Rollback: () => Rollback,
  RollbackEntities: () => RollbackEntities,
  Scan: () => Scan,
  ScrollList: () => ScrollList,
  Search: () => Search,
  Select: () => Select2,
  SelectLoop: () => SelectLoop2,
  SelectOption: () => SelectOption,
  SelectionScreen: () => SelectionScreen,
  SetBit: () => SetBit,
  SetBlank: () => SetBlank,
  SetCountry: () => SetCountry,
  SetCursor: () => SetCursor,
  SetDataset: () => SetDataset,
  SetExtendedCheck: () => SetExtendedCheck,
  SetHandler: () => SetHandler,
  SetLanguage: () => SetLanguage,
  SetLeft: () => SetLeft,
  SetLocale: () => SetLocale,
  SetLocks: () => SetLocks,
  SetMargin: () => SetMargin,
  SetPFStatus: () => SetPFStatus,
  SetParameter: () => SetParameter,
  SetProperty: () => SetProperty,
  SetRunTime: () => SetRunTime,
  SetScreen: () => SetScreen,
  SetTitlebar: () => SetTitlebar,
  SetUpdateTask: () => SetUpdateTask,
  SetUserCommand: () => SetUserCommand,
  Shift: () => Shift,
  Skip: () => Skip,
  Sort: () => Sort,
  SortDataset: () => SortDataset,
  Split: () => Split,
  StartOfSelection: () => StartOfSelection,
  Static: () => Static,
  StaticBegin: () => StaticBegin,
  StaticEnd: () => StaticEnd,
  Stop: () => Stop,
  Submit: () => Submit,
  Subtract: () => Subtract,
  SubtractCorresponding: () => SubtractCorresponding,
  Sum: () => Sum,
  Summary: () => Summary,
  Supply: () => Supply,
  SuppressDialog: () => SuppressDialog,
  SyntaxCheck: () => SyntaxCheck,
  SystemCall: () => SystemCall,
  Tables: () => Tables,
  TestInjection: () => TestInjection,
  TestSeam: () => TestSeam,
  TopOfPage: () => TopOfPage,
  Transfer: () => Transfer,
  Translate: () => Translate,
  TruncateDataset: () => TruncateDataset,
  Try: () => Try,
  Type: () => Type2,
  TypeBegin: () => TypeBegin,
  TypeEnd: () => TypeEnd,
  TypeEnum: () => TypeEnum,
  TypeEnumBegin: () => TypeEnumBegin,
  TypeEnumEnd: () => TypeEnumEnd,
  TypeMesh: () => TypeMesh,
  TypeMeshBegin: () => TypeMeshBegin,
  TypeMeshEnd: () => TypeMeshEnd,
  TypePool: () => TypePool,
  TypePools: () => TypePools,
  Uline: () => Uline,
  Unassign: () => Unassign,
  Unpack: () => Unpack,
  UpdateDatabase: () => UpdateDatabase,
  VerificationMessage: () => VerificationMessage,
  Wait: () => Wait,
  When: () => When,
  WhenOthers: () => WhenOthers,
  WhenType: () => WhenType,
  While: () => While,
  Window: () => Window,
  With: () => With,
  WithLoop: () => WithLoop,
  Write: () => Write
});

// ../core/src/abap/1_lexer/tokens/index.ts
var tokens_exports = {};
__export(tokens_exports, {
  At: () => At,
  AtW: () => AtW,
  BracketLeft: () => BracketLeft,
  BracketLeftW: () => BracketLeftW,
  BracketRight: () => BracketRight,
  BracketRightW: () => BracketRightW,
  Colon: () => Colon,
  Comment: () => Comment,
  Dash: () => Dash,
  DashW: () => DashW,
  Identifier: () => Identifier,
  InstanceArrow: () => InstanceArrow,
  InstanceArrowW: () => InstanceArrowW,
  ParenLeft: () => ParenLeft,
  ParenLeftW: () => ParenLeftW,
  ParenRight: () => ParenRight,
  ParenRightW: () => ParenRightW,
  Plus: () => Plus,
  PlusW: () => PlusW,
  Pragma: () => Pragma,
  Punctuation: () => Punctuation,
  StaticArrow: () => StaticArrow,
  StaticArrowW: () => StaticArrowW,
  StringTemplate: () => StringTemplate,
  StringTemplateBegin: () => StringTemplateBegin,
  StringTemplateEnd: () => StringTemplateEnd,
  StringTemplateMiddle: () => StringTemplateMiddle,
  StringToken: () => StringToken,
  WAt: () => WAt,
  WAtW: () => WAtW,
  WBracketLeft: () => WBracketLeft,
  WBracketLeftW: () => WBracketLeftW,
  WBracketRight: () => WBracketRight,
  WBracketRightW: () => WBracketRightW,
  WDash: () => WDash,
  WDashW: () => WDashW,
  WInstanceArrow: () => WInstanceArrow,
  WInstanceArrowW: () => WInstanceArrowW,
  WParenLeft: () => WParenLeft,
  WParenLeftW: () => WParenLeftW,
  WParenRight: () => WParenRight,
  WParenRightW: () => WParenRightW,
  WPlus: () => WPlus,
  WPlusW: () => WPlusW,
  WStaticArrow: () => WStaticArrow,
  WStaticArrowW: () => WStaticArrowW
});

// ../core/src/position.ts
var Position = class {
  constructor(row, col) {
    this.row = row;
    this.col = col;
  }
  getCol() {
    return this.col;
  }
  getRow() {
    return this.row;
  }
  isAfter(p) {
    return this.row > p.row || this.row === p.row && this.col >= p.col;
  }
  equals(p) {
    return this.row === p.getRow() && this.col === p.getCol();
  }
  isBefore(p) {
    return this.row < p.row || this.row === p.row && this.col < p.col;
  }
  isBetween(p1, p2) {
    return this.isAfter(p1) && this.isBefore(p2);
  }
};

// ../core/src/abap/1_lexer/tokens/abstract_token.ts
var AbstractToken = class {
  constructor(start, str2) {
    this.start = start;
    this.str = str2;
    this.strUpper = str2.toUpperCase();
  }
  // special function, for debugging purposes, see https://github.com/abaplint/abaplint/pull/3137
  [/* @__PURE__ */ Symbol.for("debug.description")]() {
    return `${this.constructor.name} ${this.str}`;
  }
  getStr() {
    return this.str;
  }
  getUpperStr() {
    return this.strUpper;
  }
  getRow() {
    return this.start.getRow();
  }
  getCol() {
    return this.start.getCol();
  }
  getStart() {
    return this.start;
  }
  getEnd() {
    return new Position(this.start.getRow(), this.start.getCol() + this.str.length);
  }
};

// ../core/src/abap/1_lexer/tokens/at.ts
var At = class extends AbstractToken {
  static railroad() {
    return "@";
  }
};

// ../core/src/abap/1_lexer/tokens/atw.ts
var AtW = class extends AbstractToken {
  static railroad() {
    return "@ ";
  }
};

// ../core/src/abap/1_lexer/tokens/wat.ts
var WAt = class extends AbstractToken {
  static railroad() {
    return " @";
  }
};

// ../core/src/abap/1_lexer/tokens/watw.ts
var WAtW = class extends AbstractToken {
  static railroad() {
    return " @ ";
  }
};

// ../core/src/abap/1_lexer/tokens/bracket_left.ts
var BracketLeft = class extends AbstractToken {
  static railroad() {
    return "[";
  }
};

// ../core/src/abap/1_lexer/tokens/wbracket_left.ts
var WBracketLeft = class extends AbstractToken {
  static railroad() {
    return " [";
  }
};

// ../core/src/abap/1_lexer/tokens/bracket_leftw.ts
var BracketLeftW = class extends AbstractToken {
  static railroad() {
    return "[ ";
  }
};

// ../core/src/abap/1_lexer/tokens/wbracket_leftw.ts
var WBracketLeftW = class extends AbstractToken {
  static railroad() {
    return " [ ";
  }
};

// ../core/src/abap/1_lexer/tokens/bracket_right.ts
var BracketRight = class extends AbstractToken {
  static railroad() {
    return "]";
  }
};

// ../core/src/abap/1_lexer/tokens/wbracket_right.ts
var WBracketRight = class extends AbstractToken {
  static railroad() {
    return " ]";
  }
};

// ../core/src/abap/1_lexer/tokens/bracket_rightw.ts
var BracketRightW = class extends AbstractToken {
  static railroad() {
    return "] ";
  }
};

// ../core/src/abap/1_lexer/tokens/wbracket_rightw.ts
var WBracketRightW = class extends AbstractToken {
  static railroad() {
    return " ] ";
  }
};

// ../core/src/abap/1_lexer/tokens/instance_arrow.ts
var InstanceArrow = class extends AbstractToken {
  static railroad() {
    return "->";
  }
};

// ../core/src/abap/1_lexer/tokens/winstance_arrow.ts
var WInstanceArrow = class extends AbstractToken {
  static railroad() {
    return " ->";
  }
};

// ../core/src/abap/1_lexer/tokens/instance_arroww.ts
var InstanceArrowW = class extends AbstractToken {
  static railroad() {
    return "-> ";
  }
};

// ../core/src/abap/1_lexer/tokens/winstance_arroww.ts
var WInstanceArrowW = class extends AbstractToken {
  static railroad() {
    return " -> ";
  }
};

// ../core/src/abap/1_lexer/tokens/paren_left.ts
var ParenLeft = class extends AbstractToken {
  static railroad() {
    return "(";
  }
};

// ../core/src/abap/1_lexer/tokens/wparen_left.ts
var WParenLeft = class extends AbstractToken {
  static railroad() {
    return " (";
  }
};

// ../core/src/abap/1_lexer/tokens/paren_leftw.ts
var ParenLeftW = class extends AbstractToken {
  static railroad() {
    return "( ";
  }
};

// ../core/src/abap/1_lexer/tokens/wparen_leftw.ts
var WParenLeftW = class extends AbstractToken {
  static railroad() {
    return " ( ";
  }
};

// ../core/src/abap/1_lexer/tokens/paren_right.ts
var ParenRight = class extends AbstractToken {
  static railroad() {
    return ")";
  }
};

// ../core/src/abap/1_lexer/tokens/wparen_right.ts
var WParenRight = class extends AbstractToken {
  static railroad() {
    return " )";
  }
};

// ../core/src/abap/1_lexer/tokens/paren_rightw.ts
var ParenRightW = class extends AbstractToken {
  static railroad() {
    return ") ";
  }
};

// ../core/src/abap/1_lexer/tokens/wparen_rightw.ts
var WParenRightW = class extends AbstractToken {
  static railroad() {
    return " ) ";
  }
};

// ../core/src/abap/1_lexer/tokens/dash.ts
var Dash = class extends AbstractToken {
  static railroad() {
    return "-";
  }
};

// ../core/src/abap/1_lexer/tokens/wdash.ts
var WDash = class extends AbstractToken {
  static railroad() {
    return " -";
  }
};

// ../core/src/abap/1_lexer/tokens/dashw.ts
var DashW = class extends AbstractToken {
  static railroad() {
    return "- ";
  }
};

// ../core/src/abap/1_lexer/tokens/wdashw.ts
var WDashW = class extends AbstractToken {
  static railroad() {
    return " - ";
  }
};

// ../core/src/abap/1_lexer/tokens/plus.ts
var Plus = class extends AbstractToken {
  static railroad() {
    return "+";
  }
};

// ../core/src/abap/1_lexer/tokens/wplus.ts
var WPlus = class extends AbstractToken {
  static railroad() {
    return " +";
  }
};

// ../core/src/abap/1_lexer/tokens/plusw.ts
var PlusW = class extends AbstractToken {
  static railroad() {
    return "+ ";
  }
};

// ../core/src/abap/1_lexer/tokens/wplusw.ts
var WPlusW = class extends AbstractToken {
  static railroad() {
    return " + ";
  }
};

// ../core/src/abap/1_lexer/tokens/static_arrow.ts
var StaticArrow = class extends AbstractToken {
  static railroad() {
    return "=>";
  }
};

// ../core/src/abap/1_lexer/tokens/wstatic_arrow.ts
var WStaticArrow = class extends AbstractToken {
  static railroad() {
    return " =>";
  }
};

// ../core/src/abap/1_lexer/tokens/static_arroww.ts
var StaticArrowW = class extends AbstractToken {
  static railroad() {
    return "=> ";
  }
};

// ../core/src/abap/1_lexer/tokens/wstatic_arroww.ts
var WStaticArrowW = class extends AbstractToken {
  static railroad() {
    return " => ";
  }
};

// ../core/src/abap/1_lexer/tokens/string.ts
var StringToken = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/string_template.ts
var StringTemplate = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/string_template_begin.ts
var StringTemplateBegin = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/string_template_end.ts
var StringTemplateEnd = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/string_template_middle.ts
var StringTemplateMiddle = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/colon.ts
var Colon = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/comment.ts
var Comment = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/identifier.ts
var Identifier = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/pragma.ts
var Pragma = class extends AbstractToken {
};

// ../core/src/abap/1_lexer/tokens/punctuation.ts
var Punctuation = class extends AbstractToken {
};

// ../core/src/abap/nodes/token_node.ts
var TokenNode = class {
  constructor(token) {
    this.token = token;
  }
  addChild(_n) {
    throw new Error("TokenNode, Method not implemented.");
  }
  setChildren(_children) {
    throw new Error("TokenNode, Method not implemented.");
  }
  getChildren() {
    return [];
  }
  concatTokens() {
    return this.token.getStr();
  }
  get() {
    return this.token;
  }
  countTokens() {
    return 1;
  }
  getFirstToken() {
    return this.token;
  }
  getLastToken() {
    return this.token;
  }
};

// ../core/src/abap/nodes/_abstract_node.ts
var AbstractNode = class {
  constructor() {
    this.children = [];
  }
  addChild(n) {
    this.children.push(n);
  }
  setChildren(children) {
    this.children = children;
  }
  getChildren() {
    return this.children;
  }
  getFirstChild() {
    return this.children[0];
  }
  getLastChild() {
    return this.children[this.children.length - 1];
  }
};

// ../core/src/abap/nodes/expression_node.ts
var ExpressionNode = class _ExpressionNode extends AbstractNode {
  constructor(expression) {
    super();
    this.expression = expression;
  }
  get() {
    return this.expression;
  }
  countTokens() {
    let ret = 0;
    for (const c of this.getChildren()) {
      ret = ret + c.countTokens();
    }
    return ret;
  }
  getFirstToken() {
    for (const child of this.getChildren()) {
      return child.getFirstToken();
    }
    throw new Error("ExpressionNode, getFirstToken, no children");
  }
  concatTokensWithLinebreaks() {
    let str2 = "";
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Pragma) {
        continue;
      }
      if (str2 === "") {
        str2 = token.getStr();
      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {
        str2 = str2 + token.getStr();
      } else {
        if (prev && prev.getRow() !== token.getRow()) {
          str2 = str2 + "\n" + token.getStr();
        } else {
          str2 = str2 + " " + token.getStr();
        }
      }
      prev = token;
    }
    return str2;
  }
  concatTokens() {
    let str2 = "";
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Pragma) {
        continue;
      }
      if (str2 === "") {
        str2 = token.getStr();
      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {
        str2 = str2 + token.getStr();
      } else {
        str2 = str2 + " " + token.getStr();
      }
      prev = token;
    }
    return str2;
  }
  concatTokensWithoutStringsAndComments() {
    let str2 = "";
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Comment || token instanceof StringToken || token instanceof StringTemplate || token instanceof StringTemplateBegin || token instanceof StringTemplateMiddle || token instanceof StringTemplateEnd) {
        continue;
      }
      if (str2 === "") {
        str2 = token.getStr();
      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {
        str2 = str2 + token.getStr();
      } else {
        str2 = str2 + " " + token.getStr();
      }
      prev = token;
    }
    return str2;
  }
  // todo: delete this method?, its slow
  getTokens() {
    const tokens = [];
    for (const c of this.getChildren()) {
      tokens.push(...this.toTokens(c));
    }
    return tokens;
  }
  toTokens(b) {
    const tokens = [];
    if (b instanceof TokenNode) {
      tokens.push(b.get());
      return tokens;
    }
    for (const c of b.getChildren()) {
      if (c instanceof TokenNode) {
        tokens.push(c.get());
      } else {
        tokens.push(...this.toTokens(c));
      }
    }
    return tokens;
  }
  getLastToken() {
    const child = this.getLastChild();
    if (child) {
      return child.getLastToken();
    }
    throw new Error("ExpressionNode, getLastToken, no children");
  }
  getAllTokens() {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        ret.push(child.get());
      } else {
        ret.push(...child.getAllTokens());
      }
    }
    return ret;
  }
  getDirectTokens() {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        ret.push(child.get());
      }
    }
    return ret;
  }
  findDirectExpression(type) {
    for (const child of this.getChildren()) {
      if (child instanceof _ExpressionNode && child.get() instanceof type) {
        return child;
      }
    }
    return void 0;
  }
  findExpressionAfterToken(text) {
    const children = this.getChildren();
    for (let i = 0; i < children.length - 1; i++) {
      const c = children[i];
      const next = children[i + 1];
      if (c instanceof TokenNode && c.get().getStr().toUpperCase() === text.toUpperCase() && next instanceof _ExpressionNode) {
        return next;
      }
    }
    return void 0;
  }
  findDirectExpressions(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof _ExpressionNode && child.get() instanceof type) {
        ret.push(child);
      }
    }
    return ret;
  }
  findDirectExpressionsMulti(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof _ExpressionNode) {
        for (const t of type) {
          if (child.get() instanceof t) {
            ret.push(child);
            break;
          }
        }
      }
    }
    return ret;
  }
  findDirectTokenByText(text) {
    const search = text.toUpperCase();
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode && child.get().getStr().toUpperCase() === search) {
        return child.get();
      }
    }
    return void 0;
  }
  findAllExpressionsRecursive(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      } else if (child.get() instanceof type) {
        ret.push(child);
      }
      ret.push(...child.findAllExpressionsRecursive(type));
    }
    return ret;
  }
  findAllExpressions(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      } else if (child.get() instanceof type) {
        ret.push(child);
      } else {
        ret.push(...child.findAllExpressions(type));
      }
    }
    return ret;
  }
  findAllExpressionsMulti(type, recursive = false) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      }
      const before = ret.length;
      for (const t of type) {
        if (child.get() instanceof t) {
          ret.push(child);
        }
      }
      if (before === ret.length || recursive === true) {
        ret.push(...child.findAllExpressionsMulti(type, recursive));
      }
    }
    return ret;
  }
  findFirstExpression(type) {
    if (this.get() instanceof type) {
      return this;
    }
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      } else if (child.get() instanceof type) {
        return child;
      } else {
        const res = child.findFirstExpression(type);
        if (res) {
          return res;
        }
      }
    }
    return void 0;
  }
};

// ../core/src/abap/nodes/statement_node.ts
var StatementNode = class extends AbstractNode {
  constructor(statement, colon, pragmas) {
    super();
    this.statement = statement;
    this.colon = colon;
    if (pragmas) {
      this.pragmas = pragmas;
    } else {
      this.pragmas = [];
    }
  }
  get() {
    return this.statement;
  }
  getColon() {
    return this.colon;
  }
  getPragmas() {
    return this.pragmas;
  }
  setChildren(children) {
    if (children.length === 0) {
      throw new Error("statement: zero children");
    }
    this.children = children;
    return this;
  }
  getStart() {
    return this.getFirstToken().getStart();
  }
  getEnd() {
    const last = this.getLastToken();
    return last.getEnd();
  }
  getTokens() {
    const tokens = [];
    for (const c of this.getChildren()) {
      tokens.push(...this.toTokens(c));
    }
    return tokens;
  }
  includesToken(search) {
    for (const t of this.getTokens()) {
      if (t.getStart().equals(search.getStart())) {
        return true;
      }
    }
    return false;
  }
  getTokenNodes() {
    const tokens = [];
    for (const c of this.getChildren()) {
      tokens.push(...this.toTokenNodess(c));
    }
    return tokens;
  }
  concatTokens() {
    let str2 = "";
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Pragma) {
        continue;
      }
      if (str2 === "") {
        str2 = token.getStr();
      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {
        str2 = str2 + token.getStr();
      } else {
        str2 = str2 + " " + token.getStr();
      }
      prev = token;
    }
    return str2;
  }
  concatTokensVirtual() {
    let str2 = "";
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Pragma) {
        continue;
      }
      const vprev = prev?.getStart();
      const vtoke = token?.getStart();
      if (str2 === "") {
        str2 = token.getStr();
      } else if (prev && vprev && vtoke && prev.getStr().length + vprev.vcol === vtoke.vcol && vprev.vrow === vtoke.vrow) {
        str2 = str2 + token.getStr();
      } else {
        str2 = str2 + " " + token.getStr();
      }
      prev = token;
    }
    return str2;
  }
  concatTokensWithoutStringsAndComments() {
    let str2 = "";
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Comment || token instanceof StringToken || token instanceof StringTemplate || token instanceof StringTemplateBegin || token instanceof StringTemplateMiddle || token instanceof StringTemplateEnd) {
        continue;
      }
      if (str2 === "") {
        str2 = token.getStr();
      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {
        str2 = str2 + token.getStr();
      } else {
        str2 = str2 + " " + token.getStr();
      }
      prev = token;
    }
    return str2;
  }
  getTerminator() {
    return this.getLastToken().getStr();
  }
  getFirstToken() {
    for (const child of this.getChildren()) {
      return child.getFirstToken();
    }
    throw new Error("StatementNode, getFirstToken, no children, " + this.get().constructor.name);
  }
  getLastToken() {
    const child = this.getLastChild();
    if (child !== void 0) {
      return child.getLastToken();
    }
    throw new Error("StatementNode, getLastToken, no children");
  }
  findDirectExpression(type) {
    for (const child of this.getChildren()) {
      if (child instanceof ExpressionNode && child.get() instanceof type) {
        return child;
      }
    }
    return void 0;
  }
  findDirectExpressions(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof ExpressionNode && child.get() instanceof type) {
        ret.push(child);
      }
    }
    return ret;
  }
  findDirectExpressionsMulti(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof ExpressionNode && type.some((t) => child.get() instanceof t)) {
        ret.push(child);
      }
    }
    return ret;
  }
  findDirectTokenByText(text) {
    const upper = text.toUpperCase();
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode && child.get().getStr().toUpperCase() === upper) {
        return child.get();
      }
    }
    return void 0;
  }
  findFirstExpression(type) {
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      } else if (child.get() instanceof type) {
        return child;
      } else {
        const res = child.findFirstExpression(type);
        if (res) {
          return res;
        }
      }
    }
    return void 0;
  }
  findAllExpressions(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      } else if (child.get() instanceof type) {
        ret.push(child);
      } else {
        ret.push(...child.findAllExpressions(type));
      }
    }
    return ret;
  }
  findAllExpressionsRecursive(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      } else if (child.get() instanceof type) {
        ret.push(child);
      }
      ret.push(...child.findAllExpressionsRecursive(type));
    }
    return ret;
  }
  findAllExpressionsMulti(type, recursive = false) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof TokenNode) {
        continue;
      }
      const before = ret.length;
      for (const t of type) {
        if (child.get() instanceof t) {
          ret.push(child);
        }
      }
      if (before === ret.length || recursive === true) {
        ret.push(...child.findAllExpressionsMulti(type, recursive));
      }
    }
    return ret;
  }
  /**
   * Returns the Position of the first token if the sequence is found,
   * otherwise undefined. Strings and Comments are ignored in this search.
   * @param first - Text of the first Token
   * @param second - Text of the second Token
   */
  findTokenSequencePosition(first, second) {
    let prev;
    for (const token of this.getTokens()) {
      if (token instanceof Comment || token instanceof StringToken || token instanceof StringTemplate || token instanceof StringTemplateBegin || token instanceof StringTemplateMiddle || token instanceof StringTemplateEnd) {
        continue;
      }
      if (prev && token.getStr().toUpperCase() === second && prev?.getStr().toUpperCase() === first.toUpperCase()) {
        return prev.getStart();
      } else {
        prev = token;
      }
    }
    return void 0;
  }
  findExpressionAfterToken(text) {
    const children = this.getChildren();
    for (let i = 0; i < children.length - 1; i++) {
      const c = children[i];
      const next = children[i + 1];
      if (c instanceof TokenNode && c.get().getStr().toUpperCase() === text.toUpperCase() && next instanceof ExpressionNode) {
        return next;
      }
    }
    return void 0;
  }
  findExpressionsAfterToken(text) {
    const children = this.getChildren();
    const ret = [];
    for (let i = 0; i < children.length - 1; i++) {
      const c = children[i];
      const next = children[i + 1];
      if (c instanceof TokenNode && c.get().getStr().toUpperCase() === text.toUpperCase() && next instanceof ExpressionNode) {
        ret.push(next);
      }
    }
    return ret;
  }
  ////////////////////////////////
  toTokens(b) {
    const tokens = [];
    if (b instanceof TokenNode) {
      tokens.push(b.get());
      return tokens;
    }
    for (const c of b.getChildren()) {
      if (c instanceof TokenNode) {
        tokens.push(c.get());
      } else {
        tokens.push(...this.toTokens(c));
      }
    }
    return tokens;
  }
  toTokenNodess(b) {
    const tokens = [];
    if (b instanceof TokenNode) {
      tokens.push(b);
      return tokens;
    }
    for (const c of b.getChildren()) {
      if (c instanceof TokenNode) {
        tokens.push(c);
      } else {
        tokens.push(...this.toTokenNodess(c));
      }
    }
    return tokens;
  }
};

// ../core/src/abap/nodes/structure_node.ts
var StructureNode = class _StructureNode extends AbstractNode {
  constructor(structure) {
    super();
    this.structure = structure;
  }
  get() {
    return this.structure;
  }
  // todo, remove this method, the logic should never go up in the tree
  findParent(node) {
    for (const child of this.getChildren()) {
      if (child === node) {
        return this;
      } else if (child instanceof StatementNode) {
        continue;
      } else {
        const res = child.findParent(node);
        if (res) {
          return res;
        }
      }
    }
    return void 0;
  }
  concatTokens() {
    let concat = "";
    for (const child of this.getChildren()) {
      concat = concat + child.concatTokens();
    }
    return concat;
  }
  findDirectStatement(type) {
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode && child.get() instanceof type) {
        return child;
      }
    }
    return void 0;
  }
  findDirectStatements(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode && child.get() instanceof type) {
        ret.push(child);
      }
    }
    return ret;
  }
  findDirectStructures(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof _StructureNode && child.get() instanceof type) {
        ret.push(child);
      }
    }
    return ret;
  }
  findFirstStatement(type) {
    for (const child of this.getChildren()) {
      if (child.get() instanceof type) {
        return child;
      } else if (child instanceof StatementNode) {
        continue;
      } else {
        const res = child.findFirstStatement(type);
        if (res) {
          return res;
        }
      }
    }
    return void 0;
  }
  findFirstExpression(type) {
    for (const child of this.getChildren()) {
      const res = child.findFirstExpression(type);
      if (res) {
        return res;
      }
    }
    return void 0;
  }
  getFirstStatement() {
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        return child;
      }
      return child.getFirstStatement();
    }
    return void 0;
  }
  getFirstToken() {
    const child = this.getFirstChild();
    if (child !== void 0) {
      return child.getFirstToken();
    }
    throw new Error("StructureNode, getFirstToken, unexpected type");
  }
  getLastToken() {
    const child = this.getLastChild();
    if (child !== void 0) {
      return child.getLastToken();
    }
    throw new Error("StructureNode, getLastToken, unexpected type");
  }
  findAllExpressions(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      ret.push(...child.findAllExpressions(type));
    }
    return ret;
  }
  findAllExpressionsRecursive(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        ret.push(...child.findAllExpressionsRecursive(type));
      } else {
        ret.push(...child.findAllExpressionsRecursive(type));
      }
    }
    return ret;
  }
  findAllExpressionsMulti(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      ret.push(...child.findAllExpressionsMulti(type));
    }
    return ret;
  }
  findAllStatements(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof _StructureNode) {
        ret.push(...child.findAllStatements(type));
      } else if (child.get() instanceof type) {
        ret.push(child);
      }
    }
    return ret;
  }
  findAllStatementNodes() {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        ret.push(child);
      } else {
        ret.push(...child.findAllStatementNodes());
      }
    }
    return ret;
  }
  findAllStructuresRecursive(type) {
    const ret = [];
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        continue;
      } else if (child.get() instanceof type) {
        ret.push(child);
      }
      ret.push(...child.findAllStructuresRecursive(type));
    }
    return ret;
  }
  findAllStructuresMulti(type) {
    const ret = [];
    for (const t of type) {
      if (this.get() instanceof t) {
        return [this];
      }
    }
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        continue;
      }
      let found = false;
      for (const t of type) {
        if (this.get() instanceof t) {
          ret.push(child);
          found = true;
        }
      }
      if (found === false) {
        ret.push(...child.findAllStructuresMulti(type));
      }
    }
    return ret;
  }
  findAllStructures(type) {
    const ret = [];
    if (this.get() instanceof type) {
      return [this];
    }
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        continue;
      } else if (child.get() instanceof type) {
        ret.push(child);
      } else {
        ret.push(...child.findAllStructures(type));
      }
    }
    return ret;
  }
  findDirectStructure(type) {
    if (this.get() instanceof type) {
      return this;
    }
    for (const child of this.getChildren()) {
      if (child.get() instanceof type) {
        return child;
      }
    }
    return void 0;
  }
  findFirstStructure(type) {
    if (this.get() instanceof type) {
      return this;
    }
    for (const child of this.getChildren()) {
      if (child instanceof StatementNode) {
        continue;
      } else if (child.get() instanceof type) {
        return child;
      } else {
        const res = child.findFirstStructure(type);
        if (res) {
          return res;
        }
      }
    }
    return void 0;
  }
};

// ../core/src/abap/nodes/token_node_regex.ts
var TokenNodeRegex = class extends TokenNode {
};

// ../core/src/abap/2_statements/result.ts
var Result = class _Result {
  constructor(tokens, tokenIndex, nodes) {
    this.tokens = tokens;
    this.tokenIndex = tokenIndex;
    this.nodes = nodes;
    if (this.nodes === void 0) {
      this.nodes = [];
    }
  }
  peek() {
    return this.tokens[this.tokenIndex];
  }
  shift(node) {
    const cp = this.nodes.slice();
    cp.push(node);
    return new _Result(this.tokens, this.tokenIndex + 1, cp);
  }
  popNode() {
    return this.nodes.pop();
  }
  getNodes() {
    return this.nodes;
  }
  setNodes(n) {
    this.nodes = n;
  }
  remainingLength() {
    return this.tokens.length - this.tokenIndex;
  }
};

// ../core/src/abap/2_statements/combi.ts
var Regex = class {
  constructor(r) {
    this.regexp = r;
  }
  listKeywords() {
    return [];
  }
  getUsing() {
    return [];
  }
  run(r) {
    const result = [];
    for (const input of r) {
      if (input.remainingLength() === 0) {
        continue;
      }
      const token = input.peek();
      if (this.regexp.test(token.getStr()) === true) {
        result.push(input.shift(new TokenNodeRegex(token)));
      }
    }
    return result;
  }
  railroad() {
    return 'Railroad.Terminal("' + this.regexp.source.replace(/\\/g, "\\\\") + '")';
  }
  toStr() {
    return this.regexp.toString();
  }
  first() {
    return [""];
  }
};
var Word = class {
  constructor(s) {
    this.s = s.toUpperCase();
  }
  listKeywords() {
    return [this.s];
  }
  getUsing() {
    return [];
  }
  run(r) {
    const result = [];
    for (const input of r) {
      if (input.remainingLength() !== 0 && input.peek().getUpperStr() === this.s) {
        result.push(input.shift(new TokenNode(input.peek())));
      }
    }
    return result;
  }
  railroad() {
    return `Railroad.Terminal('"` + this.s + `"')`;
  }
  toStr() {
    return '"' + this.s + '"';
  }
  first() {
    return [this.s];
  }
};
var Token = class {
  constructor(s) {
    this.name = s;
  }
  listKeywords() {
    return [];
  }
  getUsing() {
    return [];
  }
  run(r) {
    const result = [];
    for (const input of r) {
      if (input.remainingLength() !== 0 && input.peek().constructor.name === this.name) {
        result.push(input.shift(new TokenNode(input.peek())));
      }
    }
    return result;
  }
  railroad() {
    let text = this.name;
    const toke = tokens_exports;
    for (const token in tokens_exports) {
      if (token.toUpperCase() === this.name && toke[token].railroad) {
        text = toke[token].railroad();
        break;
      }
    }
    return `Railroad.Terminal('!"` + text + `"')`;
  }
  toStr() {
    return 'Token "' + this.name + '"';
  }
  first() {
    return [""];
  }
};
var Vers = class {
  constructor(version, runnable, or) {
    this.version = version;
    this.runnable = runnable;
    this.or = or;
  }
  listKeywords() {
    return this.runnable.listKeywords();
  }
  run(r) {
    const targetVersion = Combi.getVersion();
    if (this.or && targetVersion === this.or) {
      return this.runnable.run(r);
    } else if (targetVersion === "open-abap" /* OpenABAP */) {
      if (this.version > "v702" /* v702 */) {
        return [];
      } else {
        return this.runnable.run(r);
      }
    } else if (targetVersion !== "Cloud" /* Cloud */ && this.version !== "Cloud" /* Cloud */ && targetVersion >= this.version || targetVersion === "Cloud" /* Cloud */) {
      return this.runnable.run(r);
    } else {
      return [];
    }
  }
  getUsing() {
    return this.runnable.getUsing();
  }
  railroad() {
    let text = this.version;
    if (this.or) {
      text += " or " + this.or;
    }
    return 'Railroad.Sequence(Railroad.Comment("' + text + '", {}), ' + this.runnable.railroad() + ")";
  }
  toStr() {
    return "Version(" + this.runnable.toStr() + ")";
  }
  first() {
    return this.runnable.first();
  }
};
var VersNot = class {
  constructor(version, runnable) {
    this.version = version;
    this.runnable = runnable;
  }
  listKeywords() {
    return this.runnable.listKeywords();
  }
  getUsing() {
    return this.runnable.getUsing();
  }
  run(r) {
    if (Combi.getVersion() !== this.version) {
      return this.runnable.run(r);
    } else {
      return [];
    }
  }
  railroad() {
    return 'Railroad.Sequence(Railroad.Comment("not ' + this.version + '", {}), ' + this.runnable.railroad() + ")";
  }
  toStr() {
    return "VersionNot(" + this.runnable.toStr() + ")";
  }
  first() {
    return this.runnable.first();
  }
};
var OptionalPriority = class {
  constructor(optional) {
    this.optional = optional;
  }
  listKeywords() {
    return this.optional.listKeywords();
  }
  getUsing() {
    return this.optional.getUsing();
  }
  run(r) {
    const result = [];
    for (const input of r) {
      const res = this.optional.run([input]);
      if (res.length > 1) {
        result.push(...res);
      } else if (res.length === 0) {
        result.push(input);
      } else if (res[0].remainingLength() < input.remainingLength()) {
        result.push(...res);
      } else {
        result.push(input);
      }
    }
    return result;
  }
  railroad() {
    return "Railroad.Optional(" + this.optional.railroad() + ")";
  }
  toStr() {
    return "opt(" + this.optional.toStr() + ")";
  }
  first() {
    return [""];
  }
};
var Optional = class {
  constructor(optional) {
    this.optional = optional;
  }
  listKeywords() {
    return this.optional.listKeywords();
  }
  getUsing() {
    return this.optional.getUsing();
  }
  run(r) {
    const result = [];
    for (const input of r) {
      result.push(input);
      const res = this.optional.run([input]);
      result.push(...res);
    }
    return result;
  }
  railroad() {
    return "Railroad.Optional(" + this.optional.railroad() + ")";
  }
  toStr() {
    return "opt(" + this.optional.toStr() + ")";
  }
  first() {
    return [""];
  }
};
var Star = class {
  constructor(sta2) {
    this.sta = sta2;
  }
  listKeywords() {
    return this.sta.listKeywords();
  }
  getUsing() {
    return this.sta.getUsing();
  }
  run(r) {
    let result = r;
    try {
      let res = r;
      let input = [];
      for (; ; ) {
        input = res;
        res = this.sta.run(input);
        if (res.length === 0) {
          break;
        }
        if (res.length > 1e3) {
          result = result.concat(res);
        } else {
          result.push(...res);
        }
      }
    } catch (err) {
      if (err instanceof FailStarError) {
        return result;
      }
      throw err;
    }
    return result;
  }
  railroad() {
    return "Railroad.ZeroOrMore(" + this.sta.railroad() + ")";
  }
  toStr() {
    return "star(" + this.sta.toStr() + ")";
  }
  first() {
    return [""];
  }
};
var StarPriority = class {
  constructor(sta2) {
    this.sta = sta2;
  }
  listKeywords() {
    return this.sta.listKeywords();
  }
  getUsing() {
    return this.sta.getUsing();
  }
  run(r) {
    let result = r;
    let res = r;
    let prev;
    for (; ; ) {
      res = this.sta.run(res);
      if (res.length === 0) {
        if (prev !== void 0) {
          let best = Number.MAX_SAFE_INTEGER;
          for (const p of prev) {
            if (p.remainingLength() < best) {
              result = [p];
              best = p.remainingLength();
            }
          }
        }
        break;
      }
      prev = res;
    }
    return result;
  }
  railroad() {
    return "Railroad.ZeroOrMore(" + this.sta.railroad() + ")";
  }
  toStr() {
    return "star(" + this.sta.toStr() + ")";
  }
  first() {
    return [""];
  }
};
var Plus2 = class {
  constructor(plu) {
    this.plu = plu;
    this.sub = new Sequence([this.plu, new Star(this.plu)]);
  }
  listKeywords() {
    return this.plu.listKeywords();
  }
  getUsing() {
    return this.plu.getUsing();
  }
  run(r) {
    return this.sub.run(r);
  }
  railroad() {
    return "Railroad.OneOrMore(" + this.plu.railroad() + ")";
  }
  toStr() {
    return "plus(" + this.plu.toStr() + ")";
  }
  first() {
    return this.plu.first();
  }
};
var PlusPriority = class {
  constructor(plu) {
    this.plu = plu;
    this.sub = new Sequence([this.plu, new StarPriority(this.plu)]);
  }
  listKeywords() {
    return this.plu.listKeywords();
  }
  getUsing() {
    return this.plu.getUsing();
  }
  run(r) {
    return this.sub.run(r);
  }
  railroad() {
    return "Railroad.OneOrMore(" + this.plu.railroad() + ")";
  }
  toStr() {
    return "plus(" + this.plu.toStr() + ")";
  }
  first() {
    return this.plu.first();
  }
};
var Sequence = class {
  constructor(list) {
    if (list.length < 2) {
      throw new Error("Sequence, length error");
    }
    this.list = list;
  }
  listKeywords() {
    const ret = [];
    for (const i of this.list) {
      ret.push(...i.listKeywords());
    }
    return ret;
  }
  getUsing() {
    return this.list.reduce((a, c) => {
      return a.concat(c.getUsing());
    }, []);
  }
  run(r) {
    let result = [];
    for (const input of r) {
      let temp = [input];
      let match = true;
      for (const sequence of this.list) {
        temp = sequence.run(temp);
        if (temp.length === 0) {
          match = false;
          break;
        }
      }
      if (match === true) {
        if (temp.length > 1e3) {
          result = result.concat(temp);
        } else {
          result.push(...temp);
        }
      }
    }
    return result;
  }
  railroad() {
    const children = this.list.map((e) => {
      return e.railroad();
    });
    return "Railroad.Sequence(" + children.join() + ")";
  }
  toStr() {
    let ret = "";
    for (const i of this.list) {
      ret = ret + i.toStr() + ",";
    }
    return "seq(" + ret + ")";
  }
  first() {
    return this.list[0].first();
  }
};
var WordSequence = class {
  constructor(stri) {
    this.words = [];
    this.stri = stri;
    const foo = this.stri.replace(/-/g, " - ");
    const split = foo.split(" ");
    for (const st of split) {
      this.words.push(new Word(st));
    }
    this.seq = new Sequence(this.words);
  }
  listKeywords() {
    return [this.stri.toString()];
  }
  getUsing() {
    return [];
  }
  run(r) {
    return this.seq.run(r);
  }
  railroad() {
    return `Railroad.Terminal('"` + this.stri + `"')`;
  }
  toStr() {
    return "str(" + this.stri + ")";
  }
  first() {
    return this.words[0].first();
  }
};
var Expression = class {
  constructor() {
    this.runnable = void 0;
  }
  run(r) {
    const results = [];
    if (this.runnable === void 0) {
      this.runnable = this.getRunnable();
    }
    for (const input of r) {
      const temp = this.runnable.run([input]);
      for (const t of temp) {
        let consumed = input.remainingLength() - t.remainingLength();
        if (consumed > 0) {
          const originalLength = t.getNodes().length;
          const children = [];
          while (consumed > 0) {
            const sub2 = t.popNode();
            if (sub2) {
              children.push(sub2);
              consumed = consumed - sub2.countTokens();
            }
          }
          const re = new ExpressionNode(this);
          re.setChildren(children.reverse());
          const n = t.getNodes().slice(0, originalLength - consumed);
          n.push(re);
          t.setNodes(n);
        }
        results.push(t);
      }
    }
    return results;
  }
  listKeywords() {
    return [];
  }
  getUsing() {
    return ["expression/" + this.getName()];
  }
  getName() {
    return this.constructor.name;
  }
  railroad() {
    return "Railroad.NonTerminal('" + this.getName() + "', {href: '#/expression/" + this.getName() + "'})";
  }
  toStr() {
    return "expression(" + this.getName() + ")";
  }
  first() {
    return this.getRunnable().first();
  }
};
var Permutation = class _Permutation {
  constructor(list) {
    if (list.length < 2) {
      throw new Error("Permutation, length error, got " + list.length);
    }
    this.list = list;
  }
  listKeywords() {
    const ret = [];
    for (const i of this.list) {
      ret.push(...i.listKeywords());
    }
    return ret;
  }
  getUsing() {
    return this.list.reduce((a, c) => {
      return a.concat(c.getUsing());
    }, []);
  }
  run(r) {
    const result = [];
    const copy = this.list.slice();
    for (let index = 0; index < this.list.length; index++) {
      const temp = this.list[index].run(r);
      if (temp.length !== 0) {
        result.push(...temp);
        const left = copy;
        left.splice(index, 1);
        if (left.length === 1) {
          result.push(...left[0].run(temp));
        } else {
          result.push(...new _Permutation(left).run(temp));
        }
      }
    }
    return result;
  }
  railroad() {
    const children = this.list.map((e) => {
      return e.railroad();
    });
    return "Railroad.MultipleChoice(0, 'any'," + children.join() + ")";
  }
  toStr() {
    const children = this.list.map((e) => {
      return e.toStr();
    });
    return "per(" + children.join() + ")";
  }
  first() {
    return [""];
  }
};
var FailCombinatorError = class extends Error {
};
var FailStarError = class extends Error {
};
var FailCombinator = class {
  listKeywords() {
    return [];
  }
  getUsing() {
    return [];
  }
  run(_r) {
    throw new FailCombinatorError();
  }
  railroad() {
    return "Railroad.Terminal('!FailCombinator')";
  }
  toStr() {
    return "fail()";
  }
  first() {
    return [];
  }
};
var FailStar = class {
  listKeywords() {
    return [];
  }
  getUsing() {
    return [];
  }
  run(_r) {
    throw new FailStarError();
  }
  railroad() {
    return "Railroad.Terminal('!FailStar')";
  }
  toStr() {
    return "fail()";
  }
  first() {
    return [];
  }
};
var Alternative = class {
  constructor(list) {
    if (list.length < 2) {
      throw new Error("Alternative, length error");
    }
    this.list = list;
  }
  listKeywords() {
    const ret = [];
    for (const i of this.list) {
      ret.push(...i.listKeywords());
    }
    return ret;
  }
  getUsing() {
    return this.list.reduce((a, c) => {
      return a.concat(c.getUsing());
    }, []);
  }
  run(r) {
    const result = [];
    for (const sequ of this.list) {
      const temp = sequ.run(r);
      result.push(...temp);
    }
    return result;
  }
  railroad() {
    const children = this.list.map((e) => {
      return e.railroad();
    });
    return "Railroad.Choice(0, " + children.join() + ")";
  }
  toStr() {
    let ret = "";
    for (const i of this.list) {
      ret = ret + i.toStr() + ",";
    }
    return "alt(" + ret + ")";
  }
  first() {
    if (this.list.length !== 2) {
      return [""];
    }
    const f1 = this.list[0].first();
    const f2 = this.list[1].first();
    if (f1.length === 1 && f1[0] === "") {
      return f1;
    }
    if (f2.length === 1 && f2[0] === "") {
      return f2;
    }
    if (f1.length === 1 && f2.length === 1 && f1[0] === f2[0]) {
      return f1;
    }
    f1.push(...f2);
    return f1;
  }
};
var AlternativePriority = class {
  constructor(list) {
    if (list.length < 2) {
      throw new Error("Alternative, length error");
    }
    this.list = list;
  }
  listKeywords() {
    const ret = [];
    for (const i of this.list) {
      ret.push(...i.listKeywords());
    }
    return ret;
  }
  getUsing() {
    return this.list.reduce((a, c) => {
      return a.concat(c.getUsing());
    }, []);
  }
  run(r) {
    const result = [];
    for (const sequ of this.list) {
      const temp = sequ.run(r);
      if (temp.length > 0) {
        result.push(...temp);
        break;
      }
    }
    return result;
  }
  railroad() {
    const children = this.list.map((e) => {
      return e.railroad();
    });
    return "Railroad.Choice(0, " + children.join() + ")";
  }
  toStr() {
    let ret = "";
    for (const i of this.list) {
      ret = ret + i.toStr() + ",";
    }
    return "alt(" + ret + ")";
  }
  first() {
    if (this.list.length !== 2) {
      return [""];
    }
    const f1 = this.list[0].first();
    const f2 = this.list[1].first();
    if (f1.length === 1 && f1[0] === "") {
      return f1;
    }
    if (f2.length === 1 && f2[0] === "") {
      return f2;
    }
    if (f1.length === 1 && f2.length === 1 && f1[0] === f2[0]) {
      return f1;
    }
    f1.push(...f2);
    return f1;
  }
};
var Combi = class {
  static railroad(runnable, complex = false) {
    let type = "Railroad.Diagram(";
    if (complex === true) {
      type = "Railroad.ComplexDiagram(";
    }
    const result = "Railroad.Diagram.INTERNAL_ALIGNMENT = 'left';\n" + type + runnable.railroad() + ").toString();";
    return result;
  }
  static listKeywords(runnable) {
    let res = runnable.listKeywords();
    res = res.filter((x, i, a) => {
      return a.indexOf(x) === i;
    });
    return res;
  }
  // assumption: no pragmas supplied in tokens input
  static run(runnable, tokens, version) {
    this.ver = version;
    const input = new Result(tokens, 0);
    try {
      const result = runnable.run([input]);
      for (const res of result) {
        if (res.remainingLength() === 0) {
          return res.getNodes();
        }
      }
    } catch (err) {
      if (err instanceof FailCombinatorError) {
        return void 0;
      }
      throw err;
    }
    return void 0;
  }
  static getVersion() {
    return this.ver;
  }
};
function str(s) {
  if (s.indexOf(" ") > 0 || s.indexOf("-") > 0) {
    return new WordSequence(s);
  } else {
    return new Word(s);
  }
}
function regex(r) {
  return new Regex(r);
}
function tok(t) {
  return new Token(t.name);
}
var expressionSingletons = {};
var stringSingletons = {};
function mapInput(s) {
  const type = typeof s;
  if (type === "string") {
    if (stringSingletons[s] === void 0) {
      stringSingletons[s] = str(s);
    }
    return stringSingletons[s];
  } else if (type === "function") {
    const name = s.name;
    if (expressionSingletons[name] === void 0) {
      expressionSingletons[name] = new s();
    }
    return expressionSingletons[name];
  } else {
    return s;
  }
}
function seq(first, second, ...rest) {
  const list = [mapInput(first), mapInput(second)];
  list.push(...rest.map(mapInput));
  return new Sequence(list);
}
function alt(first, second, ...rest) {
  const list = [mapInput(first), mapInput(second)];
  list.push(...rest.map(mapInput));
  return new Alternative(list);
}
function altPrio(first, second, ...rest) {
  const list = [mapInput(first), mapInput(second)];
  list.push(...rest.map(mapInput));
  return new AlternativePriority(list);
}
function opt(first) {
  return new Optional(mapInput(first));
}
function optPrio(first) {
  return new OptionalPriority(mapInput(first));
}
function per(first, second, ...rest) {
  const list = [mapInput(first), mapInput(second)];
  list.push(...rest.map(mapInput));
  return new Permutation(list);
}
function star(first) {
  return new Star(mapInput(first));
}
function starPrio(first) {
  return new StarPriority(mapInput(first));
}
function plus(first) {
  return new Plus2(mapInput(first));
}
function plusPrio(first) {
  return new PlusPriority(mapInput(first));
}
function ver(version, first, or) {
  return new Vers(version, mapInput(first), or);
}
function verNot(version, first) {
  return new VersNot(version, mapInput(first));
}
function failCombinator() {
  return new FailCombinator();
}
function failStar() {
  return new FailStar();
}

// ../core/src/abap/2_statements/expressions/index.ts
var expressions_exports = {};
__export(expressions_exports, {
  Abstract: () => Abstract,
  AbstractMethods: () => AbstractMethods,
  AndReturn: () => AndReturn,
  ArithOperator: () => ArithOperator,
  Arrow: () => Arrow,
  ArrowOrDash: () => ArrowOrDash,
  AssignSource: () => AssignSource,
  AssociationName: () => AssociationName,
  AttributeChain: () => AttributeChain,
  AttributeName: () => AttributeName,
  BehaviorDefinitionName: () => BehaviorDefinitionName,
  BlockName: () => BlockName,
  CallTransformationOptions: () => CallTransformationOptions,
  CallTransformationParameters: () => CallTransformationParameters,
  Cast: () => Cast,
  ClassFinal: () => ClassFinal,
  ClassFriends: () => ClassFriends,
  ClassGlobal: () => ClassGlobal,
  ClassName: () => ClassName,
  Color: () => Color,
  Compare: () => Compare,
  CompareOperator: () => CompareOperator,
  ComponentChain: () => ComponentChain,
  ComponentChainSimple: () => ComponentChainSimple,
  ComponentCompare: () => ComponentCompare,
  ComponentCompareSimple: () => ComponentCompareSimple,
  ComponentCompareSingle: () => ComponentCompareSingle,
  ComponentCond: () => ComponentCond,
  ComponentCondSub: () => ComponentCondSub,
  ComponentName: () => ComponentName,
  ConcatenatedConstant: () => ConcatenatedConstant,
  Cond: () => Cond,
  CondBody: () => CondBody,
  CondSub: () => CondSub,
  Constant: () => Constant,
  ConstantFieldLength: () => ConstantFieldLength,
  ConstantString: () => ConstantString,
  ConvBody: () => ConvBody,
  CorrespondingBody: () => CorrespondingBody,
  CorrespondingBodyBase: () => CorrespondingBodyBase,
  CorrespondingBodyMapping: () => CorrespondingBodyMapping,
  DataDefinition: () => DataDefinition,
  DatabaseConnection: () => DatabaseConnection,
  DatabaseTable: () => DatabaseTable,
  Decimals: () => Decimals,
  Default: () => Default,
  DefinitionName: () => DefinitionName,
  Dereference: () => Dereference,
  Destination: () => Destination,
  Dynamic: () => Dynamic,
  EntityAssociation: () => EntityAssociation,
  EventHandler: () => EventHandler,
  EventName: () => EventName,
  ExceptionName: () => ExceptionName,
  FSTarget: () => FSTarget,
  Field: () => Field,
  FieldAll: () => FieldAll,
  FieldAssignment: () => FieldAssignment,
  FieldChain: () => FieldChain,
  FieldLength: () => FieldLength,
  FieldOffset: () => FieldOffset,
  FieldSub: () => FieldSub,
  FieldSymbol: () => FieldSymbol,
  FilterBody: () => FilterBody,
  FinalMethods: () => FinalMethods,
  FindType: () => FindType,
  For: () => For,
  FormChanging: () => FormChanging,
  FormName: () => FormName,
  FormParam: () => FormParam,
  FormParamName: () => FormParamName,
  FormParamType: () => FormParamType,
  FormRaising: () => FormRaising,
  FormTables: () => FormTables,
  FormUsing: () => FormUsing,
  FunctionExporting: () => FunctionExporting,
  FunctionExportingParameter: () => FunctionExportingParameter,
  FunctionName: () => FunctionName,
  FunctionParameters: () => FunctionParameters,
  IncludeName: () => IncludeName,
  InlineData: () => InlineData,
  InlineFS: () => InlineFS,
  InlineField: () => InlineField,
  InlineFieldDefinition: () => InlineFieldDefinition,
  InlineLoopDefinition: () => InlineLoopDefinition,
  Integer: () => Integer,
  InterfaceName: () => InterfaceName,
  KernelId: () => KernelId,
  LOBHandle: () => LOBHandle,
  Language: () => Language,
  Length: () => Length,
  Let: () => Let,
  LoopGroupBy: () => LoopGroupBy,
  LoopGroupByComponent: () => LoopGroupByComponent,
  LoopGroupByTarget: () => LoopGroupByTarget,
  LoopSource: () => LoopSource,
  LoopTarget: () => LoopTarget,
  MacroName: () => MacroName,
  MessageClass: () => MessageClass,
  MessageNumber: () => MessageNumber,
  MessageSource: () => MessageSource,
  MessageSourceSource: () => MessageSourceSource,
  MessageTypeAndNumber: () => MessageTypeAndNumber,
  MethodCall: () => MethodCall,
  MethodCallBody: () => MethodCallBody,
  MethodCallChain: () => MethodCallChain,
  MethodCallParam: () => MethodCallParam,
  MethodDefChanging: () => MethodDefChanging,
  MethodDefExceptions: () => MethodDefExceptions,
  MethodDefExporting: () => MethodDefExporting,
  MethodDefImporting: () => MethodDefImporting,
  MethodDefRaising: () => MethodDefRaising,
  MethodDefReturning: () => MethodDefReturning,
  MethodName: () => MethodName,
  MethodParam: () => MethodParam,
  MethodParamName: () => MethodParamName,
  MethodParamOptional: () => MethodParamOptional,
  MethodParameters: () => MethodParameters,
  MethodSource: () => MethodSource,
  Modif: () => Modif,
  NamespaceSimpleName: () => NamespaceSimpleName,
  NewObject: () => NewObject,
  OLEExporting: () => OLEExporting,
  Or: () => Or,
  ParameterException: () => ParameterException,
  ParameterListExceptions: () => ParameterListExceptions,
  ParameterListS: () => ParameterListS,
  ParameterListT: () => ParameterListT,
  ParameterName: () => ParameterName,
  ParameterS: () => ParameterS,
  ParameterT: () => ParameterT,
  PassByValue: () => PassByValue,
  PerformChanging: () => PerformChanging,
  PerformTables: () => PerformTables,
  PerformUsing: () => PerformUsing,
  ProvideFieldName: () => ProvideFieldName,
  RadioGroupName: () => RadioGroupName,
  RaiseWith: () => RaiseWith,
  ReadTableTarget: () => ReadTableTarget,
  ReceiveParameters: () => ReceiveParameters,
  Redefinition: () => Redefinition,
  ReduceBody: () => ReduceBody,
  ReduceNext: () => ReduceNext,
  ReportName: () => ReportName,
  SQLAggregation: () => SQLAggregation,
  SQLAliasField: () => SQLAliasField,
  SQLArithmeticOperator: () => SQLArithmeticOperator,
  SQLArithmetics: () => SQLArithmetics,
  SQLAsName: () => SQLAsName,
  SQLBypassingBuffer: () => SQLBypassingBuffer,
  SQLCDSParameters: () => SQLCDSParameters,
  SQLCase: () => SQLCase,
  SQLClient: () => SQLClient,
  SQLCompare: () => SQLCompare,
  SQLCompareOperator: () => SQLCompareOperator,
  SQLCond: () => SQLCond,
  SQLField: () => SQLField,
  SQLFieldAndValue: () => SQLFieldAndValue,
  SQLFieldList: () => SQLFieldList,
  SQLFieldListLoop: () => SQLFieldListLoop,
  SQLFieldName: () => SQLFieldName,
  SQLFields: () => SQLFields,
  SQLFieldsLoop: () => SQLFieldsLoop,
  SQLForAllEntries: () => SQLForAllEntries,
  SQLFrom: () => SQLFrom,
  SQLFromSource: () => SQLFromSource,
  SQLFunction: () => SQLFunction,
  SQLFunctionInput: () => SQLFunctionInput,
  SQLGroupBy: () => SQLGroupBy,
  SQLHaving: () => SQLHaving,
  SQLHints: () => SQLHints,
  SQLIn: () => SQLIn,
  SQLIntoList: () => SQLIntoList,
  SQLIntoStructure: () => SQLIntoStructure,
  SQLIntoTable: () => SQLIntoTable,
  SQLJoin: () => SQLJoin,
  SQLOptions: () => SQLOptions,
  SQLOrderBy: () => SQLOrderBy,
  SQLOver: () => SQLOver,
  SQLPath: () => SQLPath,
  SQLPrivilegedAccess: () => SQLPrivilegedAccess,
  SQLSource: () => SQLSource,
  SQLSourceNoSpace: () => SQLSourceNoSpace,
  SQLSourceSimple: () => SQLSourceSimple,
  SQLTarget: () => SQLTarget,
  SQLUpTo: () => SQLUpTo,
  Select: () => Select,
  SelectLoop: () => SelectLoop,
  SimpleFieldChain: () => SimpleFieldChain,
  SimpleFieldChain2: () => SimpleFieldChain2,
  SimpleName: () => SimpleName,
  SimpleSource1: () => SimpleSource1,
  SimpleSource2: () => SimpleSource2,
  SimpleSource3: () => SimpleSource3,
  SimpleSource4: () => SimpleSource4,
  SimpleTarget: () => SimpleTarget,
  Source: () => Source,
  SourceField: () => SourceField,
  SourceFieldSymbol: () => SourceFieldSymbol,
  SourceFieldSymbolChain: () => SourceFieldSymbolChain,
  StringTemplate: () => StringTemplate2,
  StringTemplateFormatting: () => StringTemplateFormatting,
  StringTemplateSource: () => StringTemplateSource,
  SuperClassName: () => SuperClassName,
  SwitchBody: () => SwitchBody,
  TableBody: () => TableBody,
  TableExpression: () => TableExpression,
  Target: () => Target,
  TargetField: () => TargetField,
  TargetFieldSymbol: () => TargetFieldSymbol,
  TestSeamName: () => TestSeamName,
  TextElement: () => TextElement,
  TextElementKey: () => TextElementKey,
  TextElementString: () => TextElementString,
  Throw: () => Throw,
  TransportingFields: () => TransportingFields,
  Type: () => Type,
  TypeName: () => TypeName,
  TypeNameOrInfer: () => TypeNameOrInfer,
  TypeParam: () => TypeParam,
  TypeStructure: () => TypeStructure,
  TypeTable: () => TypeTable,
  TypeTableKey: () => TypeTableKey,
  Value: () => Value,
  ValueBase: () => ValueBase,
  ValueBody: () => ValueBody,
  ValueBodyLine: () => ValueBodyLine,
  ValueBodyLines: () => ValueBodyLines,
  WithName: () => WithName,
  WriteOffsetLength: () => WriteOffsetLength
});

// ../core/src/abap/2_statements/expressions/method_name.ts
var MethodName = class extends Expression {
  getRunnable() {
    return regex(/^(\/\w+\/)?\w+(~\w+)?$/);
  }
};

// ../core/src/abap/2_statements/expressions/abstract_methods.ts
var AbstractMethods = class extends Expression {
  getRunnable() {
    return seq("ABSTRACT METHODS", plus(MethodName));
  }
};

// ../core/src/abap/2_statements/expressions/abstract.ts
var Abstract = class extends Expression {
  getRunnable() {
    return str("ABSTRACT");
  }
};

// ../core/src/abap/2_statements/expressions/and_return.ts
var AndReturn = class extends Expression {
  getRunnable() {
    return str("AND RETURN");
  }
};

// ../core/src/abap/2_statements/expressions/arith_operator.ts
var ArithOperator = class extends Expression {
  getRunnable() {
    const ret = altPrio(
      tok(WPlusW),
      tok(WDashW),
      "*",
      "**",
      "/",
      "BIT-XOR",
      "BIT-AND",
      "BIT-OR",
      "DIV",
      "MOD"
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/arrow_or_dash.ts
var ArrowOrDash = class extends Expression {
  getRunnable() {
    return altPrio(tok(InstanceArrow), tok(StaticArrow), tok(Dash));
  }
};

// ../core/src/abap/2_statements/expressions/arrow.ts
var Arrow = class extends Expression {
  getRunnable() {
    return altPrio(tok(InstanceArrow), tok(StaticArrow));
  }
};

// ../core/src/abap/2_statements/expressions/text_element.ts
var TextElement = class extends Expression {
  getRunnable() {
    return seq("TEXT", tok(Dash), TextElementKey);
  }
};

// ../core/src/abap/2_statements/expressions/table_body.ts
var TableBody = class extends Expression {
  getRunnable() {
    const ret = seq(tok(BracketLeft), altPrio(tok(BracketRightW), tok(BracketRight)));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/attribute_chain.ts
var AttributeChain = class extends Expression {
  getRunnable() {
    const chain = seq(
      AttributeName,
      starPrio(altPrio(seq(ArrowOrDash, altPrio("*", ComponentName)), TableExpression))
    );
    const ret = seq(chain, optPrio(TableBody), optPrio(FieldOffset), optPrio(FieldLength));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/dereference.ts
var Dereference = class extends Expression {
  getRunnable() {
    return seq(tok(InstanceArrow), "*");
  }
};

// ../core/src/abap/2_statements/expressions/source.ts
var Source = class _Source extends Expression {
  getRunnable() {
    const comp = seq(tok(Dash), ComponentChain);
    const attr = seq(Arrow, AttributeChain);
    const deref = optPrio(ver("v756" /* v756 */, Dereference));
    const method = seq(MethodCallChain, optPrio(altPrio(attr, comp)), deref);
    const rparen3 = tok(WParenRightW);
    const rparenNoSpace = altPrio(tok(ParenRightW), tok(WParenRightW));
    const lparenNoSpace = altPrio(tok(ParenLeft), tok(ParenLeftW));
    const paren = seq(
      tok(WParenLeftW),
      _Source,
      rparen3
    );
    const after = seq(altPrio("&", "&&", ArithOperator), _Source);
    const bool = seq(
      altPrio(
        ver("v702" /* v702 */, regex(/^BOOLC$/i), "open-abap" /* OpenABAP */),
        ver("v740sp08" /* v740sp08 */, regex(/^XSDBOOL$/i), "open-abap" /* OpenABAP */)
      ),
      tok(ParenLeftW),
      Cond,
      ")"
    );
    const prefix = altPrio(tok(WPlus), "BIT-NOT");
    const old = seq(
      optPrio(prefix),
      altPrio(
        Constant,
        StringTemplate2,
        TextElement,
        bool,
        method,
        seq(FieldChain, deref),
        paren
      ),
      optPrio(after)
    );
    const corr = ver("v740sp05" /* v740sp05 */, seq(
      "CORRESPONDING",
      TypeNameOrInfer,
      tok(ParenLeftW),
      CorrespondingBody,
      rparen3,
      optPrio(after)
    ), "open-abap" /* OpenABAP */);
    const conv = ver("v740sp02" /* v740sp02 */, seq(
      "CONV",
      TypeNameOrInfer,
      lparenNoSpace,
      ConvBody,
      rparenNoSpace,
      optPrio(after)
    ), "open-abap" /* OpenABAP */);
    const swit = ver("v740sp02" /* v740sp02 */, seq(
      "SWITCH",
      TypeNameOrInfer,
      tok(ParenLeftW),
      SwitchBody,
      rparenNoSpace,
      optPrio(after)
    ), "open-abap" /* OpenABAP */);
    const value = ver("v740sp02" /* v740sp02 */, seq(
      "VALUE",
      TypeNameOrInfer,
      tok(ParenLeftW),
      ValueBody,
      rparenNoSpace,
      optPrio(after)
    ), "open-abap" /* OpenABAP */);
    const cond = ver("v740sp02" /* v740sp02 */, seq(
      "COND",
      TypeNameOrInfer,
      tok(ParenLeftW),
      CondBody,
      rparenNoSpace,
      optPrio(after)
    ), "open-abap" /* OpenABAP */);
    const reff = ver("v740sp02" /* v740sp02 */, seq(
      "REF",
      TypeNameOrInfer,
      tok(ParenLeftW),
      _Source,
      optPrio("OPTIONAL"),
      rparen3
    ), "open-abap" /* OpenABAP */);
    const exact = ver("v740sp02" /* v740sp02 */, seq(
      "EXACT",
      TypeNameOrInfer,
      tok(ParenLeftW),
      _Source,
      rparen3,
      optPrio(after)
    ));
    const filter = ver(
      "v740sp08" /* v740sp08 */,
      seq(
        "FILTER",
        TypeNameOrInfer,
        tok(ParenLeftW),
        FilterBody,
        rparen3
      ),
      "open-abap" /* OpenABAP */
    );
    const reduce = ver(
      "v740sp08" /* v740sp08 */,
      seq(
        "REDUCE",
        TypeNameOrInfer,
        tok(ParenLeftW),
        ReduceBody,
        rparen3,
        optPrio(after)
      ),
      "open-abap" /* OpenABAP */
    );
    const prefix1 = altPrio(tok(WDashW), tok(WPlusW));
    const ret = seq(
      starPrio(prefix1),
      altPrio(filter, reff, corr, conv, value, cond, exact, swit, reduce, old)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/dynamic.ts
var Dynamic = class extends Expression {
  getRunnable() {
    const ret = seq(
      altPrio(tok(WParenLeft), tok(ParenLeft)),
      altPrio(FieldChain, Constant),
      altPrio(tok(ParenRightW), tok(ParenRight))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/field.ts
var Field = class extends Expression {
  getRunnable() {
    return regex(/^[&_!?]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?#]*(~\w+)?$/);
  }
};

// ../core/src/abap/2_statements/expressions/simple_source3.ts
var SimpleSource3 = class extends Expression {
  getRunnable() {
    return altPrio(Constant, TextElement, FieldChain);
  }
};

// ../core/src/abap/2_statements/expressions/assign_source.ts
var AssignSource = class extends Expression {
  getRunnable() {
    const component = seq(
      "COMPONENT",
      alt(SimpleSource3, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */)),
      "OF STRUCTURE",
      Source
    );
    const tableField = seq("TABLE FIELD", alt(Source, Dynamic));
    const arrow = alt(tok(InstanceArrow), tok(StaticArrow));
    const source = alt(
      seq(Source, opt(seq(arrow, Dynamic))),
      component,
      tableField,
      seq(Dynamic, opt(seq(arrow, alt(Field, Dynamic))))
    );
    return source;
  }
};

// ../core/src/abap/2_statements/expressions/association_name.ts
var AssociationName = class extends Expression {
  getRunnable() {
    return regex(/^(\\_[\w]+)+$/);
  }
};

// ../core/src/abap/2_statements/expressions/attribute_name.ts
var AttributeName = class extends Expression {
  getRunnable() {
    return regex(/^(\/\w+\/)?(?!\*)[\w\d_\*\~%]+$/);
  }
};

// ../core/src/abap/2_statements/expressions/behavior_definition_name.ts
var BehaviorDefinitionName = class extends Expression {
  getRunnable() {
    return regex(/^((\w*\/\w+\/)|(\w*\/\w+\/)?[\w\*$%]+)$/);
  }
};

// ../core/src/abap/2_statements/expressions/block_name.ts
var BlockName = class extends Expression {
  getRunnable() {
    const ret = seq(optPrio(tok(WDash)), regex(/^[\w%\$\*]+$/), starPrio(seq(tok(Dash), regex(/^[\w%\$\*]+$/))));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/integer.ts
var Integer = class extends Expression {
  getRunnable() {
    const modifier = optPrio(altPrio(tok(WDash), tok(WDashW), tok(WPlus)));
    return seq(modifier, regex(/^\d+$/));
  }
};

// ../core/src/abap/2_statements/expressions/call_transformation_options.ts
var CallTransformationOptions = class extends Expression {
  getRunnable() {
    const field = seq(alt(Field, Integer), "=", Source);
    return plus(field);
  }
};

// ../core/src/abap/2_statements/expressions/call_transformation_parameters.ts
var CallTransformationParameters = class extends Expression {
  getRunnable() {
    const field = seq(alt(Field, Integer), "=", SimpleSource3);
    return alt(plus(field), Dynamic);
  }
};

// ../core/src/abap/2_statements/expressions/let.ts
var Let = class extends Expression {
  getRunnable() {
    return seq("LET", plusPrio(InlineFieldDefinition), "IN");
  }
};

// ../core/src/abap/2_statements/expressions/cast.ts
var Cast = class extends Expression {
  getRunnable() {
    const rparen3 = altPrio(tok(WParenRightW), tok(WParenRight));
    const cast = seq("CAST", TypeNameOrInfer, tok(ParenLeftW), optPrio(Let), Source, rparen3, opt(Dereference));
    return ver("v740sp02" /* v740sp02 */, cast, "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/expressions/class_final.ts
var ClassFinal = class extends Expression {
  getRunnable() {
    return str("FINAL");
  }
};

// ../core/src/abap/2_statements/expressions/class_name.ts
var ClassName = class extends Expression {
  getRunnable() {
    return regex(/^!?\w*(\/\w{3,}\/)?\w+$/);
  }
};

// ../core/src/abap/2_statements/expressions/class_friends.ts
var ClassFriends = class extends Expression {
  getRunnable() {
    return seq(optPrio("GLOBAL"), "FRIENDS", plus(ClassName));
  }
};

// ../core/src/abap/2_statements/expressions/class_global.ts
var ClassGlobal = class extends Expression {
  getRunnable() {
    return str("PUBLIC");
  }
};

// ../core/src/abap/2_statements/expressions/color.ts
var Color = class extends Expression {
  getRunnable() {
    const eq = seq("=", Source);
    const integers = altPrio("1", "2", "3", "4", "5", "6", "7");
    const texts = altPrio(
      "COL_BACKGROUND",
      "COL_HEADING",
      "COL_NORMAL",
      "COL_TOTAL",
      "COL_KEY",
      "COL_POSITIVE",
      "COL_NEGATIVE",
      "COL_GROUP"
    );
    const value = alt(eq, altPrio("ON", "OFF", "COLOR OFF", altPrio(integers, texts)));
    const toggle = altPrio("ON", "OFF");
    return seq("COLOR", opt(seq(value, opt(toggle))));
  }
};

// ../core/src/abap/2_statements/expressions/compare_operator.ts
var CompareOperator = class extends Expression {
  getRunnable() {
    const operator = altPrio(
      "=",
      "<>",
      "><",
      "<",
      ">",
      "<=",
      ">=",
      "=>",
      "=<",
      "CA",
      "CO",
      "CP",
      "EQ",
      "NE",
      "CN",
      "GE",
      "GT",
      "LT",
      "LE",
      "CS",
      "NS",
      "NA",
      "NP",
      "BYTE-CO",
      "BYTE-CA",
      "BYTE-CS",
      "BYTE-CN",
      "BYTE-NA",
      "BYTE-NS",
      "O",
      // hex comparison operator
      "Z",
      // hex comparison operator
      "M"
    );
    return operator;
  }
};

// ../core/src/abap/2_statements/expressions/compare.ts
var Compare = class extends Expression {
  getRunnable() {
    const val = altPrio(FieldSub, Constant);
    const list = seq(
      tok(WParenLeft),
      val,
      plus(seq(",", val)),
      tok(ParenRightW)
    );
    const inn = seq(optPrio("NOT"), "IN", altPrio(Source, list));
    const sopt = seq(
      "IS",
      optPrio("NOT"),
      altPrio(
        "SUPPLIED",
        "BOUND",
        ver("v750" /* v750 */, seq("INSTANCE OF", ClassName), "open-abap" /* OpenABAP */),
        "REQUESTED",
        "INITIAL"
      )
    );
    const between = seq(optPrio("NOT"), "BETWEEN", Source, "AND", Source);
    const predicate = ver("v740sp08" /* v740sp08 */, MethodCallChain, "open-abap" /* OpenABAP */);
    const rett = seq(Source, altPrio(seq(CompareOperator, Source), inn, between, sopt));
    const fsassign = seq(SourceFieldSymbolChain, "IS", optPrio("NOT"), "ASSIGNED");
    const ret = seq(opt("NOT"), altPrio(rett, predicate, fsassign));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/component_chain_simple.ts
var ComponentChainSimple = class extends Expression {
  getRunnable() {
    const chain = seq(
      ComponentName,
      starPrio(seq(ArrowOrDash, ComponentName))
    );
    const ret = seq(chain, optPrio(FieldOffset), optPrio(FieldLength));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/component_chain.ts
var ComponentChain = class extends Expression {
  getRunnable() {
    const chain = seq(
      ComponentName,
      star(altPrio(seq(ArrowOrDash, altPrio("*", ComponentName)), TableExpression))
    );
    const ret = seq(chain, optPrio(TableBody), optPrio(FieldOffset), optPrio(FieldLength));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/component_compare_simple.ts
var ComponentCompareSimple = class extends Expression {
  getRunnable() {
    const source = altPrio(ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */), SimpleSource4);
    const ret = seq(altPrio(ComponentChainSimple, Dynamic), "=", source);
    return plus(ret);
  }
};

// ../core/src/abap/2_statements/expressions/component_compare_single.ts
var ComponentCompareSingle = class extends Expression {
  getRunnable() {
    const ret = seq(altPrio(ComponentChainSimple, Dynamic), "=", Source);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/component_compare.ts
var ComponentCompare = class extends Expression {
  getRunnable() {
    const val = alt(FieldSub, Constant);
    const list = seq(
      tok(WParenLeft),
      val,
      plus(seq(",", val)),
      tok(ParenRightW)
    );
    const inn = seq(opt("NOT"), "IN", altPrio(Source, list));
    const sopt = seq(
      "IS",
      opt("NOT"),
      altPrio(
        "SUPPLIED",
        "BOUND",
        ver("v750" /* v750 */, seq("INSTANCE OF", Source)),
        "REQUESTED",
        "ASSIGNED",
        "INITIAL"
      )
    );
    const between = seq(opt("NOT"), "BETWEEN", Source, "AND", Source);
    const rett = seq(ComponentChainSimple, altPrio(seq(CompareOperator, Source), inn, between, sopt));
    const ret = seq(opt("NOT"), rett);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/component_cond_sub.ts
var ComponentCondSub = class extends Expression {
  getRunnable() {
    const another = seq(
      opt("NOT"),
      tok(WParenLeftW),
      ComponentCond,
      altPrio(tok(WParenRightW), tok(ParenRightW))
    );
    return another;
  }
};

// ../core/src/abap/2_statements/expressions/component_cond.ts
var ComponentCond = class extends Expression {
  getRunnable() {
    const operator = alt("AND", "OR");
    const cnd = alt(ComponentCompare, ComponentCondSub);
    const ret = seq(cnd, star(seq(operator, cnd)));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/component_name.ts
var ComponentName = class extends Expression {
  getRunnable() {
    return regex(/^[\/\w\d_%$\*\~]+$/);
  }
};

// ../core/src/abap/2_statements/expressions/concatenated_constant.ts
var ConcatenatedConstant = class extends Expression {
  getRunnable() {
    const str2 = seq(regex(/^`.*`$/), plusPrio(seq("&", regex(/^`.*`$/))));
    const char = seq(regex(/^'.*'$/), plusPrio(seq("&", regex(/^'.*'$/))));
    return altPrio(str2, char);
  }
};

// ../core/src/abap/2_statements/expressions/cond_body.ts
var CondBody = class extends Expression {
  getRunnable() {
    const when = seq("WHEN", altPrio(Cond, Source), "THEN", altPrio(Throw, Source));
    const elsee = seq("ELSE", altPrio(Throw, Source));
    return seq(
      optPrio(Let),
      plusPrio(when),
      optPrio(elsee)
    );
  }
};

// ../core/src/abap/2_statements/expressions/cond_sub.ts
var CondSub = class extends Expression {
  getRunnable() {
    const another = seq(
      optPrio("NOT"),
      altPrio(tok(WParenLeftW), tok(WParenLeft)),
      Cond,
      altPrio(tok(WParenRightW), tok(ParenRightW))
    );
    return another;
  }
};

// ../core/src/abap/2_statements/expressions/cond.ts
var Cond = class extends Expression {
  getRunnable() {
    const operator = altPrio("AND", "OR", ver("v702" /* v702 */, "EQUIV"));
    const cnd = altPrio(Compare, CondSub);
    const ret = seq(cnd, starPrio(seq(operator, cnd)));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/constant_field_length.ts
var ConstantFieldLength = class extends Expression {
  getRunnable() {
    const length = seq(
      tok(ParenLeft),
      altPrio(Integer, SimpleFieldChain),
      tok(ParenRightW)
    );
    return length;
  }
};

// ../core/src/abap/2_statements/expressions/constant_string.ts
var ConstantString = class extends Expression {
  getRunnable() {
    return regex(/^('.*')|(`.*`)$/);
  }
};

// ../core/src/abap/2_statements/expressions/constant.ts
var Constant = class extends Expression {
  getRunnable() {
    return altPrio(
      TextElementString,
      ConcatenatedConstant,
      ConstantString,
      Integer
    );
  }
};

// ../core/src/abap/2_statements/expressions/conv_body.ts
var ConvBody = class extends Expression {
  getRunnable() {
    return seq(optPrio(Let), Source);
  }
};

// ../core/src/abap/2_statements/expressions/corresponding_body_base.ts
var CorrespondingBodyBase = class extends Expression {
  getRunnable() {
    return seq("BASE", tok(WParenLeftW), Source, tok(WParenRightW));
  }
};

// ../core/src/abap/2_statements/expressions/corresponding_body_mapping.ts
var CorrespondingBodyMapping = class extends Expression {
  getRunnable() {
    const mapping = seq("MAPPING", plus(seq(ComponentName, "=", ComponentChain)));
    return mapping;
  }
};

// ../core/src/abap/2_statements/expressions/corresponding_body.ts
var CorrespondingBody = class extends Expression {
  getRunnable() {
    const discarding = ver("v751" /* v751 */, "DISCARDING DUPLICATES");
    return seq(
      optPrio("DEEP"),
      optPrio(CorrespondingBodyBase),
      Source,
      optPrio(discarding),
      optPrio(CorrespondingBodyMapping),
      optPrio("CHANGING CONTROL"),
      optPrio(seq("MAPPING FROM ENTITY", optPrio("USING CONTROL"))),
      // todo, version something?
      optPrio(seq("EXCEPT", alt(plus(Field), "*")))
    );
  }
};

// ../core/src/abap/2_statements/expressions/data_definition.ts
var DataDefinition = class extends Expression {
  getRunnable() {
    const simple = opt(per(
      "READ-ONLY",
      Type,
      Length,
      Decimals,
      Value
    ));
    const table = seq(TypeTable, optPrio("READ-ONLY"));
    const boxed = ver("v702" /* v702 */, "BOXED");
    return seq(
      DefinitionName,
      optPrio(ConstantFieldLength),
      alt(simple, table, TypeStructure),
      optPrio(boxed)
    );
  }
};

// ../core/src/abap/2_statements/expressions/database_connection.ts
var DatabaseConnection = class extends Expression {
  getRunnable() {
    const name = regex(/[\w\/]+/);
    return seq("CONNECTION", altPrio(name, Dynamic));
  }
};

// ../core/src/abap/2_statements/expressions/database_table.ts
var DatabaseTable = class extends Expression {
  getRunnable() {
    return altPrio(Dynamic, regex(/^\*?(\/\w+\/)?\w+$/));
  }
};

// ../core/src/abap/2_statements/expressions/decimals.ts
var Decimals = class extends Expression {
  getRunnable() {
    const ret = seq("DECIMALS", Integer);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/default.ts
var Default = class extends Expression {
  getRunnable() {
    const def = seq("DEFAULT", altPrio(TextElement, Constant, FieldChain));
    return def;
  }
};

// ../core/src/abap/2_statements/expressions/definition_name.ts
var DefinitionName = class extends Expression {
  getRunnable() {
    const r = regex(/^&|&?((\w*\/\w+\/)|(\w*\/\w+\/)?[\w\*$%\?#]+)$/);
    return seq(r, starPrio(seq(tok(Dash), optPrio(r))), optPrio(tok(DashW)));
  }
};

// ../core/src/abap/2_statements/expressions/destination.ts
var Destination = class extends Expression {
  getRunnable() {
    return seq("DESTINATION", optPrio("IN GROUP"), altPrio("DEFAULT", Source));
  }
};

// ../core/src/abap/2_statements/expressions/entity_association.ts
var EntityAssociation = class extends Expression {
  getRunnable() {
    return regex(/^[\/\w]+(\\_|\\\\)[\/\_\w\\~]+$/);
  }
};

// ../core/src/abap/2_statements/expressions/event_handler.ts
var EventHandler = class extends Expression {
  getRunnable() {
    const event = seq(
      "FOR EVENT",
      EventName,
      "OF",
      ClassName,
      optPrio(seq("IMPORTING", plusPrio(MethodParamName)))
    );
    return event;
  }
};

// ../core/src/abap/2_statements/expressions/event_name.ts
var EventName = class extends Expression {
  getRunnable() {
    return regex(/^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?#]*(~\w+)?$/);
  }
};

// ../core/src/abap/2_statements/expressions/exception_name.ts
var ExceptionName = class extends Expression {
  getRunnable() {
    return seq(Field, starPrio(seq(tok(Dash), Field)));
  }
};

// ../core/src/abap/2_statements/expressions/field_all.ts
var FieldAll = class extends Expression {
  getRunnable() {
    return regex(/^&?\*?(\/\w+\/)?[\w\*\$]+(~\w+)?$/);
  }
};

// ../core/src/abap/2_statements/expressions/field_length.ts
var FieldLength = class extends Expression {
  getRunnable() {
    const normal = seq(
      optPrio(tok(Plus)),
      altPrio(regex(/^\d+$/), SimpleFieldChain2)
    );
    const length = seq(
      tok(ParenLeft),
      optPrio(altPrio(normal, "*")),
      tok(ParenRightW)
    );
    return length;
  }
};

// ../core/src/abap/2_statements/expressions/field_sub.ts
var FieldSub = class extends Expression {
  getRunnable() {
    const ret = seq(
      regex(/^\*?!?&?(\/\w+\/)?[a-zA-Z_%$\?][\w%$\$\*]*$/),
      starPrio(seq(tok(Dash), regex(/^[\w%$\$\*]+$/))),
      opt(FieldLength),
      opt(TableBody)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/field_assignment.ts
var FieldAssignment = class extends Expression {
  getRunnable() {
    const ret = seq(FieldSub, "=", Source);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/field_chain.ts
var FieldChain = class extends Expression {
  getRunnable() {
    const attr = seq(tok(InstanceArrow), AttributeName);
    const comp = seq(tok(Dash), optPrio(ComponentName));
    const chain = star(altPrio(Dereference, attr, comp, TableExpression));
    const clas = seq(ClassName, tok(StaticArrow), AttributeName);
    const start = altPrio(clas, SourceField, SourceFieldSymbol);
    const after = altPrio(tok(DashW), seq(optPrio(TableBody), optPrio(FieldOffset), optPrio(FieldLength)));
    const ret = seq(start, chain, after);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/field_offset.ts
var FieldOffset = class extends Expression {
  getRunnable() {
    const offset = seq(
      tok(Plus),
      optPrio(altPrio(regex(/^\d+$/), SimpleFieldChain2))
    );
    return offset;
  }
};

// ../core/src/abap/2_statements/expressions/field_symbol.ts
var FieldSymbol = class extends Expression {
  getRunnable() {
    const dashes = seq(regex(/^<[\w\/%$\*]+$/), tok(Dash), regex(/^[\w\/%$\*]+>$/));
    return altPrio(regex(/^<[\w\/%$\*\?]+>$/), dashes);
  }
};

// ../core/src/abap/2_statements/expressions/filter_body.ts
var FilterBody = class extends Expression {
  getRunnable() {
    const inn = seq("IN", Source);
    const using = seq("USING KEY", SimpleName);
    return seq(
      Source,
      optPrio("EXCEPT"),
      optPrio(per(inn, using)),
      seq("WHERE", ComponentCond)
    );
  }
};

// ../core/src/abap/2_statements/expressions/final_methods.ts
var FinalMethods = class extends Expression {
  getRunnable() {
    return seq("FINAL METHODS", plus(MethodName));
  }
};

// ../core/src/abap/2_statements/expressions/find_type.ts
var FindType = class extends Expression {
  getRunnable() {
    return opt(alt("REGEX", "SUBSTRING", ver("v755" /* v755 */, "PCRE", "open-abap" /* OpenABAP */)));
  }
};

// ../core/src/abap/2_statements/expressions/for.ts
var For = class extends Expression {
  getRunnable() {
    const where = seq("WHERE (", ComponentCond, ")");
    const from = seq("FROM", Source);
    const to = seq("TO", Source);
    const inn = seq(InlineLoopDefinition, optPrio(from), optPrio(to), optPrio(where));
    const then = seq("THEN", Source);
    const whil = seq(altPrio("UNTIL", "WHILE"), Cond);
    const itera = seq(InlineFieldDefinition, opt(then), whil);
    const groupBy = seq(
      "GROUP BY",
      alt(FieldChain, seq("(", plus(LoopGroupByComponent), ")")),
      opt(seq(alt("ASCENDING", "DESCENDING"), opt("AS TEXT"))),
      opt("WITHOUT MEMBERS")
    );
    const t = alt(TargetField, TargetFieldSymbol);
    const groups = ver("v740sp08" /* v740sp08 */, seq("GROUPS", t, "OF", t, "IN", Source, optPrio(groupBy)));
    const f = seq("FOR", alt(itera, inn, groups), optPrio(Let));
    return ver("v740sp05" /* v740sp05 */, f, "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/expressions/form_changing.ts
var FormChanging = class extends Expression {
  getRunnable() {
    return seq("CHANGING", plus(FormParam));
  }
};

// ../core/src/abap/2_statements/expressions/form_name.ts
var FormName = class extends Expression {
  getRunnable() {
    return seq(
      regex(/^!?[\w%$\*\/\?<>]+$/),
      starPrio(seq(tok(Dash), optPrio(regex(/^\w+$/)))),
      optPrio(tok(DashW))
    );
  }
};

// ../core/src/abap/2_statements/expressions/form_param_name.ts
var FormParamName = class extends Expression {
  getRunnable() {
    const r = regex(/^[\w$&\*%\/]+$/);
    return seq(r, starPrio(seq(tok(Dash), r)));
  }
};

// ../core/src/abap/2_statements/expressions/form_param_type.ts
var FormParamType = class extends Expression {
  getRunnable() {
    const def = seq("DEFAULT", alt(Constant, FieldChain));
    const table = seq(
      alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY"),
      "TABLE"
    );
    const tabseq = seq(table, optPrio(seq("OF", TypeName)));
    const ret = seq(
      optPrio(alt("REF TO", "LINE OF")),
      TypeName,
      opt(def)
    );
    const like = seq(
      "LIKE",
      optPrio(alt("REF TO", "LINE OF")),
      FieldChain
    );
    return alt(seq("TYPE", altPrio(tabseq, ret)), like);
  }
};

// ../core/src/abap/2_statements/expressions/form_param.ts
var FormParam = class extends Expression {
  getRunnable() {
    const stru = seq("STRUCTURE", SimpleFieldChain);
    const ret = seq(
      altPrio(PassByValue, FormParamName),
      optPrio(altPrio(FormParamType, stru))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/form_raising.ts
var FormRaising = class extends Expression {
  getRunnable() {
    const resume = seq(
      "RESUMABLE",
      tok(ParenLeft),
      ClassName,
      tok(ParenRightW)
    );
    const raising = seq("RAISING", plus(alt(ClassName, resume)));
    return raising;
  }
};

// ../core/src/abap/2_statements/expressions/form_tables.ts
var FormTables = class extends Expression {
  getRunnable() {
    return seq("TABLES", plus(FormParam));
  }
};

// ../core/src/abap/2_statements/expressions/form_using.ts
var FormUsing = class extends Expression {
  getRunnable() {
    return seq("USING", plus(FormParam));
  }
};

// ../core/src/abap/2_statements/expressions/fstarget.ts
var FSTarget = class extends Expression {
  getRunnable() {
    return altPrio(InlineFS, TargetFieldSymbol);
  }
};

// ../core/src/abap/2_statements/expressions/parameter_name.ts
var ParameterName = class extends Expression {
  getRunnable() {
    return regex(/^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?]*(~\w+)?$/);
  }
};

// ../core/src/abap/2_statements/expressions/function_exporting_parameter.ts
var FunctionExportingParameter = class extends Expression {
  getRunnable() {
    const s = altPrio(ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */), SimpleSource3);
    const exp = seq(ParameterName, "=", s);
    return exp;
  }
};

// ../core/src/abap/2_statements/expressions/function_exporting.ts
var FunctionExporting = class extends Expression {
  getRunnable() {
    const exp = plusPrio(FunctionExportingParameter);
    return exp;
  }
};

// ../core/src/abap/2_statements/expressions/function_name.ts
var FunctionName = class extends Expression {
  getRunnable() {
    return altPrio(Constant, FieldChain);
  }
};

// ../core/src/abap/2_statements/expressions/function_parameters.ts
var FunctionParameters = class extends Expression {
  getRunnable() {
    const exporting = seq("EXPORTING", FunctionExporting);
    const importing = seq("IMPORTING", ParameterListT);
    const changing = seq("CHANGING", ParameterListT);
    const tables = seq("TABLES", ParameterListT);
    const exceptions = seq("EXCEPTIONS", ParameterListExceptions);
    const long = seq(
      optPrio(exporting),
      optPrio(importing),
      optPrio(tables),
      optPrio(changing),
      optPrio(exceptions)
    );
    return long;
  }
};

// ../core/src/abap/2_statements/expressions/include_name.ts
var IncludeName = class extends Expression {
  getRunnable() {
    return seq(regex(/^<?(\/\w+\/)?[\w%#]+(~\w+)?>?$/), starPrio(seq(tok(Dash), optPrio(regex(/^\w+$/)))));
  }
};

// ../core/src/abap/2_statements/expressions/inline_field_definition.ts
var InlineFieldDefinition = class extends Expression {
  getRunnable() {
    return altPrio(
      seq(Field, "=", Source),
      seq(Field, "TYPE", TypeName)
    );
  }
};

// ../core/src/abap/2_statements/expressions/inline_field.ts
var InlineField = class extends Expression {
  getRunnable() {
    return seq(Field, starPrio(seq(tok(Dash), FieldAll)));
  }
};

// ../core/src/abap/2_statements/expressions/inline_loop_definition.ts
var InlineLoopDefinition = class extends Expression {
  getRunnable() {
    const index = seq("INDEX INTO", TargetField);
    const key = seq("USING KEY", SimpleName);
    return seq(altPrio(TargetFieldSymbol, TargetField), "IN", opt("GROUP"), Source, optPrio(key), optPrio(index));
  }
};

// ../core/src/abap/2_statements/expressions/inlinedata.ts
var InlineData = class extends Expression {
  getRunnable() {
    const right = altPrio(tok(ParenRightW), tok(ParenRight));
    const left = tok(ParenLeft);
    const data = seq("DATA", left, TargetField, right);
    const final = seq("FINAL", left, TargetField, right);
    return altPrio(ver("v740sp02" /* v740sp02 */, data, "open-abap" /* OpenABAP */), ver("v757" /* v757 */, final, "open-abap" /* OpenABAP */));
  }
};

// ../core/src/abap/2_statements/expressions/inlinefs.ts
var InlineFS = class extends Expression {
  getRunnable() {
    const right = tok(ParenRightW);
    const left = tok(ParenLeft);
    const fs = seq("FIELD-SYMBOL", left, TargetFieldSymbol, right);
    return ver("v740sp02" /* v740sp02 */, fs, "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/expressions/interface_name.ts
var InterfaceName = class extends Expression {
  getRunnable() {
    return regex(/^\w*(\/\w{3,}\/)?\w+$/);
  }
};

// ../core/src/abap/2_statements/expressions/kernel_id.ts
var KernelId = class extends Expression {
  getRunnable() {
    const field = seq("ID", Source, "FIELD", Source);
    return field;
  }
};

// ../core/src/abap/2_statements/expressions/language.ts
var Language = class extends Expression {
  getRunnable() {
    return seq("LANGUAGE", altPrio("SQLSCRIPT", "SQL", "GRAPH"));
  }
};

// ../core/src/abap/2_statements/expressions/length.ts
var Length = class extends Expression {
  getRunnable() {
    const ret = seq("LENGTH", altPrio(Integer, ConstantString, SimpleFieldChain));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/lob_handle.ts
var LOBHandle = class extends Expression {
  getRunnable() {
    return seq("WRITER FOR COLUMNS", Field);
  }
};

// ../core/src/abap/2_statements/expressions/loop_group_by_component.ts
var LoopGroupByComponent = class extends Expression {
  getRunnable() {
    const groupSize = seq(ComponentName, "=", "GROUP SIZE");
    const groupIndex = seq(ComponentName, "=", "GROUP INDEX");
    const components = alt(ComponentCompareSingle, groupSize, groupIndex);
    return components;
  }
};

// ../core/src/abap/2_statements/expressions/target.ts
var Target = class extends Expression {
  getRunnable() {
    const attr = seq(tok(InstanceArrow), AttributeName);
    const comp = seq(tok(Dash), ComponentName);
    const something = starPrio(altPrio(Dereference, attr, comp, TableExpression));
    const clas = seq(ClassName, tok(StaticArrow), AttributeName);
    const start = altPrio(Cast, NewObject, clas, TargetField, TargetFieldSymbol);
    const fields = seq(optPrio(FieldOffset), optPrio(FieldLength));
    const optional = altPrio(TableBody, fields);
    return altPrio(InlineData, InlineFS, seq(start, something, optional));
  }
};

// ../core/src/abap/2_statements/expressions/loop_group_by_target.ts
var LoopGroupByTarget = class extends Expression {
  getRunnable() {
    const into = seq(opt("REFERENCE"), "INTO", Target);
    const assigning = seq("ASSIGNING", FSTarget);
    return optPrio(alt(into, assigning));
  }
};

// ../core/src/abap/2_statements/expressions/loop_group_by.ts
var LoopGroupBy = class extends Expression {
  getRunnable() {
    const components = seq(tok(WParenLeftW), plus(LoopGroupByComponent), tok(WParenRightW));
    const ret = seq(
      alt(Source, components),
      optPrio("ASCENDING"),
      optPrio("WITHOUT MEMBERS"),
      LoopGroupByTarget
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/loop_source.ts
var LoopSource = class extends Expression {
  getRunnable() {
    return alt(SimpleSource2, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */));
  }
};

// ../core/src/abap/2_statements/expressions/loop_target.ts
var LoopTarget = class extends Expression {
  getRunnable() {
    const into = seq(opt("REFERENCE"), "INTO", Target);
    const assigning = seq("ASSIGNING", FSTarget);
    const target = alt(
      seq(
        alt(into, assigning),
        optPrio("CASTING")
      ),
      "TRANSPORTING NO FIELDS"
    );
    return target;
  }
};

// ../core/src/abap/2_statements/expressions/macro_name.ts
var MacroName = class extends Expression {
  getRunnable() {
    const r = /^(\/\w+\/)?[\w\*%\?$&]+>?$/;
    return seq(regex(r), starPrio(seq(tok(Dash), regex(r))));
  }
};

// ../core/src/abap/2_statements/expressions/message_class.ts
var MessageClass = class extends Expression {
  getRunnable() {
    return seq(regex(/^>?[\w\/]+#?@?\/?!?&?>?\$?\??<?§?~?$/), starPrio(tok(Plus)), starPrio(tok(PlusW)), starPrio(seq(tok(Dash), optPrio(regex(/^\w+$/)))), optPrio(tok(DashW)));
  }
};

// ../core/src/abap/2_statements/expressions/message_number.ts
var MessageNumber = class extends Expression {
  getRunnable() {
    return regex(/^\d\d\d$/i);
  }
};

// ../core/src/abap/2_statements/expressions/message_source_source.ts
var MessageSourceSource = class extends Expression {
  getRunnable() {
    return alt(ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */), SimpleSource3);
  }
};

// ../core/src/abap/2_statements/expressions/message_source.ts
var MessageSource = class extends Expression {
  getRunnable() {
    const msgid = seq(tok(ParenLeft), MessageClass, tok(ParenRightW));
    const simple = seq(MessageTypeAndNumber, opt(msgid));
    const mess1 = seq("ID", Source, "TYPE", Source, "NUMBER", altPrio(MessageNumber, Source));
    return altPrio(simple, mess1);
  }
};

// ../core/src/abap/2_statements/expressions/message_type_and_number.ts
var MessageTypeAndNumber = class extends Expression {
  getRunnable() {
    return regex(/^[iweaxs]\d\d\d$/i);
  }
};

// ../core/src/abap/2_statements/expressions/method_call_param.ts
var MethodCallParam = class extends Expression {
  getRunnable() {
    const param = alt(Source, ParameterListS, MethodParameters);
    const right1 = altPrio(tok(WParenRight), tok(WParenRightW), tok(ParenRight), tok(ParenRightW));
    const right2 = altPrio(tok(WParenRight), tok(WParenRightW));
    const ret = altPrio(
      seq(tok(ParenLeftW), param, right1),
      seq(tok(ParenLeft), param, right2),
      seq(tok(ParenLeft), ConstantString, altPrio(tok(ParenRight), tok(ParenRightW)))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/method_call_body.ts
var MethodCallBody = class extends Expression {
  getRunnable() {
    const dynamicPar = seq("PARAMETER-TABLE", Source);
    const dynamicExc = seq("EXCEPTION-TABLE", Source);
    const dynamic = seq(dynamicPar, optPrio(dynamicExc));
    return alt(MethodCallParam, MethodParameters, dynamic);
  }
};

// ../core/src/abap/2_statements/expressions/method_call_chain.ts
var MethodCallChain = class extends Expression {
  getRunnable() {
    const attr = seq(tok(InstanceArrow), AttributeName);
    const comp = seq(tok(Dash), ComponentName);
    const fields = star(altPrio(attr, comp));
    const after = star(seq(fields, tok(InstanceArrow), MethodCall));
    const localVariable = seq(FieldChain, tok(InstanceArrow));
    const staticClass = seq(ClassName, tok(StaticArrow));
    const ret = seq(
      altPrio(
        seq(optPrio(altPrio(localVariable, staticClass)), MethodCall),
        NewObject,
        Cast
      ),
      after
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/method_call.ts
var MethodCall = class extends Expression {
  getRunnable() {
    const ret = seq(MethodName, MethodCallParam);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/method_def_changing.ts
var MethodDefChanging = class extends Expression {
  getRunnable() {
    return seq("CHANGING", plus(MethodParamOptional));
  }
};

// ../core/src/abap/2_statements/expressions/method_def_exceptions.ts
var MethodDefExceptions = class extends Expression {
  getRunnable() {
    const exceptions = seq("EXCEPTIONS", plusPrio(NamespaceSimpleName));
    return exceptions;
  }
};

// ../core/src/abap/2_statements/expressions/method_def_exporting.ts
var MethodDefExporting = class extends Expression {
  getRunnable() {
    return seq("EXPORTING", plus(MethodParam));
  }
};

// ../core/src/abap/2_statements/expressions/method_def_importing.ts
var MethodDefImporting = class extends Expression {
  getRunnable() {
    const field = regex(/^!?(\/\w+\/)?\w+$/);
    return seq(
      "IMPORTING",
      plus(MethodParamOptional),
      optPrio(seq("PREFERRED PARAMETER", field))
    );
  }
};

// ../core/src/abap/2_statements/expressions/method_def_raising.ts
var MethodDefRaising = class extends Expression {
  getRunnable() {
    const resumable = seq(
      "RESUMABLE",
      tok(ParenLeft),
      ClassName,
      tok(ParenRightW)
    );
    const raising = seq("RAISING", plus(altPrio(resumable, ClassName)));
    return raising;
  }
};

// ../core/src/abap/2_statements/expressions/method_def_returning.ts
var MethodDefReturning = class extends Expression {
  getRunnable() {
    const value = seq(
      "VALUE",
      tok(ParenLeft),
      MethodParamName,
      tok(ParenRightW)
    );
    return seq("RETURNING", value, TypeParam);
  }
};

// ../core/src/abap/2_statements/expressions/method_param_name.ts
var MethodParamName = class extends Expression {
  getRunnable() {
    const field = regex(/^!?\w*(\/\w+\/)?\w+$/);
    return field;
  }
};

// ../core/src/abap/2_statements/expressions/method_param_optional.ts
var MethodParamOptional = class extends Expression {
  getRunnable() {
    return seq(MethodParam, optPrio("OPTIONAL"));
  }
};

// ../core/src/abap/2_statements/expressions/method_param.ts
var MethodParam = class extends Expression {
  getRunnable() {
    const ref = seq(
      "REFERENCE",
      tok(ParenLeft),
      MethodParamName,
      tok(ParenRightW)
    );
    const value = seq(
      "VALUE",
      tok(ParenLeft),
      MethodParamName,
      tok(ParenRightW)
    );
    const fieldsOrValue = seq(
      altPrio(value, ref, MethodParamName),
      TypeParam
    );
    return fieldsOrValue;
  }
};

// ../core/src/abap/2_statements/expressions/method_parameters.ts
var MethodParameters = class extends Expression {
  getRunnable() {
    const exporting = seq("EXPORTING", ParameterListS);
    const importing = seq("IMPORTING", ParameterListT);
    const changing = seq("CHANGING", ParameterListT);
    const receiving = seq("RECEIVING", ParameterT);
    const exceptions = seq("EXCEPTIONS", ParameterListExceptions);
    const long = seq(
      optPrio(exporting),
      optPrio(importing),
      optPrio(changing),
      optPrio(receiving),
      optPrio(exceptions)
    );
    return long;
  }
};

// ../core/src/abap/2_statements/expressions/method_source.ts
var MethodSource = class extends Expression {
  getRunnable() {
    const afterArrow = alt(AttributeName, MethodCall, Dynamic);
    const arrow = altPrio(tok(InstanceArrow), tok(StaticArrow));
    const attr = seq(arrow, afterArrow);
    const comp = seq(tok(Dash), ComponentName);
    const attrOrComp = altPrio(attr, comp);
    const staticClass = seq(ClassName, tok(StaticArrow));
    const clas = seq(staticClass, afterArrow);
    const start = seq(altPrio(clas, SourceField, SourceFieldSymbol, Dynamic), star(attrOrComp));
    return start;
  }
};

// ../core/src/abap/2_statements/expressions/modif.ts
var Modif = class extends Expression {
  getRunnable() {
    return regex(/^[\w\*]{1,3}$/);
  }
};

// ../core/src/abap/2_statements/expressions/namespace_simple_name.ts
var NamespaceSimpleName = class extends Expression {
  getRunnable() {
    return regex(/^!?((\w*\/\w+\/)|(\w*\/\w+\/)*[\w\*$%#]+)$/);
  }
};

// ../core/src/abap/2_statements/expressions/new_object.ts
var NewObject = class extends Expression {
  getRunnable() {
    const lines = plus(seq(tok(WParenLeftW), Source, tok(WParenRightW)));
    const linesFields = plus(seq(tok(WParenLeftW), plus(FieldAssignment), tok(WParenRightW)));
    const neww = seq(
      "NEW",
      TypeNameOrInfer,
      tok(ParenLeftW),
      optPrio(alt(Source, ParameterListS, lines, linesFields)),
      ")"
    );
    return ver("v740sp02" /* v740sp02 */, neww, "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/expressions/ole_exporting.ts
var OLEExporting = class extends Expression {
  getRunnable() {
    const fields = seq(regex(/^[&_!#\*]?[\w\d\*%\$\?#]+$/), "=", Source);
    return seq("EXPORTING", plus(fields));
  }
};

// ../core/src/abap/2_statements/expressions/or.ts
var Or = class extends Expression {
  getRunnable() {
    return seq("OR", Source);
  }
};

// ../core/src/abap/2_statements/expressions/parameter_exception.ts
var ParameterException = class extends Expression {
  getRunnable() {
    const name = altPrio("OTHERS", seq(ParameterName, tok(Dash), ComponentName), ParameterName);
    return seq(
      name,
      optPrio(seq(
        "=",
        altPrio(Integer, SimpleFieldChain),
        optPrio(seq("MESSAGE", Target))
      ))
    );
  }
};

// ../core/src/abap/2_statements/expressions/parameter_list_exceptions.ts
var ParameterListExceptions = class extends Expression {
  getRunnable() {
    return plus(ParameterException);
  }
};

// ../core/src/abap/2_statements/expressions/parameter_list_s.ts
var ParameterListS = class extends Expression {
  getRunnable() {
    return plus(ParameterS);
  }
};

// ../core/src/abap/2_statements/expressions/parameter_list_t.ts
var ParameterListT = class extends Expression {
  getRunnable() {
    return plus(ParameterT);
  }
};

// ../core/src/abap/2_statements/expressions/parameter_s.ts
var ParameterS = class extends Expression {
  getRunnable() {
    return seq(ParameterName, "=", Source);
  }
};

// ../core/src/abap/2_statements/expressions/parameter_t.ts
var ParameterT = class extends Expression {
  getRunnable() {
    return seq(ParameterName, "=", Target);
  }
};

// ../core/src/abap/2_statements/expressions/pass_by_value.ts
var PassByValue = class extends Expression {
  getRunnable() {
    const value = seq(
      "VALUE",
      tok(ParenLeft),
      FormParamName,
      tok(ParenRightW)
    );
    return value;
  }
};

// ../core/src/abap/2_statements/expressions/perform_changing.ts
var PerformChanging = class extends Expression {
  getRunnable() {
    const changing = seq("CHANGING", plus(Target));
    return changing;
  }
};

// ../core/src/abap/2_statements/expressions/perform_tables.ts
var PerformTables = class extends Expression {
  getRunnable() {
    const tables = seq("TABLES", plus(Source));
    return tables;
  }
};

// ../core/src/abap/2_statements/expressions/perform_using.ts
var PerformUsing = class extends Expression {
  getRunnable() {
    const using = seq("USING", plus(Source));
    return using;
  }
};

// ../core/src/abap/2_statements/expressions/provide_field_name.ts
var ProvideFieldName = class extends Expression {
  getRunnable() {
    return seq(regex(/^(?!(?:FROM|BETWEEN|WHERE)$)(\/\w+\/)?(\w+~(\w+|\*)|\w+)$/i), optPrio(seq(tok(Dash), regex(/^\w+$/i))));
  }
};

// ../core/src/abap/2_statements/expressions/radio_group_name.ts
var RadioGroupName = class extends Expression {
  getRunnable() {
    return regex(/^[\w\d%]+$/);
  }
};

// ../core/src/abap/2_statements/expressions/raise_with.ts
var RaiseWith = class extends Expression {
  getRunnable() {
    const wit = seq(
      SimpleSource1,
      opt(SimpleSource1),
      opt(SimpleSource1),
      opt(SimpleSource1)
    );
    const witComplex = seq(
      Source,
      opt(Source),
      opt(Source),
      opt(Source)
    );
    return seq("WITH", altPrio(witComplex, wit));
  }
};

// ../core/src/abap/2_statements/expressions/read_table_target.ts
var ReadTableTarget = class extends Expression {
  getRunnable() {
    const target = altPrio(
      seq("ASSIGNING", FSTarget),
      seq(optPrio("REFERENCE"), "INTO", Target),
      "TRANSPORTING NO FIELDS"
    );
    return target;
  }
};

// ../core/src/abap/2_statements/expressions/receive_parameters.ts
var ReceiveParameters = class extends Expression {
  getRunnable() {
    const importing = seq("IMPORTING", ParameterListT);
    const tables = seq("TABLES", ParameterListT);
    const changing = seq("CHANGING", ParameterListT);
    const exceptions = seq("EXCEPTIONS", opt(ParameterListExceptions), opt(Field));
    const long = seq(
      opt(importing),
      opt(changing),
      opt(tables),
      opt(exceptions)
    );
    return long;
  }
};

// ../core/src/abap/2_statements/expressions/redefinition.ts
var Redefinition = class extends Expression {
  getRunnable() {
    return seq(opt("FINAL"), "REDEFINITION");
  }
};

// ../core/src/abap/2_statements/expressions/reduce_next.ts
var ReduceNext = class extends Expression {
  getRunnable() {
    const calcAssign = ver(
      "v754" /* v754 */,
      alt(
        seq(tok(WPlus), "="),
        seq(tok(WDash), "="),
        "/=",
        "*=",
        "&&="
      )
    );
    const fields = seq(SimpleTarget, altPrio("=", calcAssign), Source);
    return seq("NEXT", plus(fields));
  }
};

// ../core/src/abap/2_statements/expressions/reduce_body.ts
var ReduceBody = class extends Expression {
  getRunnable() {
    const init = seq("INIT", plus(InlineFieldDefinition));
    return seq(
      opt(Let),
      init,
      plus(For),
      ReduceNext
    );
  }
};

// ../core/src/abap/2_statements/expressions/report_name.ts
var ReportName = class extends Expression {
  getRunnable() {
    return seq(regex(/^[\w/$%&=]+$/), star(seq(tok(Dash), regex(/^\w+$/))));
  }
};

// ../core/src/abap/2_statements/expressions/sql_field_name.ts
var SQLFieldName = class extends Expression {
  getRunnable() {
    return regex(/^(?!(?:SINGLE|INTO|DISTINCT|AS|WHERE|FOR|HAVING|APPENDING|UP|FROM)$)(\/\w+\/)?(\*?\w+~(\/\w+\/)?(\w+|\*)|\w+)$/i);
  }
};

// ../core/src/abap/2_statements/expressions/sql_order_by.ts
var SQLOrderBy = class extends Expression {
  getRunnable() {
    const ding = alt("ASCENDING", "DESCENDING");
    const ofields = plus(seq(SQLFieldName, opt(ding), opt(",")));
    const order = seq("ORDER BY", altPrio("PRIMARY KEY", Dynamic, ofields));
    return order;
  }
};

// ../core/src/abap/2_statements/expressions/sql_alias_field.ts
var SQLAliasField = class extends Expression {
  getRunnable() {
    return seq(regex(/^(\/\w+\/)?\w+~(\/\w+\/)?\w+$/), starPrio(seq(tok(Dash), regex(/^\w+$/))));
  }
};

// ../core/src/abap/2_statements/expressions/sql_cond.ts
var SQLCond = class _SQLCond extends Expression {
  getRunnable() {
    const operator = altPrio("AND", "OR");
    const paren = seq(
      tok(WParenLeftW),
      _SQLCond,
      altPrio(tok(WParenRightW), tok(ParenRightW))
    );
    const cnd = seq(optPrio("NOT"), altPrio(SQLCompare, paren));
    const ret = seq(cnd, starPrio(seq(operator, cnd)));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/sql_source.ts
var SQLSource = class extends Expression {
  getRunnable() {
    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));
    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleSource3, paren)), "open-abap" /* OpenABAP */);
    return altPrio(SQLAliasField, SimpleSource3, at);
  }
};

// ../core/src/abap/2_statements/expressions/sql_case.ts
var SQLCase = class _SQLCase extends Expression {
  getRunnable() {
    const abap = seq(tok(WAt), SimpleFieldChain2);
    const field = altPrio(
      SQLAggregation,
      _SQLCase,
      SQLFunction,
      SQLPath,
      SQLFieldName,
      Constant
    );
    const sub2 = seq(altPrio("+", "-", "*", "/", "&&"), optPrio(tok(WParenLeftW)), field, optPrio(tok(WParenRightW)));
    const sourc = altPrio(_SQLCase, SQLAggregation, SQLFunction, SQLFieldName, SQLSource, Constant);
    const val = altPrio(SQLCond, Constant, abap);
    const when = seq("WHEN", val, "THEN", sourc, starPrio(sub2));
    const els = seq("ELSE", sourc);
    return ver("v740sp05" /* v740sp05 */, seq("CASE", opt(altPrio(SQLFieldName, abap)), plusPrio(when), optPrio(els), "END"), "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/expressions/sql_function.ts
var SQLFunction = class extends Expression {
  getRunnable() {
    const castTypes = altPrio(
      seq("CHAR", optPrio(seq(tok(ParenLeftW), Integer, tok(WParenRightW)))),
      seq("DEC", tok(ParenLeftW), Integer, ",", Integer, tok(WParenRightW)),
      seq("NUMC", optPrio(seq(tok(ParenLeftW), Integer, tok(WParenRightW)))),
      "DATS",
      "FLTP",
      "INT2",
      "INT4",
      "INT8"
    );
    const commaParam = seq(",", SQLFunctionInput);
    const abs = ver("v740sp05" /* v740sp05 */, seq(regex(/^abs$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const castInput = altPrio(SQLCase, SQLFunctionInput);
    const cast = ver("v750" /* v750 */, seq(regex(/^cast$/i), tok(ParenLeftW), castInput, "AS", castTypes, tok(WParenRightW)));
    const ceil = ver("v740sp05" /* v740sp05 */, seq(regex(/^ceil$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const coalesce = ver("v740sp05" /* v740sp05 */, seq(regex(/^coalesce$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, optPrio(commaParam), tok(WParenRightW)));
    const concat = ver("v750" /* v750 */, seq(regex(/^concat$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const div = ver("v740sp05" /* v740sp05 */, seq(regex(/^div$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const floor = ver("v740sp05" /* v740sp05 */, seq(regex(/^floor$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const length = ver("v750" /* v750 */, seq(regex(/^length$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const lower = ver("v751" /* v751 */, seq(regex(/^lower$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const mod = ver("v740sp05" /* v740sp05 */, seq(regex(/^mod$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const replace = ver("v750" /* v750 */, seq(regex(/^replace$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));
    const round = ver("v750" /* v750 */, seq(regex(/^round$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const upper = ver("v751" /* v751 */, seq(regex(/^upper$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const uuid = ver("v754" /* v754 */, seq(regex(/^uuid$/i), tok(ParenLeftW), tok(WParenRightW)));
    const concat_with_space = ver("v751" /* v751 */, seq(regex(/^concat_with_space$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));
    const substring = ver("v750" /* v750 */, seq(regex(/^substring$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));
    const dats_is_valid = ver("v754" /* v754 */, seq(regex(/^dats_is_valid$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));
    const dats_days_between = ver("v754" /* v754 */, seq(regex(/^dats_days_between$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const dats_add_days = ver("v754" /* v754 */, seq(regex(/^dats_add_days$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const dats_add_months = ver("v754" /* v754 */, seq(regex(/^dats_add_months$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const ltrim = ver("v750" /* v750 */, seq(regex(/^ltrim$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const rtrim = ver("v750" /* v750 */, seq(regex(/^rtrim$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const right = ver("v750" /* v750 */, seq(regex(/^right$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const left = ver("v751" /* v751 */, seq(regex(/^left$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));
    const division = ver("v751" /* v751 */, seq(regex(/^division$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));
    return altPrio(
      uuid,
      abs,
      ceil,
      floor,
      cast,
      div,
      mod,
      coalesce,
      concat,
      replace,
      length,
      lower,
      upper,
      round,
      concat_with_space,
      ltrim,
      rtrim,
      right,
      left,
      substring,
      dats_is_valid,
      dats_days_between,
      dats_add_days,
      dats_add_months,
      division
    );
  }
};

// ../core/src/abap/2_statements/expressions/sql_function_input.ts
var SQLFunctionInput = class _SQLFunctionInput extends Expression {
  getRunnable() {
    const hostParen = seq(tok(ParenLeftW), Source, tok(WParenRightW));
    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleSource3, hostParen)));
    const parenInput = seq("(", _SQLFunctionInput, ")");
    const param = altPrio(parenInput, SQLCase, SQLFunction, SQLAggregation, SQLFieldName, SQLAliasField, Constant, at);
    const operator = altPrio("+", "-", "*", "/", "&&");
    return seq(param, starPrio(seq(operator, param)));
  }
};

// ../core/src/abap/2_statements/expressions/sql_over.ts
var lparen = tok(ParenLeftW);
var rparen = altPrio(tok(WParenRightW), tok(WParenRight));
var SQLOver = class extends Expression {
  getRunnable() {
    const partitionBy = seq("PARTITION", "BY", plus(seq(SQLFunctionInput, opt(","))));
    const unboundedPreceding = seq("UNBOUNDED", "PRECEDING");
    const unboundedFollowing = seq("UNBOUNDED", "FOLLOWING");
    const currentRow = seq("CURRENT", "ROW");
    const numBound = seq(SQLSource, altPrio("PRECEDING", "FOLLOWING"));
    const bound = altPrio(unboundedPreceding, unboundedFollowing, currentRow, numBound);
    const windowFrameSpec = ver("v757" /* v757 */, seq("ROWS", "BETWEEN", bound, "AND", bound));
    return ver(
      "v757" /* v757 */,
      seq(
        "OVER",
        lparen,
        optPrio(partitionBy),
        optPrio(SQLOrderBy),
        optPrio(windowFrameSpec),
        rparen
      )
    );
  }
};

// ../core/src/abap/2_statements/expressions/sql_aggregation.ts
var lparen2 = altPrio(tok(ParenLeft), tok(ParenLeftW));
var rparen2 = altPrio(tok(WParenRightW), tok(WParenRight), tok(ParenRightW));
var SQLAggregation = class extends Expression {
  getRunnable() {
    const arg = altPrio(ver("v740sp08" /* v740sp08 */, SQLFunctionInput), SQLFieldName);
    const avgRparen = altPrio(tok(WParenRightW), tok(WParenRight), tok(ParenRightW));
    const lenDecimals = seq(tok(ParenLeftW), SQLFunctionInput, ",", SQLFunctionInput, tok(WParenRightW));
    const avgCastType = altPrio(
      seq("DEC", lenDecimals),
      seq("CURR", lenDecimals),
      seq("QUAN", lenDecimals),
      "D16N",
      "D34N",
      "FLTP"
    );
    const count = seq("COUNT", lparen2, optPrio("DISTINCT"), altPrio("*", arg), rparen2, optPrio(SQLOver));
    const max = seq("MAX", lparen2, optPrio("DISTINCT"), arg, rparen2, optPrio(SQLOver));
    const min = seq("MIN", lparen2, optPrio("DISTINCT"), arg, rparen2, optPrio(SQLOver));
    const sum = seq("SUM", lparen2, optPrio("DISTINCT"), arg, rparen2, optPrio(SQLOver));
    const avg = seq(
      "AVG",
      tok(ParenLeftW),
      optPrio("DISTINCT"),
      arg,
      optPrio(ver("v751" /* v751 */, seq("AS", avgCastType))),
      avgRparen,
      optPrio(SQLOver)
    );
    const rank = ver("v757" /* v757 */, seq(altPrio("ROW_NUMBER", "RANK", "DENSE_RANK"), lparen2, rparen2, SQLOver));
    const leadLag = ver("v757" /* v757 */, seq(
      altPrio("LEAD", "LAG"),
      tok(ParenLeftW),
      SQLFunctionInput,
      optPrio(seq(",", SQLFunctionInput, optPrio(seq(",", SQLFunctionInput)))),
      rparen2,
      SQLOver
    ));
    const firstLastValue = ver("v757" /* v757 */, seq(
      altPrio("FIRST_VALUE", "LAST_VALUE"),
      tok(ParenLeftW),
      SQLFunctionInput,
      rparen2,
      SQLOver
    ));
    const stringAgg = ver("v757" /* v757 */, seq(
      "STRING_AGG",
      tok(ParenLeftW),
      SQLFunctionInput,
      optPrio(seq(",", SQLFunctionInput)),
      rparen2,
      optPrio(SQLOver)
    ));
    const ntile = ver("v757" /* v757 */, seq("NTILE", tok(ParenLeftW), SQLFunctionInput, rparen2, SQLOver));
    const corr = ver("v757" /* v757 */, seq(
      altPrio("CORR_SPEARMAN", "CORR"),
      tok(ParenLeftW),
      SQLFunctionInput,
      ",",
      SQLFunctionInput,
      rparen2,
      optPrio(SQLOver)
    ));
    const stat = ver("v757" /* v757 */, seq(
      altPrio("PRODUCT", "MEDIAN", "VAR", "STDDEV"),
      tok(ParenLeftW),
      SQLFunctionInput,
      rparen2,
      optPrio(SQLOver)
    ));
    return altPrio(
      rank,
      leadLag,
      firstLastValue,
      stringAgg,
      ntile,
      corr,
      stat,
      count,
      max,
      min,
      sum,
      avg
    );
  }
};

// ../core/src/abap/2_statements/expressions/sql_compare_operator.ts
var SQLCompareOperator = class extends Expression {
  getRunnable() {
    const operator = altPrio("=", "<>", "<", ">", "<=", ">=", "EQ", "NE", "GE", "GT", "LT", "LE", "><", "=>", "=<");
    return operator;
  }
};

// ../core/src/abap/2_statements/expressions/sql_having.ts
var SQLHaving = class extends Expression {
  getRunnable() {
    const cond = seq(SQLAggregation, SQLCompareOperator, SQLSource);
    const having = seq("HAVING", altPrio(Dynamic, cond));
    return having;
  }
};

// ../core/src/abap/2_statements/expressions/sql_into_structure.ts
var SQLIntoStructure = class extends Expression {
  getRunnable() {
    const intoSimple = seq(optPrio("CORRESPONDING FIELDS OF"), SQLTarget);
    return seq("INTO", intoSimple);
  }
};

// ../core/src/abap/2_statements/expressions/sql_hints.ts
var SQLHints = class extends Expression {
  getRunnable() {
    const type = altPrio("ORACLE", "ADABAS", "AS400", "DB2", "HDB", "MSSQLNT", "SYBASE", "DB6", "INFORMIX");
    const ret = seq("%_HINTS", plus(seq(type, alt(Constant, FieldSub))));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/sql_path.ts
var SQLPath = class extends Expression {
  getRunnable() {
    const condition = seq(tok(BracketLeftW), "ONE TO ONE WHERE", SQLCond, tok(WBracketRight));
    const ret = seq(AssociationName, optPrio(condition), tok(Dash), regex(/\w+/));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/sql_field_list_loop.ts
var SQLFieldListLoop = class extends Expression {
  getRunnable() {
    const comma = opt(ver("v740sp05" /* v740sp05 */, ",", "open-abap" /* OpenABAP */));
    const as = seq("AS", SQLAsName);
    const someField = seq(SQLField, comma);
    const abap = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), SimpleFieldChain2), "open-abap" /* OpenABAP */);
    const fieldList = seq(star(someField), alt(SQLFieldName, abap, SQLPath, Constant), optPrio(as), comma, star(someField));
    const fields = alt("*", Dynamic, fieldList);
    return fields;
  }
};

// ../core/src/abap/2_statements/expressions/sql_up_to.ts
var SQLUpTo = class extends Expression {
  getRunnable() {
    const up = seq("UP TO", SQLSource, "ROWS");
    return up;
  }
};

// ../core/src/abap/2_statements/expressions/sql_fields_loop.ts
var SQLFieldsLoop = class extends Expression {
  getRunnable() {
    return seq("FIELDS", opt("DISTINCT"), SQLFieldListLoop);
  }
};

// ../core/src/abap/2_statements/expressions/select_loop.ts
var SelectLoop = class extends Expression {
  getRunnable() {
    const where = seq("WHERE", SQLCond);
    const bypass = "BYPASSING BUFFER";
    const pack = seq("PACKAGE SIZE", SQLSource);
    const privileged = ver("v758" /* v758 */, SQLPrivilegedAccess);
    const tab = seq(SQLIntoTable, alt(pack, seq(SQLFrom, pack), seq(pack, SQLFrom)));
    const packTab = seq(pack, SQLIntoTable);
    const into = altPrio(SQLIntoStructure, SQLIntoList);
    const perm = per(
      SQLFrom,
      where,
      SQLUpTo,
      SQLOrderBy,
      SQLHaving,
      SQLClient,
      bypass,
      SQLGroupBy,
      SQLForAllEntries,
      DatabaseConnection,
      privileged,
      SQLOptions,
      alt(tab, SQLIntoStructure, SQLIntoList, packTab)
    );
    const strict = seq(
      SQLFrom,
      ver("v750" /* v750 */, SQLFieldsLoop),
      optPrio(SQLForAllEntries),
      optPrio(seq(where, optPrio(SQLOrderBy), into, optPrio(SQLUpTo)))
    );
    const aggrIntoBeforeFrom = seq(
      plusPrio(SQLAggregation),
      into,
      optPrio(SQLUpTo),
      SQLFrom,
      optPrio(SQLClient),
      optPrio(where),
      SQLGroupBy
    );
    const aggrIntoAfterFrom = seq(
      plusPrio(SQLAggregation),
      SQLFrom,
      optPrio(SQLClient),
      into,
      optPrio(SQLUpTo),
      optPrio(where),
      SQLGroupBy
    );
    const ret = seq(
      "SELECT",
      altPrio(seq(optPrio("DISTINCT"), SQLFieldListLoop, perm), strict, aggrIntoBeforeFrom, aggrIntoAfterFrom),
      optPrio(SQLHints),
      optPrio(privileged),
      optPrio(SQLOptions)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/sql_group_by.ts
var SQLGroupBy = class extends Expression {
  getRunnable() {
    const f = alt(SQLFieldName, Dynamic);
    const strict = seq(plus(seq(f, ",")), f);
    const group = seq("GROUP BY", altPrio(strict, plus(f)));
    return group;
  }
};

// ../core/src/abap/2_statements/expressions/select.ts
var Select = class extends Expression {
  getRunnable() {
    const into = altPrio(SQLIntoTable, SQLIntoStructure, SQLIntoList);
    const where = seq("WHERE", SQLCond);
    const offset = ver("v751" /* v751 */, seq("OFFSET", SQLSource));
    const bypass = str("BYPASSING BUFFER");
    const fields = ver("v750" /* v750 */, SQLFields, "open-abap" /* OpenABAP */);
    const privileged = ver("v758" /* v758 */, SQLPrivilegedAccess);
    const perm = per(
      SQLFrom,
      into,
      SQLForAllEntries,
      where,
      SQLOrderBy,
      SQLUpTo,
      offset,
      SQLClient,
      SQLHaving,
      bypass,
      SQLGroupBy,
      fields,
      DatabaseConnection,
      SQLHints,
      privileged,
      SQLOptions
    );
    const permSingle = per(
      SQLFrom,
      altPrio(SQLIntoStructure, SQLIntoList),
      where,
      SQLClient,
      bypass,
      SQLGroupBy,
      fields,
      DatabaseConnection,
      SQLHints,
      privileged,
      SQLOptions
    );
    const fieldList = optPrio(SQLFieldList);
    const single = seq("SINGLE", optPrio("FOR UPDATE"), fieldList, permSingle);
    const other = seq(optPrio("DISTINCT"), fieldList, perm);
    const ret = seq("SELECT", altPrio(single, other));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/simple_field_chain.ts
var SimpleFieldChain = class extends Expression {
  getRunnable() {
    const chain = starPrio(seq(tok(Dash), ComponentName));
    const clas = seq(ClassName, tok(StaticArrow), AttributeName);
    const start = altPrio(clas, Field);
    const ret = seq(start, chain);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/simple_field_chain2.ts
var SimpleFieldChain2 = class extends Expression {
  getRunnable() {
    const attr = seq(tok(InstanceArrow), AttributeName);
    const comp = seq(tok(Dash), ComponentName);
    const chain = star(altPrio(attr, comp));
    const clas = seq(ClassName, tok(StaticArrow), AttributeName);
    const start = altPrio(clas, SourceField, SourceFieldSymbol);
    const ret = seq(start, chain);
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/simple_name.ts
var SimpleName = class extends Expression {
  getRunnable() {
    return regex(/^[\w$%]+$/);
  }
};

// ../core/src/abap/2_statements/expressions/simple_source1.ts
var SimpleSource1 = class extends Expression {
  getRunnable() {
    const concat = seq("&&", StringTemplate2);
    const template = seq(StringTemplate2, star(concat));
    return alt(Constant, TextElement, MethodCallChain, template, FieldChain);
  }
};

// ../core/src/abap/2_statements/expressions/simple_source2.ts
var SimpleSource2 = class extends Expression {
  getRunnable() {
    const concat = seq("&&", StringTemplate2);
    const template = seq(StringTemplate2, star(concat));
    return altPrio(Constant, TextElement, template, FieldChain);
  }
};

// ../core/src/abap/2_statements/expressions/simple_source4.ts
var SimpleSource4 = class extends Expression {
  getRunnable() {
    return alt(Constant, TextElement, FieldChain, MethodCallChain);
  }
};

// ../core/src/abap/2_statements/expressions/simple_target.ts
var SimpleTarget = class extends Expression {
  getRunnable() {
    const attr = seq(tok(InstanceArrow), AttributeName);
    const comp = seq(tok(Dash), ComponentName);
    const something = starPrio(altPrio(Dereference, attr, comp, TableExpression));
    const cast = seq(altPrio(Cast, NewObject), Arrow, FieldAll);
    const clas = seq(ClassName, tok(StaticArrow), AttributeName);
    const start = altPrio(cast, clas, TargetField, TargetFieldSymbol);
    const fields = seq(optPrio(FieldOffset), optPrio(FieldLength));
    const optional = altPrio(TableBody, fields);
    return seq(start, something, optional);
  }
};

// ../core/src/abap/2_statements/expressions/source_field_symbol_chain.ts
var SourceFieldSymbolChain = class extends Expression {
  getRunnable() {
    const chain = seq(new ArrowOrDash(), ComponentName);
    return seq(FieldSymbol, starPrio(chain), optPrio(TableBody));
  }
};

// ../core/src/abap/2_statements/expressions/source_field_symbol.ts
var SourceFieldSymbol = class extends Expression {
  getRunnable() {
    return new FieldSymbol();
  }
};

// ../core/src/abap/2_statements/expressions/source_field.ts
var SourceField = class extends Expression {
  getRunnable() {
    return new Field();
  }
};

// ../core/src/abap/2_statements/expressions/sql_arithmetic_operator.ts
var SQLArithmeticOperator = class extends Expression {
  getRunnable() {
    const operator = altPrio(tok(WPlusW), tok(WDashW), "*", "/");
    return operator;
  }
};

// ../core/src/abap/2_statements/expressions/sql_arithmetics.ts
var SQLArithmetics = class extends Expression {
  getRunnable() {
    const field = alt(SQLFieldName, SQLFunction);
    return seq(field, starPrio(seq(SQLArithmeticOperator, field)));
  }
};

// ../core/src/abap/2_statements/expressions/sql_as_name.ts
var SQLAsName = class extends Expression {
  getRunnable() {
    const field = regex(/^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?]*(~\w+)?$/);
    return seq(field, starPrio(seq(tok(Dash), field)));
  }
};

// ../core/src/abap/2_statements/expressions/sql_bypassing_buffer.ts
var SQLBypassingBuffer = class extends Expression {
  getRunnable() {
    return str("BYPASSING BUFFER");
  }
};

// ../core/src/abap/2_statements/expressions/sql_cds_parameters.ts
var SQLCDSParameters = class extends Expression {
  getRunnable() {
    const param = seq(Field, "=", alt(seq(tok(WAt), FieldChain), Constant));
    return seq("(", param, starPrio(seq(",", param)), ")");
  }
};

// ../core/src/abap/2_statements/expressions/sql_source_simple.ts
var SQLSourceSimple = class extends Expression {
  getRunnable() {
    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));
    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), alt(SimpleSource3, paren)), "open-abap" /* OpenABAP */);
    return alt(SimpleSource3, at);
  }
};

// ../core/src/abap/2_statements/expressions/sql_client.ts
var SQLClient = class extends Expression {
  getRunnable() {
    const client = alt(
      verNot("Cloud" /* Cloud */, "CLIENT SPECIFIED"),
      seq("USING", alt(
        ver("v740sp05" /* v740sp05 */, seq("CLIENT", SQLSourceSimple)),
        ver("v754" /* v754 */, seq("CLIENTS IN", alt(SQLSourceSimple, "T000"))),
        ver("v754" /* v754 */, "ALL CLIENTS")
      ))
    );
    return client;
  }
};

// ../core/src/abap/2_statements/expressions/sql_compare.ts
var SQLCompare = class extends Expression {
  getRunnable() {
    const subSelect = seq("(", Select, ")");
    const subSelectDouble = seq("(", "(", Select, ")", ")");
    const between = seq("BETWEEN", SQLSource, "AND", SQLSource);
    const like = seq("LIKE", SQLSource, optPrio(seq("ESCAPE", SQLSource)));
    const nul = seq("IS", optPrio("NOT"), altPrio("NULL", ver("v753" /* v753 */, "INITIAL")));
    const source = new SQLSource();
    const sub2 = seq(optPrio(altPrio("ALL", "ANY", "SOME")), altPrio(subSelect, subSelectDouble));
    const arith = ver("v750" /* v750 */, plusPrio(seq(altPrio("+", "-", "*", "/"), SQLFieldName)), "open-abap" /* OpenABAP */);
    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));
    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleSource3, paren)), "open-abap" /* OpenABAP */);
    const rett = seq(
      altPrio(SQLAggregation, SQLFunction, ConstantString, seq(altPrio(SQLPath, SQLFieldName), optPrio(arith)), at),
      altPrio(
        seq(SQLCompareOperator, altPrio(sub2, source)),
        seq(optPrio("NOT"), altPrio(SQLIn, like, between)),
        nul
      )
    );
    const exists = seq("EXISTS", subSelect);
    return altPrio(exists, Dynamic, rett);
  }
};

// ../core/src/abap/2_statements/expressions/sql_field_and_value.ts
var SQLFieldAndValue = class extends Expression {
  getRunnable() {
    const opt1 = seq(altPrio(Integer, SQLFieldName), SQLArithmeticOperator, SQLSource);
    const param = seq(SQLFieldName, "=", altPrio(opt1, SQLSource));
    return param;
  }
};

// ../core/src/abap/2_statements/expressions/sql_field_list.ts
var SQLFieldList = class extends Expression {
  getRunnable() {
    const as = seq("AS", SQLAsName);
    const commaParenField = seq(tok(ParenLeftW), SQLFieldName, altPrio(tok(WParenRightW), tok(WParenRight)), optPrio(as));
    const nev = ver("v740sp05" /* v740sp05 */, starPrio(seq(",", altPrio(SQLField, commaParenField))), "open-abap" /* OpenABAP */);
    const old = starPrio(SQLField);
    return altPrio(
      "*",
      Dynamic,
      seq(SQLField, alt(nev, old))
    );
  }
};

// ../core/src/abap/2_statements/expressions/sql_field.ts
var SQLField = class extends Expression {
  getRunnable() {
    const atParen = seq(tok(ParenLeftW), SimpleFieldChain2, tok(WParenRightW));
    const abap = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleFieldChain2, atParen)), "open-abap" /* OpenABAP */);
    const as = seq("AS", SQLAsName);
    const parenFieldName = seq(tok(WParenLeftW), SQLFieldName, altPrio(tok(WParenRightW), tok(WParenRight)));
    const fieldNoAgg = altPrio(
      SQLCase,
      SQLFunction,
      SQLPath,
      SQLFieldName,
      abap,
      Constant,
      parenFieldName
    );
    const field = altPrio(SQLAggregation, fieldNoAgg);
    const parenField = seq(tok(WParenLeftW), field, tok(WParenRightW));
    const parenFieldNoAgg = seq(tok(WParenLeftW), fieldNoAgg, tok(WParenRightW));
    const subNoAgg = plusPrio(seq(altPrio("+", "-", "*", "/", "&&"), altPrio(parenFieldNoAgg, fieldNoAgg)));
    const arithNoAgg = ver("v740sp05" /* v740sp05 */, subNoAgg);
    const subWithAgg = plusPrio(seq(altPrio("+", "-", "*", "/", "&&"), altPrio(parenField, field)));
    const arithWithAgg = ver("v754" /* v754 */, subWithAgg);
    const arith = altPrio(arithWithAgg, arithNoAgg);
    const arithSequence = seq(field, optPrio(arith));
    const parenArithSequence = seq(tok(WParenLeftW), arithSequence, tok(WParenRightW));
    return seq(altPrio(parenArithSequence, arithSequence), optPrio(as));
  }
};

// ../core/src/abap/2_statements/expressions/sql_fields.ts
var SQLFields = class extends Expression {
  getRunnable() {
    return seq("FIELDS", opt("DISTINCT"), SQLFieldList);
  }
};

// ../core/src/abap/2_statements/expressions/sql_for_all_entries.ts
var SQLForAllEntries = class extends Expression {
  getRunnable() {
    const forAll = seq("FOR ALL ENTRIES IN", SQLSource);
    return forAll;
  }
};

// ../core/src/abap/2_statements/expressions/with_name.ts
var WithName = class extends Expression {
  getRunnable() {
    return seq(tok(WPlus), regex(/^\w+$/));
  }
};

// ../core/src/abap/2_statements/expressions/sql_from_source.ts
var SQLFromSource = class extends Expression {
  getRunnable() {
    const tab = ver("v752" /* v752 */, seq(tok(WAt), FieldChain));
    const aas = seq("AS", SQLAsName);
    const privileged = ver("v752" /* v752 */, seq("WITH", SQLPrivilegedAccess));
    return seq(
      altPrio(WithName, seq(DatabaseTable, optPrio(SQLCDSParameters)), tab),
      optPrio(privileged),
      optPrio(aas)
    );
  }
};

// ../core/src/abap/2_statements/expressions/sql_from.ts
var SQLFrom = class extends Expression {
  // todo: rewrite/refactor this method
  getRunnable() {
    const joins = starPrio(seq(optPrio(tok(WParenRightW)), SQLJoin));
    const from0 = seq("FROM", SQLFromSource, joins);
    const from1 = seq("FROM", tok(WParenLeftW), SQLFromSource, joins, optPrio(tok(WParenRightW)));
    const from2 = seq(
      "FROM",
      tok(WParenLeftW),
      tok(WParenLeftW),
      SQLFromSource,
      joins,
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW))
    );
    const from3 = seq(
      "FROM",
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      SQLFromSource,
      joins,
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW))
    );
    const from4 = seq(
      "FROM",
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      SQLFromSource,
      joins,
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW))
    );
    const from5 = seq(
      "FROM",
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      SQLFromSource,
      joins,
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW))
    );
    const from6 = seq(
      "FROM",
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      SQLFromSource,
      joins,
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW))
    );
    const from7 = seq(
      "FROM",
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      tok(WParenLeftW),
      SQLFromSource,
      joins,
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW)),
      optPrio(tok(WParenRightW))
    );
    const source = altPrio(from7, from6, from5, from4, from3, from2, from1, from0);
    return source;
  }
};

// ../core/src/abap/2_statements/expressions/sql_in.ts
var SQLIn = class extends Expression {
  getRunnable() {
    const val = new SQLSource();
    const short = new SQLSourceNoSpace();
    const listOld = seq(tok(WParenLeft), alt(ver("v740sp05" /* v740sp05 */, short, "open-abap" /* OpenABAP */), val), starPrio(seq(",", val)), altPrio(tok(ParenRight), tok(ParenRightW), tok(WParenRightW)));
    const listNew = seq(tok(WParenLeftW), val, starPrio(seq(",", altPrio(short, val))), altPrio(tok(WParenRight), tok(WParenRightW)));
    const listNeww = ver("v740sp02" /* v740sp02 */, listNew, "open-abap" /* OpenABAP */);
    const subSelect = seq("(", Select, ")");
    const inn = seq("IN", altPrio(subSelect, listOld, listNeww, SQLSource));
    return inn;
  }
};

// ../core/src/abap/2_statements/expressions/sql_into_list.ts
var SQLIntoList = class extends Expression {
  getRunnable() {
    const intoList = seq(
      altPrio(tok(WParenLeft), ver("v740sp02" /* v740sp02 */, tok(WParenLeftW), "open-abap" /* OpenABAP */)),
      starPrio(seq(SQLTarget, ",")),
      SQLTarget,
      ")"
    );
    return seq("INTO", intoList);
  }
};

// ../core/src/abap/2_statements/expressions/sql_into_table.ts
var SQLIntoTable = class extends Expression {
  getRunnable() {
    const into = seq(
      altPrio("INTO", "APPENDING"),
      optPrio("CORRESPONDING FIELDS OF"),
      "TABLE",
      SQLTarget
    );
    return into;
  }
};

// ../core/src/abap/2_statements/expressions/sql_join.ts
var SQLJoin = class extends Expression {
  getRunnable() {
    const joinType = seq(optPrio(altPrio("INNER", "LEFT OUTER", "LEFT", "RIGHT OUTER", "RIGHT")), "JOIN");
    const join = seq(joinType, SQLFromSource, "ON", SQLCond);
    return join;
  }
};

// ../core/src/abap/2_statements/expressions/sql_options.ts
var SQLOptions = class extends Expression {
  getRunnable() {
    const usingClients = alt(
      seq("CLIENTS IN", alt(SQLSourceSimple, "T000")),
      "ALL CLIENTS",
      seq("CLIENT", SQLSourceSimple)
    );
    const privilegedAccess = ver("v758" /* v758 */, SQLPrivilegedAccess);
    const general = per(privilegedAccess, SQLBypassingBuffer, DatabaseConnection);
    const usingClause = seq("USING", usingClients, optPrio(general));
    return ver("v758" /* v758 */, seq("OPTIONS", alt(usingClause, general)));
  }
};

// ../core/src/abap/2_statements/expressions/sql_privileged_access.ts
var SQLPrivilegedAccess = class extends Expression {
  getRunnable() {
    const accessLevel = ver("Cloud" /* Cloud */, seq("LEVEL", SQLSourceSimple));
    return seq("PRIVILEGED ACCESS", optPrio(accessLevel));
  }
};

// ../core/src/abap/2_statements/expressions/sql_source_no_space.ts
var SQLSourceNoSpace = class extends Expression {
  getRunnable() {
    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));
    const at = ver("v740sp05" /* v740sp05 */, seq(tok(At), altPrio(SimpleSource3, paren)), "open-abap" /* OpenABAP */);
    return alt(SQLAliasField, SimpleSource3, at);
  }
};

// ../core/src/abap/2_statements/expressions/sql_target.ts
var SQLTarget = class extends Expression {
  getRunnable() {
    const n = ver("v754" /* v754 */, "NEW");
    const at = ver("v740sp05" /* v740sp05 */, seq(opt(n), altPrio(tok(WAt), tok(At)), Target), "open-abap" /* OpenABAP */);
    return altPrio(at, Target);
  }
};

// ../core/src/abap/2_statements/expressions/string_template_formatting.ts
var StringTemplateFormatting = class extends Expression {
  getRunnable() {
    const alphaOptions = altPrio("OUT", "RAW", "IN", Source);
    const alignOptions = altPrio("LEFT", "RIGHT", "CENTER", Source, Dynamic);
    const dateTimeOptions = altPrio("RAW", "ISO", "USER", "ENVIRONMENT", Source, Dynamic);
    const timeStampOptions = altPrio("SPACE", "ISO", "USER", "ENVIRONMENT", Source, Dynamic);
    const numberOptions = altPrio("RAW", "USER", "ENVIRONMENT", Source, Dynamic);
    const signOptions = altPrio("LEFT", "LEFTPLUS", "LEFTSPACE", "RIGHT", "RIGHTPLUS", "RIGHTSPACE", Source);
    const caseOptions = altPrio("RAW", "UPPER", "LOWER", Source, Dynamic);
    const zeroXSDOptions = altPrio("YES", "NO", Source);
    const styleOptions = altPrio(
      "SIMPLE",
      "SIGN_AS_POSTFIX",
      "SCALE_PRESERVING",
      "SCIENTIFIC",
      "SCIENTIFIC_WITH_LEADING_ZERO",
      "SCALE_PRESERVING_SCIENTIFIC",
      "ENGINEERING",
      Source
    );
    const width = seq("WIDTH =", Source);
    const align = seq("ALIGN =", alignOptions);
    const timezone = seq("TIMEZONE =", Source);
    const timestamp = seq("TIMESTAMP =", timeStampOptions);
    const pad = seq("PAD =", Source);
    const number = seq("NUMBER =", numberOptions);
    const sign = seq("SIGN =", signOptions);
    const decimals = seq("DECIMALS =", Source);
    const alpha = ver("v740sp02" /* v740sp02 */, seq("ALPHA =", alphaOptions), "open-abap" /* OpenABAP */);
    const xsd = ver("v740sp02" /* v740sp02 */, seq("XSD =", zeroXSDOptions));
    const country = seq("COUNTRY =", Source);
    const formatting = altPrio(
      seq("TIME =", dateTimeOptions),
      seq("DATE =", dateTimeOptions),
      seq("CASE =", caseOptions),
      seq("EXPONENT", Source),
      seq("ZERO =", zeroXSDOptions),
      xsd,
      seq("STYLE =", styleOptions),
      seq("CURRENCY =", Source),
      per(sign, number, decimals, width, pad, alpha, align, country),
      per(timezone, timestamp)
    );
    return formatting;
  }
};

// ../core/src/abap/2_statements/expressions/string_template_source.ts
var StringTemplateSource = class extends Expression {
  getRunnable() {
    const ret = seq(Source, optPrio(StringTemplateFormatting));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/string_template.ts
var StringTemplate2 = class extends Expression {
  getRunnable() {
    const nest = seq(
      tok(StringTemplateBegin),
      StringTemplateSource,
      starPrio(seq(tok(StringTemplateMiddle), StringTemplateSource)),
      tok(StringTemplateEnd)
    );
    return ver("v702" /* v702 */, altPrio(nest, tok(StringTemplate)));
  }
};

// ../core/src/abap/2_statements/expressions/super_class_name.ts
var SuperClassName = class extends Expression {
  getRunnable() {
    return new ClassName();
  }
};

// ../core/src/abap/2_statements/expressions/switch_body.ts
var SwitchBody = class extends Expression {
  getRunnable() {
    const or = seq("OR", Source);
    const swhen = seq("WHEN", Source, star(or), "THEN", alt(Source, Throw));
    return seq(
      opt(Let),
      Source,
      plus(swhen),
      opt(seq("ELSE", alt(Source, Throw)))
    );
  }
};

// ../core/src/abap/2_statements/expressions/table_expression.ts
var TableExpression = class extends Expression {
  getRunnable() {
    const fields = plus(seq(altPrio(ComponentChainSimple, Dynamic), "=", Source));
    const key = seq("KEY", SimpleName);
    const index = seq("INDEX", Source);
    const ret = seq(
      tok(BracketLeftW),
      alt(Source, seq(optPrio(key), opt("COMPONENTS"), altPrio(fields, index))),
      altPrio(tok(WBracketRight), tok(WBracketRightW))
    );
    return ver("v740sp02" /* v740sp02 */, ret, "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/expressions/target_field_symbol.ts
var TargetFieldSymbol = class extends Expression {
  getRunnable() {
    return seq(FieldSymbol, optPrio(TableBody));
  }
};

// ../core/src/abap/2_statements/expressions/target_field.ts
var TargetField = class extends Expression {
  getRunnable() {
    return new Field();
  }
};

// ../core/src/abap/2_statements/expressions/test_seam_name.ts
var TestSeamName = class extends Expression {
  getRunnable() {
    const ret = seq(regex(/^[\w%\$\*]+$/), starPrio(seq(tok(Dash), regex(/^[\w%\$\*]+$/))));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/text_element_key.ts
var TextElementKey = class extends Expression {
  getRunnable() {
    return regex(/^\w{3}$/);
  }
};

// ../core/src/abap/2_statements/expressions/text_element_string.ts
var TextElementString = class extends Expression {
  getRunnable() {
    const text = seq(tok(ParenLeft), TextElementKey, tok(ParenRightW));
    const stri = seq(regex(/^('.*')|(`.*`)$/), text);
    return stri;
  }
};

// ../core/src/abap/2_statements/expressions/throw.ts
var Throw = class extends Expression {
  getRunnable() {
    const message = seq(
      "MESSAGE",
      MessageSource,
      opt(RaiseWith)
    );
    return seq(
      "THROW",
      opt("RESUMABLE"),
      ClassName,
      altPrio(tok(ParenLeftW), tok(ParenLeft)),
      opt(alt(Source, ParameterListS, message)),
      altPrio(tok(WParenRightW), tok(ParenRightW))
    );
  }
};

// ../core/src/abap/2_statements/expressions/transporting_fields.ts
var TransportingFields = class extends Expression {
  getRunnable() {
    const fields = plus(alt(seq("INTO", failStar()), FieldSub));
    return altPrio(Dynamic, fields);
  }
};

// ../core/src/abap/2_statements/expressions/type_name_or_infer.ts
var TypeNameOrInfer = class extends Expression {
  getRunnable() {
    return altPrio("#", TypeName);
  }
};

// ../core/src/abap/2_statements/expressions/type_name.ts
var TypeName = class extends Expression {
  getRunnable() {
    const name = regex(/^[\w~\/%$]+$/);
    const cla = seq(name, alt(tok(StaticArrow), tok(InstanceArrow)));
    const field = seq(tok(Dash), name);
    return seq(opt(cla), name, starPrio(field));
  }
};

// ../core/src/abap/2_statements/expressions/type_param.ts
var TypeParam = class extends Expression {
  getRunnable() {
    const table = seq(
      altPrio("STANDARD", "HASHED", "INDEX", "SORTED", "ANY"),
      "TABLE"
    );
    const foo = seq(optPrio(seq(table, "OF")), optPrio("REF TO"));
    const typeLine = "LINE OF";
    const ret = seq(
      alt(foo, typeLine),
      TypeNameOrInfer,
      opt(Default)
    );
    const like = seq("LIKE", opt("LINE OF"), FieldChain, optPrio(Default));
    return alt(seq("TYPE", alt(table, ret)), like);
  }
};

// ../core/src/abap/2_statements/expressions/type_structure.ts
var TypeStructure = class extends Expression {
  getRunnable() {
    const hier = seq("HIERARCHY", NamespaceSimpleName);
    const create = seq("CREATE", alt(NamespaceSimpleName, EntityAssociation));
    const update = seq("UPDATE", alt(NamespaceSimpleName, EntityAssociation));
    const readResult = seq("READ RESULT", alt(NamespaceSimpleName, EntityAssociation));
    const readLink = seq("READ LINK", EntityAssociation);
    const action = seq("ACTION IMPORT", Source);
    const permissionsRequest = seq("PERMISSIONS REQUEST", NamespaceSimpleName);
    const evt = seq("EVENT", EventName);
    const failedEarly = seq("FAILED EARLY", NamespaceSimpleName);
    const mappedEarly = seq("MAPPED EARLY", NamespaceSimpleName);
    const reportedEarly = seq("REPORTED EARLY", NamespaceSimpleName);
    const structure = seq("STRUCTURE FOR", altPrio(hier, evt, create, update, action, permissionsRequest, readLink, readResult));
    const response = seq("RESPONSE FOR", altPrio(failedEarly, mappedEarly, reportedEarly));
    const request = seq("REQUEST FOR CHANGE", NamespaceSimpleName);
    return seq("TYPE", altPrio(structure, response, request));
  }
};

// ../core/src/abap/2_statements/expressions/type_table_key.ts
var TypeTableKey = class extends Expression {
  getRunnable() {
    const uniqueness = alt("NON-UNIQUE", "UNIQUE");
    const defaultKey = "DEFAULT KEY";
    const emptyKey = ver("v740sp02" /* v740sp02 */, "EMPTY KEY", "open-abap" /* OpenABAP */);
    const components = plus(alt(seq("WITH", failStar()), FieldSub));
    const further = seq(alt("WITHOUT", "WITH"), "FURTHER SECONDARY KEYS");
    const alias = seq("ALIAS", Field);
    const key = seq(
      "WITH",
      opt(uniqueness),
      altPrio(
        defaultKey,
        emptyKey,
        seq(
          opt(alt("SORTED", "HASHED")),
          "KEY",
          alt(
            seq(Field, opt(alias), "COMPONENTS", components),
            components
          )
        )
      ),
      optPrio(further),
      optPrio("READ-ONLY")
    );
    return key;
  }
};

// ../core/src/abap/2_statements/expressions/type_table.ts
var TypeTable = class extends Expression {
  getRunnable() {
    const header = "WITH HEADER LINE";
    const initial = seq("INITIAL SIZE", Constant);
    const generic = seq(opt(alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY")), "TABLE");
    const normal1 = seq(
      opt(alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY")),
      "TABLE OF",
      optPrio("REF TO"),
      TypeName
    );
    const likeType = seq(
      opt(alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY")),
      "TABLE OF",
      optPrio("REF TO"),
      opt(FieldChain),
      opt(per(header, initial, plusPrio(TypeTableKey)))
    );
    const rangeType = seq("RANGE OF", TypeName, optPrio(header), optPrio(initial), optPrio("VALUE IS INITIAL"));
    const rangeLike = seq("RANGE OF", FieldChain, optPrio(header), optPrio(initial), optPrio("VALUE IS INITIAL"));
    const typetable = alt(generic, seq(
      normal1,
      alt(
        opt(per(header, initial, plusPrio(TypeTableKey))),
        seq(plus(TypeTableKey), optPrio(initial))
      ),
      optPrio("VALUE IS INITIAL")
    ));
    const occurs = seq("OCCURS", altPrio(Integer, FieldChain));
    const derived = ver("v754" /* v754 */, seq("TABLE FOR", altPrio(
      "ACTION IMPORT",
      "ACTION RESULT",
      "CREATE",
      "EVENT",
      "REPORTED EARLY",
      "READ IMPORT",
      "FAILED EARLY",
      "FAILED",
      "LOCK",
      "DETERMINATION",
      "READ RESULT",
      "UPDATE",
      "DELETE"
    ), alt(TypeName, EntityAssociation)));
    const oldType = seq(opt("REF TO"), TypeName, alt(seq(occurs, opt(header)), header));
    const oldLike = seq(opt("REF TO"), FieldChain, alt(seq(occurs, opt(header)), header));
    const typeLine = seq("LINE OF", TypeName, occurs, header);
    const ret = altPrio(
      seq(occurs, opt(header)),
      seq("LIKE", alt(oldLike, likeType, rangeLike, typeLine)),
      seq("TYPE", alt(oldType, typetable, rangeType, typeLine, derived))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/type.ts
var Type = class extends Expression {
  getRunnable() {
    const indicators = seq("WITH INDICATORS", ComponentName, optPrio(seq("TYPE", TypeName)));
    const typeType = seq(TypeName, optPrio(Default));
    const like = altPrio(
      seq("LINE OF", FieldChain),
      seq("REF TO", FieldChain),
      FieldChain
    );
    const type = altPrio(
      seq("LINE OF", typeType),
      seq("REF TO", typeType),
      seq(typeType, optPrio(LOBHandle))
    );
    const ret = seq(altPrio(seq("LIKE", like), seq("TYPE", type)), optPrio(ver("v755" /* v755 */, indicators)));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/value_base.ts
var ValueBase = class extends Expression {
  getRunnable() {
    return seq("BASE", Source);
  }
};

// ../core/src/abap/2_statements/expressions/value_body_lines.ts
var ValueBodyLines = class extends Expression {
  getRunnable() {
    const range = seq(optPrio(seq("FROM", Source)), optPrio(seq("TO", Source)));
    const lines = seq("LINES OF", Source, range);
    return lines;
  }
};

// ../core/src/abap/2_statements/expressions/value_body_line.ts
var ValueBodyLine = class extends Expression {
  getRunnable() {
    const ret = seq(
      altPrio(tok(WParenLeftW), tok(WParenLeft)),
      optPrio(altPrio(plusPrio(FieldAssignment), ValueBodyLines, Source)),
      altPrio(tok(WParenRightW), tok(ParenRightW))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/value_body.ts
var ValueBody = class extends Expression {
  getRunnable() {
    const strucOrTab = seq(optPrio(Let), optPrio(ValueBase), star(For), plusPrio(altPrio(FieldAssignment, ValueBodyLine)));
    const tabdef = ver("v740sp08" /* v740sp08 */, altPrio("OPTIONAL", seq("DEFAULT", Source)), "open-abap" /* OpenABAP */);
    return optPrio(altPrio(strucOrTab, seq(Source, optPrio(tabdef))));
  }
};

// ../core/src/abap/2_statements/expressions/value.ts
var Value = class extends Expression {
  getRunnable() {
    const ret = seq("VALUE", alt(Constant, SimpleFieldChain, "IS INITIAL"));
    return ret;
  }
};

// ../core/src/abap/2_statements/expressions/write_offset_length.ts
var WriteOffsetLength = class extends Expression {
  getRunnable() {
    const post = seq(alt(SimpleFieldChain2, regex(/^[\d]+$/), regex(/^\*$/)), alt(tok(ParenRightW), tok(ParenRight)));
    const wlength = seq(tok(WParenLeft), post);
    const length = seq(alt(tok(WParenLeft), tok(ParenLeft)), post);
    const complex = alt(
      wlength,
      seq(alt(SimpleFieldChain2, regex(/^\/?[\w\d]+$/), "/"), opt(length))
    );
    const at = seq(opt("AT"), complex);
    return at;
  }
};

// ../core/src/abap/2_statements/statements/data.ts
var Data = class {
  getMatcher() {
    return seq("DATA", DataDefinition, optPrio("%_PREDEFINED"));
  }
};

// ../core/src/abap/2_statements/statements/report.ts
var Report = class {
  getMatcher() {
    const more = seq(tok(ParenLeft), Integer, alt(tok(ParenRightW), tok(ParenRight)));
    const heading = str("NO STANDARD PAGE HEADING");
    const size = seq("LINE-SIZE", Integer);
    const count = seq("LINE-COUNT", Integer, opt(more));
    const message = seq("MESSAGE-ID", MessageClass);
    const database = seq("USING DATABASE", Field);
    const ret = seq(
      "REPORT",
      opt(ReportName),
      opt(per(heading, size, count, database, message))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/write.ts
var Write = class {
  getMatcher() {
    const mask = seq(
      "USING",
      altPrio(
        "NO EDIT MASK",
        seq("EDIT MASK", Source)
      )
    );
    const onOff = alt(altPrio("ON", "OFF"), seq("=", FieldSub));
    const dateFormat = altPrio(
      "DD/MM/YY",
      "MM/DD/YY",
      "DD/MM/YYYY",
      "MM/DD/YYYY",
      "DDMMYY",
      "MMDDYY",
      "YYMMDD"
    );
    const as = seq("AS", altPrio("LINE", "ICON", "CHECKBOX", "SYMBOL"));
    const to = seq("TO", Target);
    const options = per(
      mask,
      to,
      seq("EXPONENT", Source),
      "NO-GROUPING",
      "NO-ZERO",
      "CENTERED",
      seq("INPUT", opt(onOff)),
      "NO-GAP",
      "LEFT-JUSTIFIED",
      as,
      seq("FRAMES", onOff),
      seq("HOTSPOT", opt(onOff)),
      "RIGHT-JUSTIFIED",
      seq("TIME ZONE", Source),
      seq("UNDER", Source),
      seq("STYLE", Source),
      seq("ROUND", Source),
      seq("QUICKINFO", Source),
      "ENVIRONMENT TIME FORMAT",
      dateFormat,
      seq("UNIT", Source),
      seq("INTENSIFIED", opt(onOff)),
      seq("INDEX", Source),
      seq("DECIMALS", Source),
      seq("INVERSE", opt(onOff)),
      Color,
      seq("CURRENCY", Source),
      "RESET",
      "NO-SIGN"
    );
    const ret = seq("WRITE", alt(
      seq("AT /", opt(Source), opt("NO-GAP")),
      seq(
        opt(WriteOffsetLength),
        alt(Source, Dynamic, "/"),
        opt(options)
      )
    ));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/endmethod.ts
var EndMethod = class {
  getMatcher() {
    return str("ENDMETHOD");
  }
};

// ../core/src/abap/2_statements/statements/method_implementation.ts
var MethodImplementation = class {
  getMatcher() {
    const name = regex(/[\w~]+/);
    const kernel = seq(
      "KERNEL MODULE",
      plus(name),
      optPrio(altPrio("FAIL", "IGNORE"))
    );
    const using = seq("USING", plus(SimpleFieldChain));
    const database = seq(
      "DATABASE",
      alt("PROCEDURE", "FUNCTION", "GRAPH WORKSPACE"),
      "FOR HDB",
      Language,
      opt("OPTIONS READ-ONLY"),
      opt(using)
    );
    const by = seq("BY", alt(kernel, database));
    return seq("METHOD", MethodName, optPrio(by));
  }
};

// ../core/src/abap/2_statements/statements/endform.ts
var EndForm = class {
  getMatcher() {
    const ret = str("ENDFORM");
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/form.ts
var Form = class {
  getMatcher() {
    const parameters = seq(
      opt(FormTables),
      opt(FormUsing),
      opt(FormChanging),
      opt(FormRaising)
    );
    const ret = seq("FORM", FormName, alt("IMPLEMENTATION", parameters));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/import_nametab.ts
var ImportNametab = class {
  getMatcher() {
    const ret = seq(
      "IMPORT NAMETAB",
      Target,
      Target,
      "ID",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/check_select_options.ts
var CheckSelectOptions = class {
  getMatcher() {
    const ret = "CHECK SELECT-OPTIONS";
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_badi.ts
var CallBadi = class {
  getMatcher() {
    const call = seq(
      "CALL BADI",
      MethodSource,
      MethodCallBody
    );
    return verNot("Cloud" /* Cloud */, call);
  }
};

// ../core/src/abap/2_statements/statements/class_data.ts
var ClassData = class {
  getMatcher() {
    return seq("CLASS-DATA", DataDefinition);
  }
};

// ../core/src/abap/2_statements/statements/class_data_begin.ts
var ClassDataBegin = class {
  getMatcher() {
    const occurs = seq("OCCURS", Integer);
    const structure = seq(
      "BEGIN OF",
      optPrio("COMMON PART"),
      NamespaceSimpleName,
      optPrio("READ-ONLY"),
      optPrio(occurs)
    );
    return seq("CLASS-DATA", structure);
  }
};

// ../core/src/abap/2_statements/statements/class_data_end.ts
var ClassDataEnd = class {
  getMatcher() {
    const common = seq("COMMON PART", optPrio(NamespaceSimpleName));
    const structure = seq(
      "END OF",
      altPrio(common, NamespaceSimpleName)
    );
    return seq("CLASS-DATA", structure);
  }
};

// ../core/src/abap/2_statements/statements/select_loop.ts
var SelectLoop2 = class {
  getMatcher() {
    return new SelectLoop();
  }
};

// ../core/src/abap/2_statements/statements/do.ts
var Do = class {
  getMatcher() {
    const range = seq("RANGE", Source);
    const vary = seq(
      "VARYING",
      Target,
      "FROM",
      Source,
      "NEXT",
      Source,
      optPrio(range)
    );
    const times = seq(Source, "TIMES");
    return seq("DO", optPrio(per(plus(vary), times)));
  }
};

// ../core/src/abap/2_statements/statements/break_id.ts
var BreakId = class {
  getMatcher() {
    const id = seq("ID", Field);
    const ret = seq("BREAK-POINT", id);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/interface_deferred.ts
var InterfaceDeferred = class {
  getMatcher() {
    return seq(
      "INTERFACE",
      InterfaceName,
      "DEFERRED",
      opt("PUBLIC")
    );
  }
};

// ../core/src/abap/2_statements/statements/while.ts
var While = class {
  getMatcher() {
    const vary = seq("VARY", Target, "FROM", Source, "NEXT", Source);
    return seq("WHILE", Cond, star(vary));
  }
};

// ../core/src/abap/2_statements/statements/loop_at_screen.ts
var LoopAtScreen = class {
  getMatcher() {
    const l = seq("LOOP AT SCREEN", opt(seq("INTO", Target)));
    return verNot("Cloud" /* Cloud */, l);
  }
};

// ../core/src/abap/2_statements/statements/loop.ts
var Loop = class {
  getMatcher() {
    const where = seq("WHERE", alt(ComponentCond, Dynamic));
    const group = ver("v740sp08" /* v740sp08 */, seq("GROUP BY", LoopGroupBy), "open-abap" /* OpenABAP */);
    const step = ver("v757" /* v757 */, seq("STEP", Source));
    const from = seq("FROM", Source);
    const to = seq("TO", Source);
    const usingKey = seq("USING KEY", altPrio(SimpleName, Dynamic));
    const options = per(LoopTarget, from, to, where, usingKey, group, step);
    const at = seq(
      opt(seq("SCREEN", failCombinator())),
      opt(ver("v740sp08" /* v740sp08 */, "GROUP", "open-abap" /* OpenABAP */)),
      LoopSource,
      opt(options)
    );
    return seq("LOOP AT", at);
  }
};

// ../core/src/abap/2_statements/statements/check.ts
var Check = class {
  getMatcher() {
    const ret = seq("CHECK", altPrio(Cond, FieldSub));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/endprovide.ts
var EndProvide = class {
  getMatcher() {
    const ret = str("ENDPROVIDE");
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/if.ts
var If = class {
  getMatcher() {
    return seq("IF", Cond);
  }
};

// ../core/src/abap/2_statements/statements/convert_text.ts
var ConvertText = class {
  getMatcher() {
    return seq(
      "CONVERT TEXT",
      Source,
      "INTO SORTABLE CODE",
      Target
    );
  }
};

// ../core/src/abap/2_statements/statements/log_point.ts
var LogPoint = class {
  getMatcher() {
    const subkey = seq("SUBKEY", Source);
    const fields = seq("FIELDS", plus(Source));
    const ret = seq(
      "LOG-POINT ID",
      NamespaceSimpleName,
      opt(subkey),
      opt(fields)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/window.ts
var Window = class {
  getMatcher() {
    const ending = seq("ENDING AT", Source, Source);
    const ret = seq(
      "WINDOW STARTING AT",
      Source,
      Source,
      opt(ending)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/endif.ts
var EndIf = class {
  getMatcher() {
    return str("ENDIF");
  }
};

// ../core/src/abap/2_statements/statements/type_enum.ts
var TypeEnum = class {
  getMatcher() {
    const ret = ver("v751" /* v751 */, seq("TYPES", NamespaceSimpleName, Value), "open-abap" /* OpenABAP */);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/type_enum_begin.ts
var TypeEnumBegin = class {
  getMatcher() {
    const structure = seq("STRUCTURE", NamespaceSimpleName);
    const base = seq("BASE TYPE", NamespaceSimpleName);
    const em = seq("ENUM", NamespaceSimpleName, opt(structure), opt(base));
    const ret = ver("v751" /* v751 */, seq("TYPES", "BEGIN OF", em), "open-abap" /* OpenABAP */);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/type_enum_end.ts
var TypeEnumEnd = class {
  getMatcher() {
    const structure = seq("STRUCTURE", NamespaceSimpleName);
    const ret = ver("v751" /* v751 */, seq("TYPES", "END OF", "ENUM", NamespaceSimpleName, opt(structure)), "open-abap" /* OpenABAP */);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/set_run_time.ts
var SetRunTime = class {
  getMatcher() {
    const clock = seq("CLOCK RESOLUTION", alt("LOW", "HIGH"));
    const analyzer = seq("ANALYZER", alt("ON", "OFF"));
    const ret = seq("SET RUN TIME", alt(clock, analyzer));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/field_group.ts
var FieldGroup = class {
  getMatcher() {
    const ret = seq("FIELD-GROUPS", plus(Field));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/print_control.ts
var PrintControl = class {
  getMatcher() {
    const index = seq("INDEX-LINE", Source);
    const func = seq("FUNCTION", Source);
    const line = seq("LINE", Source);
    const position = seq("POSITION", Source);
    const size = seq("SIZE", Source);
    const cpi = seq("CPI", Source);
    const lpi = seq("LPI", Source);
    const font = seq("FONT", Source);
    const ret = seq("PRINT-CONTROL", per(index, func, line, position, size, cpi, lpi, font));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/extract.ts
var Extract = class {
  getMatcher() {
    const ret = seq("EXTRACT", opt(Field));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/sum.ts
var Sum = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "SUM");
  }
};

// ../core/src/abap/2_statements/statements/end_of_page.ts
var EndOfPage = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "END-OF-PAGE");
  }
};

// ../core/src/abap/2_statements/statements/generate_report.ts
var GenerateReport = class {
  getMatcher() {
    const without = str("WITHOUT SELECTION-SCREEN");
    const message = seq("MESSAGE", Target);
    const include = seq("INCLUDE", Target);
    const line = seq("LINE", Target);
    const word = seq("WORD", Target);
    const offset = seq("OFFSET", Target);
    const headers = str("WITH PRECOMPILED HEADERS");
    const test = str("WITH TEST CODE");
    const messageid = seq("MESSAGE-ID", Target);
    const trace = seq("TRACE-FILE", Target);
    const shortdumpid = seq("SHORTDUMP-ID", Target);
    const directory = seq("DIRECTORY ENTRY", Target);
    const options = per(without, message, include, trace, line, word, offset, headers, test, messageid, shortdumpid, directory);
    const ret = seq(
      "GENERATE REPORT",
      Source,
      opt(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/elseif.ts
var ElseIf = class {
  getMatcher() {
    return seq("ELSEIF", Cond);
  }
};

// ../core/src/abap/2_statements/statements/else.ts
var Else = class {
  getMatcher() {
    return str("ELSE");
  }
};

// ../core/src/abap/2_statements/statements/perform.ts
var Perform = class {
  getMatcher() {
    const level = seq("LEVEL", Source);
    const commit = alt(
      seq("ON COMMIT", opt(level)),
      "ON ROLLBACK"
    );
    const short = verNot("Cloud" /* Cloud */, seq(
      FormName,
      tok(ParenLeft),
      IncludeName,
      tok(ParenRightW)
    ));
    const program = seq("IN PROGRAM", opt(alt(Dynamic, IncludeName)));
    const found = str("IF FOUND");
    const full = seq(
      alt(FormName, Dynamic),
      opt(verNot("Cloud" /* Cloud */, program))
    );
    const normal = seq(
      opt(found),
      opt(PerformTables),
      opt(PerformUsing),
      opt(PerformChanging),
      opt(found),
      opt(commit)
    );
    const of = seq("OF", plus(FormName));
    const ret = seq(
      "PERFORM",
      alt(short, full),
      altPrio(of, normal)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/append.ts
var Append = class {
  getMatcher() {
    const assigning = seq("ASSIGNING", FSTarget);
    const reference = seq("REFERENCE INTO", Target);
    const sorted = seq("SORTED BY", Field);
    const fromIndex = seq("FROM", Source);
    const toIndex = seq("TO", Source);
    const toTarget = seq("TO", Target);
    const src = alt(SimpleSource4, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */));
    return seq(
      "APPEND",
      altPrio("INITIAL LINE", seq(optPrio("LINES OF"), src)),
      optPrio(fromIndex),
      opt(alt(seq(toIndex, toTarget), toTarget)),
      opt(altPrio(assigning, reference)),
      optPrio("CASTING"),
      optPrio(sorted)
    );
  }
};

// ../core/src/abap/2_statements/statements/clear.ts
var Clear = class {
  getMatcher() {
    const wit = seq("WITH", Source);
    const mode = altPrio("IN CHARACTER MODE", "IN BYTE MODE");
    return seq(
      "CLEAR",
      Target,
      optPrio(wit),
      optPrio(mode)
    );
  }
};

// ../core/src/abap/2_statements/statements/concatenate.ts
var Concatenate = class {
  getMatcher() {
    const mode = seq("IN", altPrio("BYTE", "CHARACTER"), "MODE");
    const blanks = str("RESPECTING BLANKS");
    const sep = seq("SEPARATED BY", SimpleSource3);
    const options = per(mode, blanks, sep);
    const sourc = seq(SimpleSource3, plus(SimpleSource3));
    const lines = seq("LINES OF", Source);
    return seq(
      "CONCATENATE",
      altPrio(lines, sourc),
      "INTO",
      Target,
      optPrio(options)
    );
  }
};

// ../core/src/abap/2_statements/statements/enddo.ts
var EndDo = class {
  getMatcher() {
    return str("ENDDO");
  }
};

// ../core/src/abap/2_statements/statements/endclass.ts
var EndClass = class {
  getMatcher() {
    return str("ENDCLASS");
  }
};

// ../core/src/abap/2_statements/statements/try.ts
var Try = class {
  getMatcher() {
    return str("TRY");
  }
};

// ../core/src/abap/2_statements/statements/endtry.ts
var EndTry = class {
  getMatcher() {
    return str("ENDTRY");
  }
};

// ../core/src/abap/2_statements/statements/assert.ts
var Assert = class {
  getMatcher() {
    const fields = seq("FIELDS", plus(Source));
    const subkey = seq("SUBKEY", Source);
    const id = seq("ID", NamespaceSimpleName);
    return seq(
      "ASSERT",
      optPrio(id),
      optPrio(subkey),
      opt(fields),
      optPrio("CONDITION"),
      Cond
    );
  }
};

// ../core/src/abap/2_statements/statements/return.ts
var Return = class {
  getMatcher() {
    return seq(str("RETURN"), optPrio(ver("v758" /* v758 */, Source, "open-abap" /* OpenABAP */)));
  }
};

// ../core/src/abap/2_statements/statements/endwhile.ts
var EndWhile = class {
  getMatcher() {
    return str("ENDWHILE");
  }
};

// ../core/src/abap/2_statements/statements/constant.ts
var Constant2 = class {
  getMatcher() {
    const def = seq(
      DefinitionName,
      opt(ConstantFieldLength),
      per(Type, Value, Decimals, Length)
    );
    const ret = seq(alt("CONSTANT", "CONSTANTS"), def, optPrio("%_PREDEFINED"));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/catch.ts
var Catch = class {
  getMatcher() {
    return seq(
      "CATCH",
      optPrio("BEFORE UNWIND"),
      plus(ClassName),
      opt(seq("INTO", Target))
    );
  }
};

// ../core/src/abap/2_statements/statements/infotypes.ts
var Infotypes = class {
  getMatcher() {
    const occurs = seq("OCCURS", Constant);
    const name = seq("NAME", FieldSub);
    const mode = "MODE N";
    const valid = seq("VALID FROM", Source, "TO", Source);
    const ret = seq("INFOTYPES", regex(/^\d\d\d\d$/), optPrio(valid), optPrio(name), optPrio(occurs), optPrio(mode));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/message.ts
var Message = class {
  getMatcher() {
    const like = seq("DISPLAY LIKE", Source);
    const into = seq("INTO", Target);
    const raising = seq("RAISING", ExceptionName);
    const options = per(like, into, raising);
    const type = seq("TYPE", Source);
    const sou = altPrio(options, MessageSourceSource);
    const sourc = alt(
      sou,
      seq(MessageSourceSource, sou),
      seq(MessageSourceSource, MessageSourceSource, sou),
      seq(MessageSourceSource, MessageSourceSource, MessageSourceSource, options)
    );
    const mwith = seq("WITH", MessageSourceSource, opt(sourc));
    const foo = seq(MessageSource, opt(options), opt(mwith));
    const text = seq(MessageSourceSource, type, optPrio(like), optPrio(raising));
    const cloud1 = seq(opt(seq("WITH", Source, opt(Source), opt(Source), opt(Source))), altPrio(into, raising));
    const cloud2 = seq(altPrio(into, raising), opt(seq("WITH", Source, opt(Source), opt(Source), opt(Source))));
    const cloud = seq(MessageSource, alt(cloud1, cloud2));
    const ret = seq("MESSAGE", altPrio(verNot("Cloud" /* Cloud */, foo), verNot("Cloud" /* Cloud */, text), ver("Cloud" /* Cloud */, cloud)));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/read_table.ts
var ReadTable = class {
  getMatcher() {
    const comparing = seq("COMPARING", alt(plus(FieldSub), plus(Dynamic)));
    const index = seq("INDEX", Source);
    const components = seq(alt(Field, Dynamic), "COMPONENTS", ComponentCompareSimple);
    const key = seq(
      altPrio("WITH KEY", "WITH TABLE KEY"),
      alt(
        ComponentCompareSimple,
        components,
        seq(optPrio("="), Source)
      )
    );
    const using = seq("USING KEY", alt(Field, Dynamic));
    const from = seq("FROM", Source);
    const transporting = seq("TRANSPORTING", altPrio("ALL FIELDS", "NO FIELDS", TransportingFields));
    const common = [ReadTableTarget, comparing, "CASTING", transporting, "BINARY SEARCH"];
    const perm = alt(
      per(alt(index, from), using, ...common),
      per(key, ...common),
      per(...common)
    );
    return seq(
      "READ TABLE",
      alt(SimpleSource2, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */)),
      opt(perm)
    );
  }
};

// ../core/src/abap/2_statements/statements/endloop.ts
var EndLoop = class {
  getMatcher() {
    return str("ENDLOOP");
  }
};

// ../core/src/abap/2_statements/statements/case.ts
var Case = class {
  getMatcher() {
    return seq("CASE", Source);
  }
};

// ../core/src/abap/2_statements/statements/create_object.ts
var CreateObject = class {
  getMatcher() {
    const exporting = seq("EXPORTING", ParameterListS);
    const exceptions = seq("EXCEPTIONS", ParameterListExceptions);
    const ptable = seq("PARAMETER-TABLE", Source);
    const etable = seq("EXCEPTION-TABLE", Source);
    const area = seq("AREA HANDLE", Source);
    const type = seq("TYPE", altPrio(ClassName, Dynamic));
    const ret = seq(
      "CREATE OBJECT",
      Target,
      optPrio(per(type, verNot("Cloud" /* Cloud */, area))),
      optPrio(altPrio(exporting, ptable)),
      optPrio(altPrio(exceptions, etable))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/select.ts
var Select2 = class {
  getMatcher() {
    const union = ver("v750" /* v750 */, seq("UNION", optPrio(altPrio("DISTINCT", "ALL")), Select), "open-abap" /* OpenABAP */);
    return seq(Select, starPrio(union));
  }
};

// ../core/src/abap/2_statements/statements/call.ts
var Call = class {
  getMatcher() {
    const call = seq("CALL METHOD", MethodSource, MethodCallBody);
    return altPrio(call, MethodCallChain);
  }
};

// ../core/src/abap/2_statements/statements/class_local_friends.ts
var ClassLocalFriends = class {
  getMatcher() {
    return seq("CLASS", ClassName, "DEFINITION LOCAL FRIENDS", plusPrio(ClassName));
  }
};

// ../core/src/abap/2_statements/statements/class_deferred.ts
var ClassDeferred = class {
  getMatcher() {
    return seq("CLASS", ClassName, "DEFINITION DEFERRED", optPrio("PUBLIC"));
  }
};

// ../core/src/abap/2_statements/statements/fieldsymbol.ts
var FieldSymbol2 = class {
  getMatcher() {
    const stru = seq("STRUCTURE", TypeName, "DEFAULT", Field);
    return seq(
      "FIELD-SYMBOLS",
      FieldSymbol,
      opt(alt(Type, TypeTable, stru))
    );
  }
};

// ../core/src/abap/2_statements/statements/class_definition.ts
var ClassDefinition = class {
  getMatcher() {
    const create = seq("CREATE", altPrio("PUBLIC", "PROTECTED", "PRIVATE"));
    const level = altPrio("CRITICAL", "HARMLESS", "DANGEROUS");
    const risk = seq("RISK LEVEL", level);
    const time = altPrio("LONG", "MEDIUM", "SHORT");
    const duration = seq("DURATION", time);
    const blah = per(
      ClassGlobal,
      ClassFinal,
      "ABSTRACT",
      seq("INHERITING FROM", SuperClassName),
      create,
      "FOR TESTING",
      risk,
      "SHARED MEMORY ENABLED",
      duration,
      ver("v754" /* v754 */, seq("FOR BEHAVIOR OF", BehaviorDefinitionName)),
      ClassFriends
    );
    const def = seq("DEFINITION", optPrio(blah));
    return seq("CLASS", ClassName, def);
  }
};

// ../core/src/abap/2_statements/statements/class_implementation.ts
var ClassImplementation = class {
  getMatcher() {
    return seq("CLASS", ClassName, "IMPLEMENTATION");
  }
};

// ../core/src/abap/2_statements/statements/translate.ts
var Translate = class {
  getMatcher() {
    const cas = seq(
      "TO",
      altPrio("UPPER", "LOWER"),
      "CASE"
    );
    const using = seq("USING", Source);
    return seq(
      "TRANSLATE",
      Target,
      altPrio(cas, using)
    );
  }
};

// ../core/src/abap/2_statements/statements/exit.ts
var Exit = class {
  getMatcher() {
    return seq("EXIT", opt(alt("FROM SQL", "FROM STEP-LOOP")));
  }
};

// ../core/src/abap/2_statements/statements/endcase.ts
var EndCase = class {
  getMatcher() {
    return str("ENDCASE");
  }
};

// ../core/src/abap/2_statements/statements/constant_begin.ts
var ConstantBegin = class {
  getMatcher() {
    const ret = seq("CONSTANTS BEGIN OF", DefinitionName, optPrio("%_PREDEFINED"));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/constant_end.ts
var ConstantEnd = class {
  getMatcher() {
    const ret = seq("CONSTANTS", "END", "OF", DefinitionName);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/when_others.ts
var WhenOthers = class {
  getMatcher() {
    return str("WHEN OTHERS");
  }
};

// ../core/src/abap/2_statements/statements/when.ts
var When = class {
  getMatcher() {
    const sourc = seq(Source, starPrio(Or));
    return seq("WHEN", sourc);
  }
};

// ../core/src/abap/2_statements/statements/continue.ts
var Continue = class {
  getMatcher() {
    return str("CONTINUE");
  }
};

// ../core/src/abap/2_statements/statements/assign.ts
var Assign = class {
  getMatcher() {
    const type = seq("TYPE", altPrio(Dynamic, TypeName));
    const like = seq("LIKE", altPrio(Dynamic, Source));
    const handle = seq("TYPE HANDLE", Source);
    const range = seq("RANGE", Source);
    const decimals = seq("DECIMALS", Source);
    const casting = seq("CASTING", opt(alt(like, handle, per(type, decimals))));
    const obsoleteType = seq("TYPE", Source, optPrio(decimals));
    const ret = seq(
      "ASSIGN",
      opt(seq(Target, "INCREMENT")),
      AssignSource,
      "TO",
      FSTarget,
      opt(altPrio(casting, obsoleteType, decimals)),
      opt(range),
      opt(ver("v757" /* v757 */, "ELSE UNASSIGN"))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/get_badi.ts
var GetBadi = class {
  getMatcher() {
    const filters = seq("FILTERS", ParameterListS);
    const context = seq("CONTEXT", Source);
    const type = seq("TYPE", Dynamic);
    const ret = seq(
      "GET BADI",
      Target,
      opt(type),
      opt(filters),
      opt(context)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/suppress_dialog.ts
var SuppressDialog = class {
  getMatcher() {
    const ret = str("SUPPRESS DIALOG");
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/type.ts
var Type2 = class {
  getMatcher() {
    const simple = per(Type, Decimals, Length);
    const def = seq(
      NamespaceSimpleName,
      opt(ConstantFieldLength),
      opt(alt(simple, TypeTable, TypeStructure))
    );
    const boxed = ver("v702" /* v702 */, "BOXED");
    const ret = seq("TYPES", def, opt(boxed));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/hide.ts
var Hide = class {
  getMatcher() {
    const ret = seq("HIDE", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get_locale.ts
var GetLocale = class {
  getMatcher() {
    const country = seq("COUNTRY", Target);
    const modifier = seq("MODIFIER", Target);
    const ret = seq(
      "GET LOCALE LANGUAGE",
      Target,
      country,
      modifier
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_locale.ts
var SetLocale = class {
  getMatcher() {
    const country = seq("COUNTRY", Source);
    const modifier = seq("MODIFIER", Source);
    const ret = seq(
      "SET LOCALE LANGUAGE",
      Source,
      opt(country),
      opt(modifier)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/commit.ts
var Commit = class {
  getMatcher() {
    const work = seq("WORK", opt("AND WAIT"));
    return seq("COMMIT", alt(work, DatabaseConnection));
  }
};

// ../core/src/abap/2_statements/statements/modify_screen.ts
var ModifyScreen = class {
  getMatcher() {
    const ret = seq("MODIFY SCREEN", opt(seq("FROM", Source)));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/commit_entities.ts
var CommitEntities = class {
  getMatcher() {
    const failed = seq("FAILED", Target);
    const reported = seq("REPORTED", Target);
    const responses = seq("RESPONSES", failed, reported);
    const s = seq(
      "COMMIT ENTITIES",
      optPrio("IN SIMULATION MODE"),
      opt(responses),
      opt(seq("RESPONSE OF", NamespaceSimpleName, per(failed, reported)))
    );
    return ver("v754" /* v754 */, s);
  }
};

// ../core/src/abap/2_statements/statements/modify_entities.ts
var ModifyEntities = class {
  getMatcher() {
    const withh = seq("WITH", Source);
    const fieldsWith = seq("FIELDS (", plus(SimpleName), ")", withh);
    const by = seq("BY", AssociationName);
    const relating = seq("RELATING TO", NamespaceSimpleName, "BY", NamespaceSimpleName);
    const execute = seq("EXECUTE", NamespaceSimpleName, "FROM", Source);
    const create = seq("CREATE", opt(by), "FROM", Source, opt(relating));
    const updateFrom = seq("UPDATE FROM", Source, opt(relating));
    const deleteFrom = seq("DELETE FROM", Source);
    const updateFields = seq("UPDATE", fieldsWith);
    const updateSetFields = seq("UPDATE SET FIELDS WITH", Source);
    const operation = alt(
      updateSetFields,
      seq("CREATE SET FIELDS WITH", Source),
      updateFields,
      deleteFrom,
      updateFrom,
      create,
      execute,
      seq("CREATE", opt(by), optPrio("AUTO FILL CID"), altPrio(withh, fieldsWith))
    );
    const failed = seq("FAILED", Target);
    const result = seq("RESULT", Target);
    const mapped = seq("MAPPED", Target);
    const reported = seq("REPORTED", Target);
    const end = optPrio(per(
      failed,
      result,
      mapped,
      reported
    ));
    const entities = seq(
      optPrio("AUGMENTING"),
      "ENTITIES OF",
      NamespaceSimpleName,
      opt("IN LOCAL MODE"),
      plusPrio(seq("ENTITY", NamespaceSimpleName, plus(operation)))
    );
    const create2 = seq("CREATE", fieldsWith, opt(seq("CREATE BY", AssociationName, fieldsWith)));
    const create3 = seq("CREATE BY", AssociationName, fieldsWith);
    const create4 = seq("CREATE FROM", Source, plus(seq("CREATE BY", AssociationName, "FROM", Source)));
    const entity = seq(
      "ENTITY",
      opt("IN LOCAL MODE"),
      alt(NamespaceSimpleName, EntityAssociation),
      alt(execute, create, updateFields, deleteFrom, updateSetFields, updateFrom, create2, create3, create4)
    );
    return ver("v754" /* v754 */, seq("MODIFY", alt(entities, entity), end));
  }
};

// ../core/src/abap/2_statements/statements/read_entities.ts
var ReadEntities = class {
  getMatcher() {
    const from = seq("FROM", Source);
    const fields = seq("FIELDS", tok(WParenLeftW), plus(SimpleName), tok(WParenRightW), "WITH", Source);
    const all = seq("ALL FIELDS WITH", Source);
    const result = seq("RESULT", Target);
    const failed = seq("FAILED", Target);
    const reported = seq("REPORTED", Target);
    const foo = seq(
      opt(seq("BY", AssociationName)),
      alt(fields, from, all),
      optPrio(result)
    );
    const entity = seq(
      "ENTITY",
      NamespaceSimpleName,
      plus(foo)
    );
    const s = seq(
      "ENTITIES OF",
      NamespaceSimpleName,
      opt("IN LOCAL MODE"),
      plus(entity),
      optPrio(seq("LINK", Target)),
      optPrio(per(failed, reported))
    );
    const byall = seq("BY", AssociationName, all);
    const by = seq("BY", AssociationName, fields);
    const sub2 = seq(alt(all, fields, from, by, byall), result);
    const single = seq("ENTITY", opt("IN LOCAL MODE"), alt(NamespaceSimpleName, EntityAssociation), plus(sub2), optPrio(failed), optPrio(reported));
    return ver("v754" /* v754 */, seq("READ", alt(s, single)));
  }
};

// ../core/src/abap/2_statements/statements/rollback_entities.ts
var RollbackEntities = class {
  getMatcher() {
    const s = "ROLLBACK ENTITIES";
    return ver("v754" /* v754 */, s);
  }
};

// ../core/src/abap/2_statements/statements/summary.ts
var Summary = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "SUMMARY");
  }
};

// ../core/src/abap/2_statements/statements/input.ts
var Input = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "INPUT");
  }
};

// ../core/src/abap/2_statements/statements/on_change.ts
var OnChange = class {
  getMatcher() {
    const or = seq("OR", Target);
    const ret = seq("ON CHANGE OF", Target, star(or));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/at_user_command.ts
var AtUserCommand = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "AT USER-COMMAND");
  }
};

// ../core/src/abap/2_statements/statements/position.ts
var Position2 = class {
  getMatcher() {
    const ret = seq("POSITION", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/resume.ts
var Resume = class {
  getMatcher() {
    return str("RESUME");
  }
};

// ../core/src/abap/2_statements/statements/stop.ts
var Stop = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "STOP");
  }
};

// ../core/src/abap/2_statements/statements/get_pf_status.ts
var GetPFStatus = class {
  getMatcher() {
    const program = seq("PROGRAM", Source);
    const excl = seq("EXCLUDING", Source);
    const ret = seq(
      "GET PF-STATUS",
      Target,
      opt(program),
      opt(excl)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/delete_report.ts
var DeleteReport = class {
  getMatcher() {
    const state = seq("STATE", Source);
    const ret = seq(
      "DELETE REPORT",
      Source,
      optPrio(state)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/controls.ts
var Controls = class {
  getMatcher() {
    const tableview = seq("TABLEVIEW USING SCREEN", Source);
    const type = seq("TYPE", alt(tableview, "TABSTRIP"));
    const ret = seq("CONTROLS", NamespaceSimpleName, type);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/at_line_selection.ts
var AtLineSelection = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "AT LINE-SELECTION");
  }
};

// ../core/src/abap/2_statements/statements/new_page.ts
var NewPage = class {
  getMatcher() {
    const line = seq("LINE-SIZE", Source);
    const print = seq("PRINT", alt("OFF", "ON"));
    const parameters = seq("PARAMETERS", Source);
    const destination = seq("DESTINATION", Source);
    const archive = seq("ARCHIVE PARAMETERS", Source);
    const lineCount = seq("LINE-COUNT", Source);
    const coverText = seq("COVER TEXT", Source);
    const coverPage = seq("SAP COVER PAGE", Source);
    const immediately = seq("IMMEDIATELY", Source);
    const copies = seq("COPIES", Source);
    const keep = seq("KEEP IN SPOOL", Source);
    const layout = seq("LAYOUT", Source);
    const listAuth = seq("LIST AUTHORITY", Source);
    const department = seq("DEPARTMENT", Source);
    const receiver = seq("RECEIVER", Source);
    const dataset = seq("LIST DATASET", Source);
    const name = seq("LIST NAME", Source);
    const newList = seq("NEW LIST IDENTIFICATION", Source);
    const ret = seq(
      "NEW-PAGE",
      opt(per(
        print,
        alt("NO-TITLE", "WITH-TITLE"),
        alt("NO-HEADING", "WITH-HEADING"),
        "NO DIALOG",
        "NO-TOPOFPAGE",
        parameters,
        listAuth,
        immediately,
        dataset,
        coverPage,
        newList,
        keep,
        department,
        name,
        layout,
        destination,
        receiver,
        copies,
        coverText,
        archive,
        "NEW-SECTION",
        lineCount,
        line
      ))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_dataset.ts
var SetDataset = class {
  getMatcher() {
    const ret = seq("SET DATASET", Source, "POSITION", alt(Source, "END OF FILE"));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get_property.ts
var GetProperty = class {
  getMatcher() {
    const ret = seq(
      "GET PROPERTY OF",
      FieldSub,
      alt(Source, ConstantString),
      "=",
      Source,
      opt("NO FLUSH"),
      opt(alt("QUEUE-ONLY", "QUEUEONLY")),
      opt(OLEExporting)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/scroll_list.ts
var ScrollList = class {
  getMatcher() {
    const index = seq("INDEX", Source);
    const line = seq("LINE", Source);
    const column = seq("TO COLUMN", Source);
    const to = seq(
      "TO",
      alt(
        "FIRST PAGE",
        "LAST PAGE",
        seq("PAGE", Source)
      )
    );
    const pages = seq(Source, "PAGES");
    const ret = seq(
      "SCROLL LIST",
      per(
        index,
        seq(alt(to, "BACKWARD", "FORWARD"), opt(pages)),
        seq(alt("LEFT", "RIGHT"), opt(seq("BY", Source, "PLACES"))),
        column,
        line
      )
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/load_of_program.ts
var LoadOfProgram = class {
  getMatcher() {
    const ret = str("LOAD-OF-PROGRAM");
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/top_of_page.ts
var TopOfPage = class {
  getMatcher() {
    const ret = seq("TOP-OF-PAGE", opt("DURING LINE-SELECTION"));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/truncate_dataset.ts
var TruncateDataset = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, seq("TRUNCATE DATASET", Source, "AT CURRENT POSITION"));
  }
};

// ../core/src/abap/2_statements/statements/set_update_task.ts
var SetUpdateTask = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "SET UPDATE TASK LOCAL");
  }
};

// ../core/src/abap/2_statements/statements/set_user_command.ts
var SetUserCommand = class {
  getMatcher() {
    const ret = seq("SET USER-COMMAND", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/rollback.ts
var Rollback = class {
  getMatcher() {
    return seq("ROLLBACK", altPrio("WORK", DatabaseConnection));
  }
};

// ../core/src/abap/2_statements/statements/delete_internal.ts
var DeleteInternal = class {
  getMatcher() {
    const index = seq("INDEX", Source);
    const keyName = altPrio(SimpleName, Dynamic);
    const using = seq("USING KEY", keyName);
    const from = seq("FROM", Source);
    const fromTo = seq(
      optPrio(from),
      optPrio(seq("TO", Source))
    );
    const where = seq("WHERE", alt(ComponentCond, Dynamic));
    const key = seq(
      "WITH TABLE KEY",
      opt(seq(keyName, "COMPONENTS")),
      plus(ComponentCompare)
    );
    const table = seq(
      "TABLE",
      Target,
      alt(per(index, using), seq(optPrio(from), optPrio(using)), key)
    );
    const other = seq(
      Target,
      alt(per(index, using), fromTo, key),
      opt(where)
    );
    const f = seq(SimpleFieldChain2, optPrio(FieldOffset), optPrio(FieldLength));
    const adjacent = seq(
      "ADJACENT DUPLICATES FROM",
      Target,
      optPrio(using),
      opt(seq("COMPARING", altPrio("ALL FIELDS", plus(altPrio(f, Dynamic))))),
      optPrio(using)
    );
    return seq("DELETE", alt(table, adjacent, other));
  }
};

// ../core/src/abap/2_statements/statements/delete_database.ts
var DeleteDatabase = class {
  getMatcher() {
    const where = seq("WHERE", altPrio(SQLCond, Dynamic));
    const from = seq("FROM", DatabaseTable, optPrio(SQLClient), optPrio(DatabaseConnection), opt(where));
    const fromSomething = seq("FROM", opt("TABLE"), SQLSourceSimple);
    const table = seq(
      DatabaseTable,
      optPrio(SQLClient),
      optPrio(DatabaseConnection),
      optPrio(fromSomething)
    );
    const ret = seq("DELETE", altPrio(from, table));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/delete_dataset.ts
var DeleteDataset = class {
  getMatcher() {
    const ret = seq("DELETE DATASET", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/free_memory.ts
var FreeMemory = class {
  getMatcher() {
    const ret = seq("FREE MEMORY", optPrio(seq("ID", Source)));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/catch_system_exceptions.ts
var CatchSystemExceptions = class {
  getMatcher() {
    const ret = seq(
      "CATCH SYSTEM-EXCEPTIONS",
      plus(seq(Field, "=", Source))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/endcatch.ts
var EndCatch = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "ENDCATCH");
  }
};

// ../core/src/abap/2_statements/statements/assign_local_copy.ts
var AssignLocalCopy = class {
  getMatcher() {
    const init = seq("INITIAL", alt(Source, Dynamic));
    const iline = seq("INITIAL LINE OF", alt(Source, Dynamic));
    const main2 = seq("MAIN TABLE FIELD", Dynamic);
    const ret = seq(
      "ASSIGN LOCAL COPY OF",
      alt(init, iline, main2, Source),
      "TO",
      TargetFieldSymbol
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_extended_check.ts
var SetExtendedCheck = class {
  getMatcher() {
    const ret = seq("SET EXTENDED CHECK", alt("OFF", "ON"));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/split.ts
var Split = class {
  getMatcher() {
    const mode = seq("IN", alt("CHARACTER", "BYTE"), "MODE");
    const into = altPrio(seq("TABLE", Target, opt(mode)), seq(plus(Target), opt(mode)));
    const ret = seq("SPLIT", Source, "AT", Source, "INTO", into);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/new_line.ts
var NewLine = class {
  getMatcher() {
    const ret = seq(
      "NEW-LINE",
      opt(alt("SCROLLING", "NO-SCROLLING"))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/free_object.ts
var FreeObject = class {
  getMatcher() {
    const ret = seq("FREE OBJECT", Target, opt("NO FLUSH"));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/sort.ts
var Sort = class {
  getMatcher() {
    const order = altPrio("ASCENDING", "DESCENDING");
    const sel = alt(ComponentChain, Dynamic, SourceFieldSymbol);
    const text = "AS TEXT";
    const fields = plus(seq(sel, optPrio(text), optPrio(order), optPrio(text)));
    const by = seq("BY", fields);
    const normal = seq(Target, opt(per(order, by, "STABLE", text)));
    return seq("SORT", normal);
  }
};

// ../core/src/abap/2_statements/statements/replace.ts
var Replace = class {
  getMatcher() {
    const length = seq("LENGTH", Source);
    const offset = seq("OFFSET", Source);
    const section = seq(
      opt("IN"),
      "SECTION",
      per(offset, length),
      "OF",
      Target
    );
    const source = seq(opt("OF"), FindType, Source);
    const cas = altPrio("IGNORING CASE", "RESPECTING CASE");
    const repl = seq("REPLACEMENT COUNT", Target);
    const replo = seq("REPLACEMENT OFFSET", Target);
    const repll = seq("REPLACEMENT LENGTH", Target);
    const repli = seq("REPLACEMENT LINE", Target);
    const occ = altPrio(
      "ALL OCCURRENCES",
      "ALL OCCURENCES",
      "FIRST OCCURENCE",
      "FIRST OCCURRENCE"
    );
    const mode = alt(
      "IN CHARACTER MODE",
      "IN BYTE MODE"
    );
    const wit = seq("WITH", Source);
    const into = seq("INTO", Target);
    return seq(
      "REPLACE",
      per(section, seq(opt(occ), source)),
      opt(seq("IN", opt("TABLE"), Target)),
      opt(per(wit, into, cas, mode, repl, replo, repll, repli, length))
    );
  }
};

// ../core/src/abap/2_statements/statements/with_loop.ts
var WithLoop = class {
  getMatcher() {
    const as = seq(WithName, "AS", tok(WParenLeftW), SelectLoop, tok(WParenRightW));
    return ver("v751" /* v751 */, seq("WITH", plus(as), SelectLoop));
  }
};

// ../core/src/abap/2_statements/statements/with.ts
var With = class {
  getMatcher() {
    const as = seq(WithName, "AS", tok(WParenLeftW), SelectLoop, tok(WParenRightW));
    return ver("v751" /* v751 */, seq("WITH", plus(as), Select));
  }
};

// ../core/src/abap/2_statements/statements/endwith.ts
var EndWith = class {
  getMatcher() {
    return ver("v751" /* v751 */, "ENDWITH");
  }
};

// ../core/src/abap/2_statements/statements/condense.ts
var Condense = class {
  getMatcher() {
    return seq(
      "CONDENSE",
      Target,
      opt("NO-GAPS")
    );
  }
};

// ../core/src/abap/2_statements/statements/insert_internal.ts
var InsertInternal = class {
  getMatcher() {
    const target = altPrio(Source, Dynamic);
    const assigning = seq("ASSIGNING", FSTarget);
    const ref = seq("REFERENCE INTO", Target);
    const index = seq("INDEX", Source);
    const initial = str("INITIAL LINE");
    const into = seq("INTO", Target);
    const intoTable = seq("INTO TABLE", Target, opt(alt(ref, assigning)));
    const to = seq("TO", Source);
    const from = seq("FROM", Source);
    const fromTo = opt(per(from, to));
    const foo = alt(
      intoTable,
      seq(into, opt(per(index, alt(ref, assigning)))),
      per(index, alt(ref, assigning))
    );
    const lines = seq(
      "LINES OF",
      target,
      opt(fromTo)
    );
    const src = alt(SimpleSource4, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */));
    const tab = seq("TABLE", Source);
    const ret = seq(
      "INSERT",
      altPrio(tab, seq(altPrio(initial, lines, src), foo))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/insert_database.ts
var InsertDatabase = class {
  getMatcher() {
    const sub2 = seq(tok(WParenLeftW), Select, tok(WParenRightW));
    const f = seq(
      opt(SQLClient),
      opt(DatabaseConnection),
      "FROM",
      opt("TABLE"),
      alt(SQLSource, sub2),
      opt("ACCEPTING DUPLICATE KEYS")
    );
    const from = seq(
      DatabaseTable,
      opt(alt(f, SQLClient, DatabaseConnection))
    );
    const into = seq(
      "INTO",
      DatabaseTable,
      opt(SQLClient),
      opt(DatabaseConnection),
      "VALUES",
      SQLSource
    );
    return seq("INSERT", alt(from, into));
  }
};

// ../core/src/abap/2_statements/statements/insert_field_group.ts
var InsertFieldGroup = class {
  getMatcher() {
    const into = seq("INTO", Target);
    const src = alt(ver("v740sp02" /* v740sp02 */, plus(Source)), plus(SimpleSource1));
    const ret = seq("INSERT", src, into);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/update_database.ts
var UpdateDatabase = class {
  getMatcher() {
    const parameters = seq(SQLFieldAndValue, star(seq(opt(","), SQLFieldAndValue)));
    const set = seq(
      "SET",
      alt(parameters, Dynamic),
      opt(seq("WHERE", SQLCond))
    );
    const indicators = seq("INDICATORS SET STRUCTURE", ComponentName);
    const fromTable = seq(
      "FROM",
      opt("TABLE"),
      SQLSource,
      opt(ver("v755" /* v755 */, indicators))
    );
    const ret = seq(
      "UPDATE",
      DatabaseTable,
      opt(SQLClient),
      opt(DatabaseConnection),
      opt(alt(fromTable, set))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/modify_database.ts
var ModifyDatabase = class {
  getMatcher() {
    const from = seq("FROM", opt("TABLE"), SQLSource);
    const options = per(DatabaseConnection, from, SQLClient);
    return seq("MODIFY", DatabaseTable, options);
  }
};

// ../core/src/abap/2_statements/statements/modify_internal.ts
var ModifyInternal = class {
  getMatcher() {
    const index = seq("INDEX", Source);
    const from = seq("FROM", Source);
    const transporting = seq("TRANSPORTING", plus(alt(ComponentChainSimple, Dynamic)));
    const where = seq("WHERE", ComponentCond);
    const assigning = seq("ASSIGNING", FSTarget);
    const using = seq("USING KEY", SimpleName);
    const additions = per(where, assigning, using);
    const target = alt(Target, Dynamic);
    const options = alt(
      per(index, transporting),
      seq(from, opt(per(index, transporting, using))),
      seq(per(index, transporting), from, opt(per(index, transporting)))
    );
    const long = seq("MODIFY", opt("TABLE"), target, opt(options), opt(additions));
    const simple = seq("MODIFY TABLE", target, per(from, using));
    return alt(long, simple);
  }
};

// ../core/src/abap/2_statements/statements/raise.ts
var Raise = class {
  getMatcher() {
    const mess = seq(
      "MESSAGE",
      MessageSource,
      opt(RaiseWith)
    );
    const messid = seq(
      "MESSAGE ID",
      Source,
      "NUMBER",
      altPrio(MessageNumber, Source),
      optPrio(RaiseWith)
    );
    const exporting = seq("EXPORTING", ParameterListS);
    const from = seq(
      "TYPE",
      ClassName,
      opt(alt(ver("v750" /* v750 */, alt(mess, messid), "open-abap" /* OpenABAP */), ver("v752" /* v752 */, "USING MESSAGE"))),
      optPrio(exporting)
    );
    const pre = altPrio(seq(optPrio("RESUMABLE"), "EXCEPTION"), "SHORTDUMP");
    const clas = seq(
      pre,
      altPrio(from, ver("v752" /* v752 */, Source, "open-abap" /* OpenABAP */), SimpleSource2)
    );
    const ret = seq("RAISE", altPrio(clas, ExceptionName));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/define.ts
var Define = class {
  getMatcher() {
    const ret = seq("DEFINE", MacroName);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/enddefine.ts
var EndOfDefinition = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "END-OF-DEFINITION");
  }
};

// ../core/src/abap/2_statements/statements/find.ts
var Find = class {
  getMatcher() {
    const options = per(
      "IGNORING CASE",
      "RESPECTING CASE",
      "IN BYTE MODE",
      "IN CHARACTER MODE",
      seq("OF", Source),
      seq("FROM", Source),
      seq("TO", Source),
      seq("MATCH OFFSET", Target),
      seq("MATCH LINE", Target),
      seq("MATCH COUNT", Target),
      seq("MATCH LENGTH", Target),
      seq("LENGTH", Source),
      seq("RESULTS", Target),
      seq("SUBMATCHES", Target),
      seq("SUBMATCHES", Target, Target),
      seq("SUBMATCHES", plus(Target))
    );
    const sectionLength = seq("SECTION LENGTH", Source, "OF");
    const before = seq(
      optPrio(altPrio("TABLE", "SECTION OFFSET", sectionLength)),
      Source
    );
    const ret = seq(
      "FIND",
      opt(altPrio("FIRST OCCURRENCE OF", "ALL OCCURRENCES OF")),
      FindType,
      Source,
      "IN",
      before,
      opt(options)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/move.ts
var Move = class {
  getMatcher() {
    const mov = verNot("Cloud" /* Cloud */, "MOVE");
    const move = seq(
      mov,
      altPrio(
        seq("EXACT", Source, "TO", Target),
        seq(Source, altPrio("?TO", "TO"), Target)
      ),
      opt(seq("PERCENTAGE", Source, opt(alt("LEFT", "RIGHT"))))
    );
    const calcAssign = ver(
      "v754" /* v754 */,
      alt(
        seq(tok(WPlus), "="),
        seq(tok(WDash), "="),
        "/=",
        "*=",
        "&&="
      ),
      "open-abap" /* OpenABAP */
    );
    const chained = seq("=", star(seq(Target, "=")));
    const equals = altPrio(altPrio(chained, "?="), calcAssign);
    const eq = seq(Target, equals, Source);
    return alt(move, eq);
  }
};

// ../core/src/abap/2_statements/statements/move_corresponding.ts
var MoveCorresponding = class {
  getMatcher() {
    const keeping = ver("v740sp05" /* v740sp05 */, "KEEPING TARGET LINES", "open-abap" /* OpenABAP */);
    const expanding = ver("v740sp05" /* v740sp05 */, "EXPANDING NESTED TABLES", "open-abap" /* OpenABAP */);
    const move = seq(
      "MOVE-CORRESPONDING",
      optPrio("EXACT"),
      Source,
      "TO",
      // inline defintions not possible in this position,
      SimpleTarget,
      optPrio(expanding),
      optPrio(keeping)
    );
    return move;
  }
};

// ../core/src/abap/2_statements/statements/get_time.ts
var GetTime = class {
  getMatcher() {
    const options = seq(alt("STAMP FIELD", "FIELD"), Target);
    return seq("GET TIME", opt(options));
  }
};

// ../core/src/abap/2_statements/statements/enhancement_point.ts
var EnhancementPoint = class {
  getMatcher() {
    const ret = seq(
      "ENHANCEMENT-POINT",
      FieldSub,
      "SPOTS",
      Field,
      opt("STATIC"),
      opt("INCLUDE BOUND")
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/enhancement_section.ts
var EnhancementSection = class {
  getMatcher() {
    const ret = seq(
      "ENHANCEMENT-SECTION",
      seq(Field, starPrio(seq(tok(Dash), Field))),
      "SPOTS",
      Field,
      opt("STATIC"),
      opt("INCLUDE BOUND")
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/end_enhancement_section.ts
var EndEnhancementSection = class {
  getMatcher() {
    const ret = str("END-ENHANCEMENT-SECTION");
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_handler.ts
var SetHandler = class {
  getMatcher() {
    const activation = seq("ACTIVATION", Source);
    const fo = seq("FOR", altPrio("ALL INSTANCES", Source));
    const ret = seq(
      "SET HANDLER",
      plus(MethodSource),
      optPrio(fo),
      optPrio(activation)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/set_left.ts
var SetLeft = class {
  getMatcher() {
    const column = seq("COLUMN", Source);
    return verNot("Cloud" /* Cloud */, seq("SET LEFT SCROLL-BOUNDARY", opt(column)));
  }
};

// ../core/src/abap/2_statements/statements/pack.ts
var Pack = class {
  getMatcher() {
    const ret = seq("PACK", Source, "TO", Target);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/case_type.ts
var CaseType = class {
  getMatcher() {
    return ver("v750" /* v750 */, seq("CASE TYPE OF", Source), "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/statements/when_type.ts
var WhenType = class {
  getMatcher() {
    const into = seq("INTO", Target);
    const type = seq(ClassName, optPrio(into));
    return ver("v750" /* v750 */, seq("WHEN TYPE", type), "open-abap" /* OpenABAP */);
  }
};

// ../core/src/abap/2_statements/statements/exec_sql.ts
var ExecSQL = class {
  getMatcher() {
    const performing = seq("PERFORMING", SimpleName);
    const ret = seq("EXEC SQL", opt(performing));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/open_cursor.ts
var OpenCursor = class {
  getMatcher() {
    const privileged = ver("v752" /* v752 */, seq("WITH", SQLPrivilegedAccess));
    const ret = seq(
      "OPEN CURSOR",
      optPrio("WITH HOLD"),
      SQLTarget,
      "FOR",
      Select,
      optPrio(privileged),
      optPrio(SQLOptions)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/communication.ts
var Communication = class {
  getMatcher() {
    const length = seq("LENGTH", Target);
    const returncode = seq("RETURNCODE", Source);
    const buffer = seq("BUFFER", Target);
    const init = seq("INIT ID", Source, "DESTINATION", Target);
    const allocate = seq("ALLOCATE ID", Source, opt(returncode));
    const send = seq("SEND ID", Source, opt(per(buffer, length)), opt(returncode));
    const deallocate = seq("DEALLOCATE ID", Source, opt(returncode));
    const accept = seq("ACCEPT ID", Source);
    const receive = seq(
      "RECEIVE ID",
      Source,
      "BUFFER",
      Source,
      opt(length),
      "DATAINFO",
      Target,
      "STATUSINFO",
      Target,
      "RECEIVED",
      Target
    );
    const ret = seq(
      "COMMUNICATION",
      alt(init, allocate, send, deallocate, receive, accept)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/generate_subroutine.ts
var GenerateSubroutine = class {
  getMatcher() {
    const name = seq("NAME", Source);
    const message = seq("MESSAGE", Target);
    const messageid = seq("MESSAGE-ID", Target);
    const line = seq("LINE", Target);
    const word = seq("WORD", Target);
    const offset = seq("OFFSET", Target);
    const short = seq("SHORTDUMP-ID", Target);
    const include = seq("INCLUDE", Target);
    const ret = seq(
      "GENERATE SUBROUTINE POOL",
      Source,
      per(name, message, line, word, include, offset, messageid, short)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/reject.ts
var Reject = class {
  getMatcher() {
    const ret = seq("REJECT", opt(Source));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/load_report.ts
var LoadReport = class {
  getMatcher() {
    const ret = seq(
      "LOAD REPORT",
      Source,
      "PART",
      Source,
      "INTO",
      Target
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/private.ts
var Private = class {
  getMatcher() {
    return str("PRIVATE SECTION");
  }
};

// ../core/src/abap/2_statements/statements/system_call.ts
var SystemCall = class {
  getMatcher() {
    const anyy = regex(/^.+$/);
    const objmgr = seq("OBJMGR CLONE", Source, "TO", Target);
    const did = seq(anyy, "DID", Source, "PARAMETERS", plus(Source));
    const ret = seq("SYSTEM-CALL", altPrio(objmgr, did, plus(anyy)));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_language.ts
var SetLanguage = class {
  getMatcher() {
    const ret = seq("SET LANGUAGE", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_dialog.ts
var CallDialog = class {
  getMatcher() {
    const from = seq(FieldSub, optPrio(seq("FROM", Source)));
    const exporting = seq("EXPORTING", plus(from));
    const to = seq(Field, optPrio(seq("TO", Field)));
    const importing = seq("IMPORTING", plus(to));
    const ret = seq(
      "CALL DIALOG",
      alt(Constant, FieldSub),
      opt(exporting),
      opt(importing)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/protected.ts
var Protected = class {
  getMatcher() {
    return str("PROTECTED SECTION");
  }
};

// ../core/src/abap/2_statements/statements/public.ts
var Public = class {
  getMatcher() {
    return str("PUBLIC SECTION");
  }
};

// ../core/src/abap/2_statements/statements/nodes.ts
var Nodes = class {
  getMatcher() {
    const ret = seq("NODES", Field);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/demand.ts
var Demand = class {
  getMatcher() {
    const field = seq(Field, "=", Target);
    const messages = seq("MESSAGES INTO", Target);
    const ret = seq(
      "DEMAND",
      plus(field),
      "FROM CONTEXT",
      Field,
      opt(messages)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/supply.ts
var Supply = class {
  getMatcher() {
    const field = seq(Field, "=", Source);
    const ret = seq(
      "SUPPLY",
      plus(field),
      "TO CONTEXT",
      Field
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/fields.ts
var Fields = class {
  getMatcher() {
    const ret = seq("FIELDS", FieldSub);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/delete_cluster.ts
var DeleteCluster = class {
  getMatcher() {
    const client = seq("CLIENT", Source);
    const ret = seq(
      "DELETE FROM DATABASE",
      NamespaceSimpleName,
      tok(ParenLeft),
      SimpleName,
      tok(ParenRightW),
      opt(client),
      "ID",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_margin.ts
var SetMargin = class {
  getMatcher() {
    const ret = seq(
      "SET MARGIN",
      Source,
      opt(Source)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_database.ts
var CallDatabase = class {
  getMatcher() {
    const exporting = seq("EXPORTING", ParameterListS);
    const importing = seq("IMPORTING", ParameterListT);
    const expl = seq(opt(exporting), opt(importing));
    const tab = seq("PARAMETER-TABLE", Source);
    const ret = seq(
      "CALL DATABASE PROCEDURE",
      Dynamic,
      opt(DatabaseConnection),
      alt(expl, tab)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/contexts.ts
var Contexts = class {
  getMatcher() {
    const ret = seq(
      "CONTEXTS",
      Field
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/interface.ts
var Interface = class {
  getMatcher() {
    return seq(
      "INTERFACE",
      InterfaceName,
      opt(ClassGlobal)
    );
  }
};

// ../core/src/abap/2_statements/statements/endinterface.ts
var EndInterface = class {
  getMatcher() {
    return str("ENDINTERFACE");
  }
};

// ../core/src/abap/2_statements/statements/parameter.ts
var Parameter = class {
  getMatcher() {
    const para = altPrio("PARAMETER", "PARAMETERS");
    const def = seq("DEFAULT", altPrio(Constant, FieldChain));
    const radio = seq("RADIOBUTTON GROUP", RadioGroupName);
    const type = seq(altPrio("TYPE", "LIKE"), altPrio(TypeName, Dynamic), optPrio(FieldOffset), optPrio(FieldLength));
    const memory = seq("MEMORY ID", SimpleSource1);
    const listbox = str("AS LISTBOX");
    const cmd = seq("USER-COMMAND", regex(/^[\w\?\/]+$/));
    const modif = seq("MODIF ID", Modif);
    const visible = seq("VISIBLE LENGTH", Constant);
    const length = seq("LENGTH", Constant);
    const match = seq("MATCHCODE OBJECT", Field);
    const decimals = seq("DECIMALS", Source);
    const forTable = seq("FOR TABLE", DatabaseTable, opt("VALUE-REQUEST"));
    const perm = per(
      type,
      def,
      "OBLIGATORY",
      match,
      cmd,
      length,
      decimals,
      radio,
      memory,
      modif,
      listbox,
      visible,
      forTable,
      "VALUE CHECK",
      "NO-DISPLAY",
      "AS CHECKBOX",
      "LOWER CASE"
    );
    const ret = seq(
      para,
      FieldSub,
      opt(ConstantFieldLength),
      opt(perm)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/include.ts
var Include = class {
  getMatcher() {
    const ret = seq("INCLUDE", IncludeName, opt("IF FOUND"));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/collect.ts
var Collect = class {
  getMatcher() {
    const into = seq("INTO", Target);
    const assigning = seq("ASSIGNING", FSTarget);
    return seq(
      "COLLECT",
      Source,
      opt(into),
      opt(assigning)
    );
  }
};

// ../core/src/abap/2_statements/statements/ranges.ts
var Ranges = class {
  getMatcher() {
    const occurs = seq("OCCURS", Source);
    const ret = seq(
      "RANGES",
      DefinitionName,
      "FOR",
      SimpleFieldChain2,
      optPrio(occurs),
      optPrio(FieldLength)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/events.ts
var Events = class {
  getMatcher() {
    const exporting = seq("EXPORTING", plus(MethodParamOptional));
    return seq(altPrio("CLASS-EVENTS", "EVENTS"), EventName, optPrio(exporting));
  }
};

// ../core/src/abap/2_statements/statements/receive.ts
var Receive = class {
  getMatcher() {
    const ret = seq(
      "RECEIVE RESULTS FROM FUNCTION",
      FunctionName,
      opt("KEEPING TASK"),
      ReceiveParameters
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/back.ts
var Back = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "BACK");
  }
};

// ../core/src/abap/2_statements/statements/add_corresponding.ts
var AddCorresponding = class {
  getMatcher() {
    const ret = seq(
      "ADD-CORRESPONDING",
      Source,
      "TO",
      Target
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/subtract_corresponding.ts
var SubtractCorresponding = class {
  getMatcher() {
    const ret = seq(
      "SUBTRACT-CORRESPONDING",
      Source,
      "FROM",
      Target
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/static_begin.ts
var StaticBegin = class {
  getMatcher() {
    const occurs = seq("OCCURS", Integer);
    const ret = seq(
      alt("STATIC", "STATICS"),
      "BEGIN OF",
      DefinitionName,
      opt(occurs)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/static_end.ts
var StaticEnd = class {
  getMatcher() {
    const ret = seq(
      alt("STATIC", "STATICS"),
      "END OF",
      DefinitionName
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/get_dataset.ts
var GetDataset = class {
  getMatcher() {
    const position = seq("POSITION", Target);
    const attr = seq("ATTRIBUTES", Target);
    const ret = seq(
      "GET DATASET",
      Target,
      opt(per(position, attr))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/tables.ts
var Tables = class {
  getMatcher() {
    const ret = seq("TABLES", Field);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/local.ts
var Local = class {
  getMatcher() {
    const ret = seq("LOCAL", FieldSub, opt(TableBody));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/add.ts
var Add = class {
  getMatcher() {
    const to = seq("TO", Target);
    const accordingTo = seq("ACCORDING TO", Source);
    const giving = seq("GIVING", Source);
    const then = seq("THEN", Source, "UNTIL", Source, opt(per(giving, accordingTo)), opt(to));
    const ret = seq("ADD", Source, altPrio(to, then));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/describe.ts
var Describe = class {
  getMatcher() {
    const tlines = seq("LINES", Target);
    const kind = seq("KIND", Target);
    const occurs = seq("OCCURS", Target);
    const table = seq(
      "TABLE",
      FieldChain,
      opt(per(tlines, kind, occurs))
    );
    const mode = seq("IN", alt("BYTE", "CHARACTER"), "MODE");
    const field = seq(
      "FIELD",
      Source,
      per(
        seq("TYPE", Target),
        seq("COMPONENTS", Target),
        seq("LENGTH", Target, opt(mode)),
        seq("DECIMALS", Target),
        seq("HELP-ID", Target),
        seq("OUTPUT-LENGTH", Target),
        seq("EDIT MASK", Target),
        seq("INTO", Target)
      )
    );
    const distance = seq(
      "DISTANCE BETWEEN",
      Source,
      "AND",
      Source,
      "INTO",
      Target,
      opt(mode)
    );
    const lines = seq("NUMBER OF LINES", Target);
    const pages = seq("NUMBER OF PAGES", Target);
    const line = seq("LINE", Source);
    const page = seq("PAGE", Source);
    const index = seq("INDEX", Source);
    const top = seq("TOP-LINES", Target);
    const lineSize = seq("LINE-SIZE", Target);
    const lineCount = seq("LINE-COUNT", Target);
    const first = seq("FIRST-LINE", Target);
    const list = seq("LIST", per(lines, pages, index, line, page, top, first, tlines, lineSize, lineCount));
    const ret = seq("DESCRIBE", altPrio(table, field, distance, list));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/submit.ts
var Submit = class {
  getMatcher() {
    const sign = seq("SIGN", Source);
    const eq = alt("=", "EQ", "IN", "NE", "CP", "GE", "LE", "INCL", "GT", "LT");
    const compare = seq(eq, Source);
    const between = seq("BETWEEN", Source, "AND", Source);
    const selectionTable = seq("WITH SELECTION-TABLE", Source);
    const awith = seq("WITH", FieldSub, alt(compare, between), optPrio(sign));
    const prog = altPrio(IncludeName, Dynamic);
    const job = seq("VIA JOB", Source, "NUMBER", Source);
    const exporting = str("EXPORTING LIST TO MEMORY");
    const spool = seq("SPOOL PARAMETERS", Source);
    const archive = seq("ARCHIVE PARAMETERS", Source);
    const archiveMode = seq("ARCHIVE MODE", Source);
    const receiver = seq("RECEIVER", Source);
    const lineSize = seq("LINE-SIZE", Source);
    const lineCount = seq("LINE-COUNT", Source);
    const user = seq("USER", Source);
    const sset = seq("USING SELECTION-SET", Source);
    const ssetp = seq("USING SELECTION-SETS OF PROGRAM", Source);
    const uss = seq("USING SELECTION-SCREEN", Source);
    const free = seq("WITH FREE SELECTIONS", Source);
    const newList = seq("NEW LIST IDENTIFICATION", Source);
    const layout = seq("LAYOUT", Source);
    const cover = seq("SAP COVER PAGE", Source);
    const copies = seq("COPIES", Source);
    const datasetExpiration = seq("DATASET EXPIRATION", Source);
    const coverText = seq("COVER TEXT", Source);
    const listName = seq("LIST NAME", Source);
    const keep = seq("KEEP IN SPOOL", Source);
    const imm = seq("IMMEDIATELY", Source);
    const dest = seq("DESTINATION", Source);
    const language = seq("LANGUAGE", Source);
    const perm = per(
      plusPrio(awith),
      selectionTable,
      plusPrio(awith),
      plusPrio(awith),
      spool,
      lineSize,
      lineCount,
      archive,
      archiveMode,
      receiver,
      user,
      sset,
      ssetp,
      keep,
      cover,
      imm,
      layout,
      dest,
      coverText,
      listName,
      language,
      free,
      newList,
      uss,
      copies,
      datasetExpiration,
      "TO SAP-SPOOL",
      "WITHOUT SPOOL DYNPRO",
      "VIA SELECTION-SCREEN",
      exporting,
      AndReturn,
      job
    );
    const ret = seq("SUBMIT", prog, opt(perm));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/scan.ts
var Scan = class {
  getMatcher() {
    const tokens = seq("TOKENS INTO", Target);
    const word = seq("WORD INTO", Target);
    const line = seq("LINE INTO", Target);
    const statements = seq("STATEMENTS INTO", Target);
    const levels = seq("LEVELS INTO", Target);
    const structures = seq("STRUCTURES INTO", Target);
    const include = seq("INCLUDE INTO", Target);
    const offset = seq("OFFSET INTO", Target);
    const enh = seq("ENHANCEMENTS INTO", Target);
    const enhO = seq("ENHANCEMENT OPTIONS INTO", Target);
    const keywords = seq("KEYWORDS FROM", Source);
    const pragmas = seq("WITH PRAGMAS", Source);
    const overflow = seq("OVERFLOW INTO", Target);
    const message = seq("MESSAGE INTO", Target);
    const includeProgram = seq("INCLUDE PROGRAM FROM", Source);
    const frame = seq("FRAME PROGRAM FROM", Source);
    const program = seq("PROGRAM FROM", Source);
    const from = seq("FROM", Source);
    const to = seq("TO", Source);
    const replacing = seq("REPLACING", Source);
    const id = seq("ID", Source, "TABLE", Source);
    const ret = seq(
      "SCAN ABAP-SOURCE",
      Source,
      per(
        tokens,
        levels,
        from,
        to,
        statements,
        structures,
        keywords,
        word,
        line,
        offset,
        overflow,
        message,
        includeProgram,
        include,
        frame,
        enhO,
        enh,
        program,
        replacing,
        "WITH ANALYSIS",
        "WITH COMMENTS",
        "WITH TYPE-POOLS",
        "WITH INCLUDES",
        "WITHOUT TRMAC",
        "WITH DECLARATIONS",
        "WITH BLOCKS",
        "PRESERVING IDENTIFIER ESCAPING",
        "WITH LIST TOKENIZATION",
        "WITH EXPLICIT ENHANCEMENTS",
        "WITH IMPLICIT ENHANCEMENTS",
        "WITH INACTIVE ENHANCEMENTS",
        pragmas,
        id
      )
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/export.ts
var Export = class {
  getMatcher() {
    const from = seq(altPrio("FROM", "="), Source);
    const client = seq("CLIENT", Source);
    const id = seq("ID", Source);
    const using = seq("USING", Source);
    const cluster = seq(
      NamespaceSimpleName,
      tok(ParenLeft),
      regex(/^[\w$%\^~]{2}$/),
      tok(ParenRightW)
    );
    const buffer = seq("DATA BUFFER", Target);
    const memory = seq("MEMORY", opt(seq("ID", Source)));
    const table = seq("INTERNAL TABLE", Target);
    const shared = seq(alt("SHARED MEMORY", "SHARED BUFFER"), cluster, per(from, client, id));
    const database = seq("DATABASE", cluster, per(from, client, id, using));
    const target = alt(buffer, memory, database, table, shared);
    const left = alt(FieldSub, FieldSymbol);
    const source = alt(
      plus(altPrio(seq(left, from), left)),
      Dynamic,
      Constant
    );
    const compression = seq("COMPRESSION", alt("ON", "OFF"));
    const hint = seq("CODE PAGE HINT", Source);
    return seq("EXPORT", source, "TO", target, opt(compression), opt(hint));
  }
};

// ../core/src/abap/2_statements/statements/import.ts
var Import = class {
  getMatcher() {
    const dto = seq("TO", Target);
    const client = seq("CLIENT", Source);
    const id = seq("ID", Source);
    const using = seq("USING", Source);
    const cluster = seq(
      NamespaceSimpleName,
      tok(ParenLeft),
      regex(/^[\w$%\^]{2}$/),
      tok(ParenRightW)
    );
    const buffer = seq("DATA BUFFER", Source);
    const memory = seq("MEMORY", opt(seq("ID", Source)));
    const table = seq("INTERNAL TABLE", Source);
    const shared = seq(alt("SHARED MEMORY", "SHARED BUFFER"), cluster, per(dto, client, id));
    const database = seq("DATABASE", cluster, per(dto, client, id, using));
    const logfile = seq("LOGFILE ID", Source);
    const source = alt(buffer, memory, database, table, shared, logfile);
    const to = plus(seq(ComponentChainSimple, alt("TO", "INTO"), Target));
    const toeq = plus(seq(alt(ComponentChainSimple, FieldSymbol), "=", Target));
    const target = alt(
      toeq,
      to,
      Dynamic,
      plus(Target)
    );
    const options = per(
      "ACCEPTING PADDING",
      "IGNORING CONVERSION ERRORS",
      "IN CHAR-TO-HEX MODE",
      "IGNORING STRUCTURE BOUNDARIES",
      "ACCEPTING TRUNCATION",
      seq("REPLACEMENT CHARACTER", Source),
      seq("CODE PAGE INTO", Source),
      seq("ENDIAN INTO", Source)
    );
    const ret = seq("IMPORT", target, "FROM", source, opt(options));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/at_first.ts
var AtFirst = class {
  getMatcher() {
    return str("AT FIRST");
  }
};

// ../core/src/abap/2_statements/statements/at_last.ts
var AtLast = class {
  getMatcher() {
    return str("AT LAST");
  }
};

// ../core/src/abap/2_statements/statements/at_pf.ts
var AtPF = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, seq("AT", regex(/^PF\d\d?$/i)));
  }
};

// ../core/src/abap/2_statements/statements/at.ts
var At2 = class {
  getMatcher() {
    const field = alt(
      seq(FieldSub, opt(FieldOffset), opt(FieldLength)),
      Dynamic,
      SourceFieldSymbol
    );
    const atNew = seq("NEW", field);
    const atEnd = seq("END OF", field);
    const group = regex(/^[%\w]+$/);
    const ret = seq("AT", altPrio(atNew, atEnd, group));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/put.ts
var Put = class {
  getMatcher() {
    const ret = seq("PUT", Field);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/endat.ts
var EndAt = class {
  getMatcher() {
    const ret = str("ENDAT");
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/endselect.ts
var EndSelect = class {
  getMatcher() {
    return str("ENDSELECT");
  }
};

// ../core/src/abap/2_statements/statements/refresh.ts
var Refresh = class {
  getMatcher() {
    const from = seq("FROM TABLE", DatabaseTable);
    const ret = seq("REFRESH", Target, optPrio(from));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/shift.ts
var Shift = class {
  getMatcher() {
    const deleting = seq("DELETING", altPrio("LEADING", "TRAILING"), Source);
    const up = seq("UP TO", Source);
    const mode = seq("IN", altPrio("CHARACTER", "BYTE"), "MODE");
    const dir = altPrio("LEFT", "RIGHT");
    const by = seq("BY", Source, optPrio("PLACES"));
    const options = per(deleting, up, mode, dir, by, "CIRCULAR");
    return seq(
      "SHIFT",
      Target,
      opt(options)
    );
  }
};

// ../core/src/abap/2_statements/statements/type_mesh.ts
var TypeMesh = class {
  getMatcher() {
    const on = seq("ON", NamespaceSimpleName, "=", NamespaceSimpleName, star(seq("AND", NamespaceSimpleName, "=", NamespaceSimpleName)));
    const using = seq("USING KEY", NamespaceSimpleName);
    const association = seq("ASSOCIATION", NamespaceSimpleName, "TO", NamespaceSimpleName, plus(on));
    const ret = ver("v751" /* v751 */, seq("TYPES", NamespaceSimpleName, "TYPE", opt("REF TO"), TypeName, plus(association), opt(using)));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/transfer.ts
var Transfer = class {
  getMatcher() {
    const length = seq("LENGTH", Source);
    const ret = seq(
      "TRANSFER",
      Source,
      "TO",
      Source,
      opt(length),
      opt("NO END OF LINE")
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/subtract.ts
var Subtract = class {
  getMatcher() {
    const ret = seq(
      "SUBTRACT",
      Source,
      "FROM",
      Target
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/unassign.ts
var Unassign = class {
  getMatcher() {
    return seq("UNASSIGN", TargetFieldSymbol);
  }
};

// ../core/src/abap/2_statements/statements/open_dataset.ts
var OpenDataset = class {
  getMatcher() {
    const mode = seq(
      "IN",
      opt("LEGACY"),
      altPrio("BINARY MODE", "TEXT MODE")
    );
    const code = seq("CODE PAGE", Source);
    const direction = seq("FOR", altPrio("OUTPUT", "INPUT", "UPDATE", "APPENDING"));
    const encoding = seq("ENCODING", altPrio("DEFAULT", "UTF-8", "NON-UNICODE"));
    const pos = seq("AT POSITION", Source);
    const message = seq("MESSAGE", Target);
    const ignoring = str("IGNORING CONVERSION ERRORS");
    const replacement = seq("REPLACEMENT CHARACTER", Source);
    const bom = str("SKIPPING BYTE-ORDER MARK");
    const wbom = str("WITH BYTE-ORDER MARK");
    const type = seq("TYPE", Source);
    const filter = seq("FILTER", Source);
    const linetype = altPrio("SMART", "NATIVE", "UNIX");
    const feed = seq("WITH", linetype, "LINEFEED");
    const windows = str("WITH WINDOWS LINEFEED");
    const ret = seq(
      "OPEN DATASET",
      Source,
      opt(per(direction, type, mode, wbom, replacement, filter, encoding, pos, message, ignoring, bom, code, feed, windows))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/close_dataset.ts
var CloseDataset = class {
  getMatcher() {
    const ret = seq("CLOSE DATASET", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/interface_load.ts
var InterfaceLoad = class {
  getMatcher() {
    return seq(
      "INTERFACE",
      InterfaceName,
      "LOAD"
    );
  }
};

// ../core/src/abap/2_statements/statements/close_cursor.ts
var CloseCursor = class {
  getMatcher() {
    const ret = seq("CLOSE CURSOR", SQLSourceSimple);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/leave.ts
var Leave = class {
  getMatcher() {
    const retu = seq(AndReturn, "TO SCREEN", Source);
    const transaction = seq(
      "TO TRANSACTION",
      Source,
      opt("AND SKIP FIRST SCREEN")
    );
    const ret = seq(
      "LEAVE",
      opt(alt(
        seq("TO CURRENT TRANSACTION", opt("AND SKIP FIRST SCREEN")),
        seq(opt("TO"), "LIST-PROCESSING", opt(retu)),
        "LIST-PROCESSING",
        "SCREEN",
        transaction,
        "PROGRAM",
        seq("TO SCREEN", Source)
      ))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/class_definition_load.ts
var ClassDefinitionLoad = class {
  getMatcher() {
    return seq("CLASS", ClassName, "DEFINITION LOAD");
  }
};

// ../core/src/abap/2_statements/statements/initialization.ts
var Initialization = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "INITIALIZATION");
  }
};

// ../core/src/abap/2_statements/statements/start_of_selection.ts
var StartOfSelection = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "START-OF-SELECTION");
  }
};

// ../core/src/abap/2_statements/statements/set_blank.ts
var SetBlank = class {
  getMatcher() {
    const onOff = alt("ON", "OFF");
    const ret = seq("SET BLANK LINES", onOff);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/export_dynpro.ts
var ExportDynpro = class {
  getMatcher() {
    const ret = seq(
      "EXPORT DYNPRO",
      Source,
      Source,
      Source,
      Source,
      "ID",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/end_of_selection.ts
var EndOfSelection = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "END-OF-SELECTION");
  }
};

// ../core/src/abap/2_statements/statements/search.ts
var Search = class {
  getMatcher() {
    const starting = seq("STARTING AT", Source);
    const ending = seq("ENDING AT", Source);
    const mark = str("AND MARK");
    const mode = altPrio("IN BYTE MODE", "IN CHARACTER MODE");
    const ret = seq(
      "SEARCH",
      Source,
      "FOR",
      Source,
      opt(per(mode, starting, ending, mark))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/modify_line.ts
var ModifyLine = class {
  getMatcher() {
    const onOff = alt("ON", "OFF");
    const eq = seq("=", Source);
    const form = seq(alt("INVERSE", "INPUT", "COLOR", "HOTSPOT"), opt(alt(eq, onOff)));
    const from = seq("FROM", Source);
    const value = seq("FIELD VALUE", plus(seq(Source, optPrio(from))));
    const format = seq("FIELD FORMAT", Source, opt(form));
    const lineValue = seq("LINE VALUE FROM", Source);
    const index = seq("INDEX", Source);
    const page = seq("OF PAGE", Source);
    const ocp = str("OF CURRENT PAGE");
    const intensified = seq("INTENSIFIED", onOff);
    const intensifiedOpt = seq("INTENSIFIED", opt(onOff));
    const lineFormat = seq(
      "LINE FORMAT",
      per("INPUT OFF", "INVERSE", "RESET", intensifiedOpt, Color)
    );
    const options = per(index, value, format, page, lineFormat, lineValue, ocp, intensified, Color);
    const ret = seq(
      "MODIFY",
      altPrio(
        "CURRENT LINE",
        seq("LINE", Source)
      ),
      opt(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/selectionscreen.ts
var SelectionScreen = class {
  getMatcher() {
    const text = altPrio(TextElement, InlineField);
    const beginBlock = seq(
      "BEGIN OF BLOCK",
      BlockName,
      optPrio("WITH FRAME"),
      optPrio(seq("TITLE", text)),
      optPrio("NO INTERVALS")
    );
    const endBlock = seq("END OF BLOCK", BlockName);
    const nesting = seq("NESTING LEVEL", Source);
    const scrOptions = per(
      seq("AS", alt("WINDOW", "SUBSCREEN")),
      seq("TITLE", text),
      "NO INTERVALS",
      nesting
    );
    const beginScreen = seq(
      "BEGIN OF SCREEN",
      Integer,
      opt(scrOptions)
    );
    const endScreen = seq("END OF SCREEN", Integer);
    const beginLine = str("BEGIN OF LINE");
    const endLine = str("END OF LINE");
    const modif = seq("MODIF ID", Modif);
    const visible = seq("VISIBLE LENGTH", regex(/^\d+$/));
    const ldbId = seq("ID", regex(/^\w+$/));
    const ldb = seq("FOR FIELD", FieldSub, optPrio(ldbId));
    const commentOpt = per(ldb, modif, visible);
    const position = seq(
      opt(regex(/^\/?[\d\w]+$/)),
      altPrio(tok(ParenLeft), tok(WParenLeft)),
      Integer,
      altPrio(tok(ParenRightW), tok(ParenRight))
    );
    const comment = seq(
      "COMMENT",
      position,
      opt(text),
      opt(commentOpt)
    );
    const command = seq("USER-COMMAND", alt(Field, Constant));
    const push = seq(
      "PUSHBUTTON",
      position,
      text,
      command,
      opt(modif),
      opt(visible)
    );
    const prog = seq("PROGRAM", Field);
    const def = seq("DEFAULT", opt(prog), "SCREEN", Integer);
    const tab = seq(
      "TAB",
      tok(WParenLeft),
      Integer,
      tok(ParenRightW),
      text,
      command,
      opt(def),
      opt(modif)
    );
    const func = seq("FUNCTION KEY", Integer);
    const skip = seq("SKIP", opt(Integer));
    const posSymbols = altPrio("POS_LOW", "POS_HIGH");
    const posIntegers = regex(/^(0?[1-9]|[1234567][0-9]|8[0-3])$/);
    const pos = seq(
      "POSITION",
      altPrio(posIntegers, posSymbols),
      opt(seq("FOR TABLE", Field))
    );
    const incl = seq("INCLUDE BLOCKS", BlockName);
    const tabbed = seq(
      "BEGIN OF TABBED BLOCK",
      BlockName,
      "FOR",
      Integer,
      "LINES",
      optPrio("NO INTERVALS")
    );
    const uline = seq("ULINE", opt(position), opt(modif));
    const param = seq("INCLUDE PARAMETERS", Field);
    const iso = seq("INCLUDE SELECT-OPTIONS", Field);
    const exclude = seq("EXCLUDE", alt("IDS", "PARAMETERS"), regex(/^\w+$/));
    const beginVersion = seq("BEGIN OF VERSION", regex(/^\w+$/), TextElement);
    const endVersion = seq("END OF VERSION", regex(/^\w+$/));
    const ret = seq(
      "SELECTION-SCREEN",
      altPrio(
        comment,
        func,
        skip,
        pos,
        incl,
        iso,
        push,
        tab,
        uline,
        beginBlock,
        tabbed,
        endBlock,
        beginLine,
        endLine,
        param,
        beginScreen,
        endScreen,
        exclude,
        beginVersion,
        endVersion,
        def
      )
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/free.ts
var Free = class {
  getMatcher() {
    const ret = seq("FREE", Target);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/endon.ts
var EndOn = class {
  getMatcher() {
    const ret = str("ENDON");
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/fetch_next_cursor.ts
var FetchNextCursor = class {
  getMatcher() {
    const size = seq("PACKAGE SIZE", SQLSourceSimple);
    const ret = seq(
      "FETCH NEXT CURSOR",
      SQLSourceSimple,
      alt(SQLIntoStructure, SQLIntoTable, SQLIntoList),
      optPrio(size)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/reserve.ts
var Reserve = class {
  getMatcher() {
    const ret = seq("RESERVE", Source, "LINES");
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/raise_entity_event.ts
var RaiseEntityEvent = class {
  getMatcher() {
    return seq("RAISE ENTITY EVENT", EventName, "FROM", Source);
  }
};

// ../core/src/abap/2_statements/statements/refresh_control.ts
var RefreshControl = class {
  getMatcher() {
    const ret = seq(
      "REFRESH CONTROL",
      Source,
      "FROM SCREEN",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/delete_dynpro.ts
var DeleteDynpro = class {
  getMatcher() {
    const ret = seq("DELETE DYNPRO", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/generate_dynpro.ts
var GenerateDynpro = class {
  getMatcher() {
    const line = seq("LINE", Target);
    const word = seq("WORD", Target);
    const ret = seq(
      "GENERATE DYNPRO",
      Source,
      Source,
      Source,
      Source,
      "ID",
      Source,
      "MESSAGE",
      Target,
      per(line, word)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/process_on_help_request.ts
var ProcessOnHelpRequest = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "PROCESS ON HELP-REQUEST");
  }
};

// ../core/src/abap/2_statements/statements/detail.ts
var Detail = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "DETAIL");
  }
};

// ../core/src/abap/2_statements/statements/editor_call.ts
var EditorCall = class {
  getMatcher() {
    const title = seq("TITLE", SimpleSource3);
    const options = per("DISPLAY-MODE", title);
    const ret = seq(
      "EDITOR-CALL FOR",
      optPrio("REPORT"),
      Source,
      optPrio(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/break.ts
var Break = class {
  getMatcher() {
    const next = str("AT NEXT APPLICATION STATEMENT");
    const ret = altPrio(
      seq("BREAK-POINT", optPrio(altPrio(next, Source))),
      seq("BREAK", starPrio(regex(/.*/)))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/delete_textpool.ts
var DeleteTextpool = class {
  getMatcher() {
    const language = seq("LANGUAGE", Source);
    const state = seq("STATE", Source);
    const ret = seq(
      "DELETE TEXTPOOL",
      Source,
      opt(language),
      opt(state)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get.ts
var Get = class {
  getMatcher() {
    const fields = seq("FIELDS", plus(Field));
    const options = per("LATE", fields);
    const ret = seq(
      "GET",
      Target,
      opt(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/loop_extract.ts
var LoopExtract = class {
  getMatcher() {
    return str("LOOP");
  }
};

// ../core/src/abap/2_statements/statements/selectoption.ts
var SelectOption = class {
  getMatcher() {
    const sourc = alt(Constant, FieldChain);
    const to = seq("TO", sourc);
    const def = seq(
      "DEFAULT",
      sourc,
      opt(to)
    );
    const option = seq("OPTION", alt("CP", Field));
    const sign = seq("SIGN", Field);
    const memory = seq("MEMORY ID", SimpleSource1);
    const match = seq("MATCHCODE OBJECT", SimpleFieldChain);
    const modif = seq("MODIF ID", Modif);
    const visible = seq("VISIBLE LENGTH", Source);
    const options = per(
      def,
      option,
      sign,
      memory,
      match,
      visible,
      modif,
      "NO DATABASE SELECTION",
      "LOWER CASE",
      "NO-EXTENSION",
      "NO INTERVALS",
      "NO-DISPLAY",
      "OBLIGATORY"
    );
    const ret = seq(
      "SELECT-OPTIONS",
      FieldSub,
      "FOR",
      alt(FieldChain, Dynamic),
      opt(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/convert.ts
var Convert = class {
  getMatcher() {
    const intoTime = seq("TIME", Target);
    const intoDate = seq("DATE", Target);
    const into = seq("INTO", per(intoTime, intoDate));
    const daylightSource = seq("DAYLIGHT SAVING TIME", Source);
    const daylightTarget = seq("DAYLIGHT SAVING TIME", Target);
    const zone = seq("TIME ZONE", Source);
    const time = seq(
      "TIME STAMP",
      Source,
      per(zone, into, daylightTarget)
    );
    const dat = seq("DATE", Source);
    const tim = seq("TIME", Source);
    const stamp = seq("INTO TIME STAMP", Target);
    const intoutc = ver("v754" /* v754 */, seq("INTO UTCLONG", Target));
    const invert = seq("INTO INVERTED-DATE", Target);
    const date = seq(
      per(dat, tim),
      per(daylightSource, stamp, zone, invert, intoutc)
    );
    const inv = seq("INVERTED-DATE", Source, "INTO DATE", Target);
    const utclong = ver("v754" /* v754 */, seq("UTCLONG", Source, per(zone, into, daylightSource)), "open-abap" /* OpenABAP */);
    return seq("CONVERT", alt(time, date, inv, utclong));
  }
};

// ../core/src/abap/2_statements/statements/static.ts
var Static = class {
  getMatcher() {
    const p = opt(per(Type, Value, Length, Decimals));
    const type = seq(opt(ConstantFieldLength), p);
    const ret = seq(
      alt("STATIC", "STATICS"),
      DefinitionName,
      optPrio(ConstantFieldLength),
      alt(type, TypeTable)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/compute.ts
var Compute = class {
  getMatcher() {
    const ret = seq(
      "COMPUTE",
      opt("EXACT"),
      Target,
      "=",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/multiply.ts
var Multiply = class {
  getMatcher() {
    const ret = seq(
      "MULTIPLY",
      Target,
      "BY",
      Source
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/divide.ts
var Divide = class {
  getMatcher() {
    const ret = seq(
      "DIVIDE",
      Target,
      "BY",
      Source
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/format.ts
var Format = class {
  getMatcher() {
    const eq = seq("=", Source);
    const value = altPrio(eq, "ON", "OFF");
    const options = per(
      "RESET",
      seq("INTENSIFIED", opt(value)),
      seq("INVERSE", opt(value)),
      seq("HOTSPOT", opt(value)),
      seq("FRAMES", value),
      seq("INPUT", opt(value)),
      Color
    );
    const ret = seq("FORMAT", options);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/syntax_check.ts
var SyntaxCheck = class {
  getMatcher() {
    const program = seq("PROGRAM", Source);
    const offset = seq("OFFSET", Target);
    const frame = seq("FRAME ENTRY", Target);
    const include = seq("INCLUDE", Target);
    const trace = seq("TRACE-TABLE", Target);
    const line = seq("LINE", Target);
    const word = seq("WORD", Target);
    const messageId = seq("MESSAGE-ID", Target);
    const message = seq("MESSAGE", Target);
    const id = seq("ID", Source, "TABLE", Target);
    const replacing = seq("REPLACING", Target);
    const directory = seq("DIRECTORY ENTRY", Source);
    const dump = seq("SHORTDUMP-ID", Source);
    const filter = seq("FILTER", Source);
    const syntax = seq(
      optPrio("PROGRAM"),
      Source,
      per(
        message,
        line,
        word,
        offset,
        program,
        replacing,
        directory,
        frame,
        include,
        messageId,
        trace,
        dump,
        filter,
        plus(id)
      )
    );
    const dynpro = seq(
      "DYNPRO",
      Source,
      Source,
      Source,
      Source,
      per(message, line, word, offset, messageId, trace)
    );
    const ret = seq("SYNTAX-CHECK FOR", alt(syntax, dynpro));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/aliases.ts
var Aliases = class {
  getMatcher() {
    return seq(
      "ALIASES",
      SimpleName,
      "FOR",
      Field
    );
  }
};

// ../core/src/abap/2_statements/statements/method_def.ts
var MethodDef = class {
  getMatcher() {
    const def = ver("v740sp08" /* v740sp08 */, seq("DEFAULT", altPrio("FAIL", "IGNORE")), "open-abap" /* OpenABAP */);
    const parameters = seq(
      optPrio(altPrio("FINAL", def, Abstract)),
      optPrio(MethodDefImporting),
      optPrio(MethodDefExporting),
      optPrio(MethodDefChanging),
      optPrio(MethodDefReturning),
      optPrio(altPrio(MethodDefRaising, MethodDefExceptions))
    );
    const testing = seq(optPrio(Abstract), "FOR TESTING", optPrio(altPrio(MethodDefRaising, MethodDefExceptions)));
    const result = seq("RESULT", MethodParamName);
    const link = seq("LINK", MethodParamName);
    const full = seq("FULL", MethodParamName);
    const modify = alt(
      seq("FOR ACTION", TypeName, optPrio(result)),
      seq("FOR CREATE", alt(TypeName, EntityAssociation)),
      seq("FOR DELETE", TypeName),
      seq("FOR UPDATE", TypeName)
    );
    const forRead = seq("FOR READ", alt(TypeName, EntityAssociation), optPrio(full), result, optPrio(link));
    const forfunction = seq("FOR FUNCTION", TypeName, result);
    const behavior = altPrio(
      "DDL OBJECT OPTIONS CDS SESSION CLIENT REQUIRED",
      // todo, this is only from version something
      seq("TABLE FUNCTION", NamespaceSimpleName),
      // todo, this is only from version something
      seq("VALIDATE ON SAVE IMPORTING", MethodParamName, "FOR", TypeName),
      seq("MODIFY", opt("IMPORTING"), plus(seq(MethodParamName, modify))),
      seq("PRECHECK IMPORTING", MethodParamName, modify),
      seq("DETERMINATION", TypeName, "IMPORTING", MethodParamName, "FOR", TypeName),
      seq("VALIDATION", TypeName, "IMPORTING", MethodParamName, "FOR", TypeName),
      seq("NUMBERING IMPORTING", MethodParamName, modify),
      seq("READ IMPORTING", MethodParamName, altPrio(forRead, forfunction)),
      seq("FEATURES IMPORTING", MethodParamName, "REQUEST", NamespaceSimpleName, "FOR", NamespaceSimpleName, result),
      seq("BEHAVIOR IMPORTING", MethodParamName, "FOR CREATE", TypeName, MethodParamName, "FOR UPDATE", TypeName, MethodParamName, "FOR DELETE", TypeName),
      seq("BEHAVIOR IMPORTING", MethodParamName, "FOR READ", TypeName, result),
      seq("BEHAVIOR IMPORTING", MethodParamName, "FOR UPDATE", TypeName),
      seq(alt("BEHAVIOR", "LOCK"), "IMPORTING", MethodParamName, "FOR LOCK", TypeName),
      seq("DETERMINE", alt("ON MODIFY", "ON SAVE"), "IMPORTING", MethodParamName, "FOR", TypeName),
      seq("GLOBAL AUTHORIZATION IMPORTING REQUEST", MethodParamName, "FOR", TypeName, result),
      seq("GLOBAL FEATURES IMPORTING REQUEST", MethodParamName, "FOR", TypeName, result),
      seq(seq(opt("INSTANCE"), "AUTHORIZATION IMPORTING"), MethodParamName, "REQUEST", MethodParamName, "FOR", TypeName, result),
      seq("INSTANCE FEATURES IMPORTING", MethodParamName, "REQUEST", MethodParamName, "FOR", TypeName, result)
    );
    const amdp = seq(
      "AMDP OPTIONS",
      optPrio("READ-ONLY"),
      "CDS SESSION CLIENT",
      alt("CURRENT", "DEPENDENT"),
      optPrio(MethodDefImporting),
      optPrio(MethodDefExporting),
      optPrio(MethodDefRaising)
    );
    const ret = seq(
      altPrio("CLASS-METHODS", "METHODS"),
      MethodName,
      alt(
        seq(optPrio(Abstract), optPrio(def), EventHandler),
        parameters,
        testing,
        seq("FOR", behavior),
        amdp,
        "NOT AT END OF MODE",
        optPrio(Redefinition)
      )
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/type_mesh_begin.ts
var TypeMeshBegin = class {
  getMatcher() {
    const ret = ver("v740sp05" /* v740sp05 */, seq("TYPES", "BEGIN OF MESH", NamespaceSimpleName));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/type_mesh_end.ts
var TypeMeshEnd = class {
  getMatcher() {
    const ret = ver("v740sp05" /* v740sp05 */, seq("TYPES", "END OF MESH", NamespaceSimpleName));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/interface_def.ts
var InterfaceDef = class {
  getMatcher() {
    const val = seq(AttributeName, "=", Source);
    const dataValues = seq("DATA VALUES", plus(val));
    const options = alt(
      seq(AbstractMethods, opt(FinalMethods)),
      FinalMethods,
      "ALL METHODS ABSTRACT",
      "ALL METHODS FINAL",
      ver("v740sp02" /* v740sp02 */, "PARTIALLY IMPLEMENTED", "open-abap" /* OpenABAP */)
    );
    return seq(
      "INTERFACES",
      InterfaceName,
      opt(options),
      opt(dataValues)
    );
  }
};

// ../core/src/abap/2_statements/statements/at_selection_screen.ts
var AtSelectionScreen = class {
  getMatcher() {
    const output = "OUTPUT";
    const value = seq("ON VALUE-REQUEST FOR", FieldSub);
    const exit = "ON EXIT-COMMAND";
    const field = seq("ON", FieldSub);
    const end = seq("ON END OF", Field);
    const radio = seq("ON RADIOBUTTON GROUP", Field);
    const block = seq("ON BLOCK", BlockName);
    const help = seq("ON HELP-REQUEST FOR", FieldSub);
    const ret = seq(
      "AT SELECTION-SCREEN",
      opt(alt(output, value, radio, exit, field, end, help, block))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/include_type.ts
var IncludeType = class {
  getMatcher() {
    const tas = seq("AS", Field);
    const renaming = seq("RENAMING WITH SUFFIX", ComponentName);
    const ret = seq(
      "INCLUDE",
      alt("TYPE", "STRUCTURE"),
      TypeName,
      opt(tas),
      opt(renaming)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/import_dynpro.ts
var ImportDynpro = class {
  getMatcher() {
    const ret = seq(
      "IMPORT DYNPRO",
      Target,
      Target,
      Target,
      Target,
      "ID",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_function.ts
var CallFunction = class {
  getMatcher() {
    const starting = verNot("Cloud" /* Cloud */, seq("STARTING NEW TASK", SimpleSource2));
    const update = verNot("Cloud" /* Cloud */, str("IN UPDATE TASK"));
    const unit = seq("UNIT", Source);
    const background = verNot("Cloud" /* Cloud */, seq("IN BACKGROUND", altPrio("TASK", unit)));
    const calling = seq("CALLING", MethodSource, "ON END OF TASK");
    const performing = seq("PERFORMING", FormName, "ON END OF TASK");
    const separate = str("AS SEPARATE UNIT");
    const keeping = str("KEEPING LOGICAL UNIT OF WORK");
    const options = per(starting, update, background, Destination, calling, performing, separate, keeping);
    const ex = seq("EXCEPTION-TABLE", Source);
    const dynamic = alt(seq("PARAMETER-TABLE", Source, opt(ex)), ex);
    const call = seq(
      "CALL",
      altPrio("FUNCTION", verNot("Cloud" /* Cloud */, "CUSTOMER-FUNCTION")),
      FunctionName,
      opt(options),
      alt(FunctionParameters, dynamic)
    );
    return call;
  }
};

// ../core/src/abap/2_statements/statements/call_selection_screen.ts
var CallSelectionScreen = class {
  getMatcher() {
    const ending = seq("ENDING AT", Source, Source);
    const starting = seq("STARTING AT", Source, Source);
    const using = seq("USING SELECTION-SET", Source);
    const at = seq(starting, opt(ending));
    const ret = seq("CALL SELECTION-SCREEN", Source, opt(at), opt(using));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_transformation.ts
var CallTransformation = class {
  getMatcher() {
    const options = seq("OPTIONS", CallTransformationOptions);
    const parameters = seq("PARAMETERS", CallTransformationParameters);
    const objects = seq("OBJECTS", CallTransformationParameters);
    const source2 = seq("XML", SimpleSource3);
    const source = seq("SOURCE", alt(CallTransformationParameters, source2));
    const result2 = seq("XML", Target);
    const result = seq("RESULT", alt(CallTransformationParameters, result2));
    const call = seq(
      "CALL TRANSFORMATION",
      alt(NamespaceSimpleName, Dynamic),
      per(options, parameters, objects, source, result)
    );
    return call;
  }
};

// ../core/src/abap/2_statements/statements/read_line.ts
var ReadLine = class {
  getMatcher() {
    const val = seq("LINE VALUE INTO", Target);
    const fields = seq(Target, opt(seq("INTO", Target)));
    const field = seq("FIELD VALUE", plus(fields));
    const index = seq("INDEX", Source);
    const page = seq("OF PAGE", Source);
    const current = str("OF CURRENT PAGE");
    const ret = seq(
      "READ",
      alt("CURRENT LINE", seq("LINE", Source)),
      opt(per(val, index, field, page, current))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/read_textpool.ts
var ReadTextpool = class {
  getMatcher() {
    const language = seq("LANGUAGE", Source);
    const into = seq("INTO", SimpleTarget);
    const state = seq("STATE", Source);
    const ret = seq(
      "READ TEXTPOOL",
      Source,
      per(into, language, state)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/read_report.ts
var ReadReport = class {
  getMatcher() {
    const state = seq("STATE", Source);
    const into = seq("INTO", Target);
    const maximum = seq("MAXIMUM WIDTH INTO", Target);
    const ret = seq(
      "READ REPORT",
      Source,
      per(state, into, maximum)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/read_dataset.ts
var ReadDataset = class {
  getMatcher() {
    const ret = seq(
      "READ DATASET",
      Source,
      "INTO",
      Target,
      opt(per(
        seq("MAXIMUM LENGTH", Source),
        seq("ACTUAL LENGTH", Target),
        seq("LENGTH", Target)
      ))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get_bit.ts
var GetBit = class {
  getMatcher() {
    const ret = seq(
      "GET BIT",
      Source,
      "OF",
      Source,
      "INTO",
      Target
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/get_reference.ts
var GetReference = class {
  getMatcher() {
    const ret = seq(
      "GET REFERENCE OF",
      Source,
      "INTO",
      Target
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/insert_report.ts
var InsertReport = class {
  getMatcher() {
    const options = per(
      seq("STATE", Source),
      seq("EXTENSION TYPE", Source),
      seq("DIRECTORY ENTRY", Source),
      seq("UNICODE ENABLING", Source),
      seq("PROGRAM TYPE", Source),
      ver("v750" /* v750 */, seq("VERSION", Source)),
      seq("FIXED-POINT ARITHMETIC", Source),
      "KEEPING DIRECTORY ENTRY"
    );
    const ret = seq(
      "INSERT REPORT",
      Source,
      "FROM",
      Source,
      opt(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/insert_textpool.ts
var InsertTextpool = class {
  getMatcher() {
    const state = seq("STATE", Source);
    const language = seq("LANGUAGE", Source);
    const ret = seq(
      "INSERT TEXTPOOL",
      Source,
      "FROM",
      Source,
      opt(language),
      opt(state)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_bit.ts
var SetBit = class {
  getMatcher() {
    const ret = seq(
      "SET BIT",
      Source,
      "OF",
      Target,
      opt(seq("TO", Source))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/get_run_time.ts
var GetRunTime = class {
  getMatcher() {
    const ret = seq("GET RUN TIME FIELD", Target);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get_parameter.ts
var GetParameter = class {
  getMatcher() {
    const ret = seq(
      "GET PARAMETER ID",
      Source,
      "FIELD",
      Target
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/create_data.ts
var CreateData = class {
  getMatcher() {
    const areaHandle = seq("AREA HANDLE", Source);
    const typeHandle = seq("TYPE HANDLE", Source);
    const type = seq(
      alt(
        "TYPE",
        "TYPE REF TO",
        "TYPE TABLE OF",
        "TYPE TABLE OF REF TO",
        "TYPE SORTED TABLE OF",
        "TYPE HASHED TABLE OF",
        "TYPE STANDARD TABLE OF",
        "TYPE LINE OF"
      ),
      alt(TypeName, Dynamic)
    );
    const like = seq(
      alt(
        "LIKE",
        "LIKE HASHED TABLE OF",
        "LIKE LINE OF",
        "LIKE STANDARD TABLE OF",
        "LIKE SORTED TABLE OF",
        "LIKE TABLE OF"
      ),
      alt(Source, Dynamic)
    );
    const length = seq("LENGTH", Source);
    const initial = seq("INITIAL SIZE", Source);
    const decimals = seq("DECIMALS", Source);
    const uniq = alt("UNIQUE", "NON-UNIQUE");
    const emptyKey = ver("v740sp02" /* v740sp02 */, "EMPTY KEY");
    const def = seq(opt(uniq), alt("DEFAULT KEY", emptyKey));
    const kdef = seq(opt(uniq), "KEY", alt(plus(Field), Dynamic));
    const key = seq("WITH", alt(def, kdef));
    const specified = seq(
      alt(type, like),
      opt(key),
      opt(initial),
      opt(length),
      opt(decimals)
    );
    const ret = seq(
      "CREATE DATA",
      Target,
      opt(alt(typeHandle, seq(opt(areaHandle), specified)))
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/set_country.ts
var SetCountry = class {
  getMatcher() {
    const ret = seq("SET COUNTRY", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/function_module.ts
var FunctionModule = class {
  getMatcher() {
    return seq("FUNCTION", Field);
  }
};

// ../core/src/abap/2_statements/statements/dynpro_loop.ts
var DynproLoop = class {
  getMatcher() {
    const into = seq("INTO", SimpleSource2);
    const cursor = seq("CURSOR", SimpleSource2);
    const withControl = seq("WITH CONTROL", SimpleSource2);
    const from = seq("FROM", SimpleSource2);
    const to = seq("TO", SimpleSource2);
    const at = seq(
      "AT",
      SimpleSource2,
      per(into, withControl, cursor, from, to)
    );
    return seq("LOOP", altPrio(at, withControl));
  }
};

// ../core/src/abap/2_statements/statements/type_pools.ts
var TypePools = class {
  getMatcher() {
    const fieldName = regex(/^\w+$/);
    const ret = seq("TYPE-POOLS", fieldName);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/type_pool.ts
var TypePool = class {
  getMatcher() {
    const fieldName = regex(/^\w+$/);
    const ret = seq("TYPE-POOL", fieldName);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/wait.ts
var Wait = class {
  getMatcher() {
    const up = seq("UP TO", Source, "SECONDS");
    const channels = "MESSAGING CHANNELS";
    const push = ver("v750" /* v750 */, "PUSH CHANNELS", "open-abap" /* OpenABAP */);
    const tasks = "ASYNCHRONOUS TASKS";
    const type = seq("FOR", per(channels, push, tasks));
    const until = seq(opt(type), "UNTIL", Cond, opt(up));
    const ret = seq("WAIT", alt(until, up));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/overlay.ts
var Overlay = class {
  getMatcher() {
    const only = seq("ONLY", Source);
    const ret = seq(
      "OVERLAY",
      Target,
      "WITH",
      Source,
      opt(only)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/set_screen.ts
var SetScreen = class {
  getMatcher() {
    const ret = seq("SET SCREEN", Source);
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_cursor.ts
var SetCursor = class {
  getMatcher() {
    const line = seq("LINE", Source);
    const offset = seq("OFFSET", Source);
    const field = seq("FIELD", Source);
    const pos = seq(Source, Source);
    const ret = seq("SET CURSOR", altPrio(per(field, offset, line), pos));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_screen.ts
var CallScreen = class {
  getMatcher() {
    const starting = seq("STARTING AT", Source, Source);
    const ending = seq("ENDING AT", Source, Source);
    const ret = seq("CALL SCREEN", Source, optPrio(seq(starting, optPrio(ending))));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_pf_status.ts
var SetPFStatus = class {
  getMatcher() {
    const program = seq("OF PROGRAM", Source);
    const options = per(
      program,
      "IMMEDIATELY",
      seq("EXCLUDING", Source)
    );
    const ret = seq(
      "SET PF-STATUS",
      Source,
      opt(options)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_titlebar.ts
var SetTitlebar = class {
  getMatcher() {
    const wit = seq("WITH", plus(Source));
    const program = seq("OF PROGRAM", Source);
    const ret = seq("SET TITLEBAR", Source, opt(program), opt(wit));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/program.ts
var Program = class {
  getMatcher() {
    const message = seq("MESSAGE-ID", MessageClass);
    const size = seq("LINE-SIZE", Source);
    const heading = str("NO STANDARD PAGE HEADING");
    const line = seq("LINE-COUNT", Source, opt(FieldLength));
    const options = per(message, size, heading, line);
    const ret = seq("PROGRAM", opt(ReportName), opt(options));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/function_pool.ts
var FunctionPool = class {
  getMatcher() {
    const message = seq("MESSAGE-ID", MessageClass);
    const line = seq("LINE-SIZE", Integer);
    const no = str("NO STANDARD PAGE HEADING");
    return seq(
      "FUNCTION-POOL",
      IncludeName,
      opt(per(message, line, no))
    );
  }
};

// ../core/src/abap/2_statements/statements/module.ts
var Module = class {
  getMatcher() {
    const sw = seq("SWITCH", NamespaceSimpleName);
    const ret = seq(
      "MODULE",
      FormName,
      opt(alt("INPUT", "OUTPUT", "ON CHAIN-REQUEST", "ON CHAIN-INPUT", "AT EXIT-COMMAND", sw))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/endmodule.ts
var EndModule = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "ENDMODULE");
  }
};

// ../core/src/abap/2_statements/statements/endfunction.ts
var EndFunction = class {
  getMatcher() {
    return str("ENDFUNCTION");
  }
};

// ../core/src/abap/2_statements/statements/retry.ts
var Retry = class {
  getMatcher() {
    return ver("v702" /* v702 */, "RETRY");
  }
};

// ../core/src/abap/2_statements/statements/authority_check.ts
var AuthorityCheck = class {
  getMatcher() {
    const field = seq("FIELD", Source);
    const id = seq(
      "ID",
      Source,
      alt(field, "DUMMY")
    );
    const ret = seq(
      "AUTHORITY-CHECK OBJECT",
      Source,
      opt(seq("FOR USER", Source)),
      plus(id)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/set_parameter.ts
var SetParameter = class {
  getMatcher() {
    const ret = seq(
      "SET PARAMETER ID",
      Source,
      "FIELD",
      Source
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/field.ts
var Field2 = class {
  getMatcher() {
    const moduleOptions = alt("ON INPUT", "ON REQUEST", "ON CHAIN-REQUEST", "ON CHAIN-INPUT", "AT CURSOR-SELECTION");
    const module = seq("MODULE", FormName, opt(moduleOptions));
    const moduleStrange = seq(moduleOptions, "MODULE", FormName);
    const values = seq("VALUES", tok(WParenLeft), "BETWEEN", Constant, "AND", Constant, tok(ParenRightW));
    const wit = seq("WITH", altPrio(FieldChain, Constant));
    const cond = seq(FieldChain, "=", FieldChain);
    const where = seq(cond, starPrio(seq("AND", cond)));
    const into = seq("INTO", FieldChain);
    const select = seq("SELECT * FROM", FieldChain, "WHERE", where, opt(into), opt("WHENEVER NOT FOUND SEND ERRORMESSAGE"));
    const ret = seq("FIELD", FieldChain, opt(altPrio(module, moduleStrange, values, wit, select)));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get_cursor.ts
var GetCursor = class {
  getMatcher() {
    const line = seq("LINE", Target);
    const field = seq("FIELD", Target);
    const offset = seq("OFFSET", Target);
    const value = seq("VALUE", Target);
    const length = seq("LENGTH", Target);
    const area = seq("AREA", Target);
    const ret = seq(
      "GET CURSOR",
      per(line, opt("DISPLAY"), field, offset, value, length, area)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_kernel.ts
var CallKernel = class {
  getMatcher() {
    const ret = seq(
      "CALL",
      altPrio(Constant, Field),
      starPrio(KernelId)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_transaction.ts
var CallTransaction = class {
  getMatcher() {
    const options = seq("OPTIONS FROM", Source);
    const messages = seq("MESSAGES INTO", Target);
    const auth = seq(altPrio("WITH", "WITHOUT"), "AUTHORITY-CHECK");
    const perm = per(
      seq("UPDATE", Source),
      "AND SKIP FIRST SCREEN",
      options,
      messages,
      seq("MODE", Source)
    );
    const ret = seq(
      "CALL TRANSACTION",
      Source,
      optPrio(auth),
      optPrio(seq("USING", Source)),
      opt(perm)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/unpack.ts
var Unpack = class {
  getMatcher() {
    const ret = seq(
      "UNPACK",
      Source,
      "TO",
      Target
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/skip.ts
var Skip = class {
  getMatcher() {
    const ret = seq(
      "SKIP",
      opt("TO LINE"),
      opt(Source)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/uline.ts
var Uline = class {
  getMatcher() {
    const ret = seq("ULINE", optPrio(WriteOffsetLength), optPrio("NO-GAP"));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/data_begin.ts
var DataBegin = class {
  getMatcher() {
    const occurs = seq("OCCURS", altPrio(Integer, FieldChain));
    const common = seq("COMMON PART", optPrio(DefinitionName));
    const structure = seq(
      "BEGIN OF",
      altPrio(common, seq(
        DefinitionName,
        optPrio("READ-ONLY"),
        optPrio(occurs)
      ))
    );
    return seq("DATA", structure);
  }
};

// ../core/src/abap/2_statements/statements/data_end.ts
var DataEnd = class {
  getMatcher() {
    const common = seq("COMMON PART", optPrio(DefinitionName));
    const structure = seq(
      "END OF",
      altPrio(common, DefinitionName)
    );
    const valid = seq("VALID BETWEEN", ComponentName, "AND", ComponentName);
    return seq("DATA", structure, optPrio(valid));
  }
};

// ../core/src/abap/2_statements/statements/type_begin.ts
var TypeBegin = class {
  getMatcher() {
    const ret = seq("TYPES", "BEGIN OF", NamespaceSimpleName, optPrio(verNot("Cloud" /* Cloud */, "%_FINAL")));
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/process_after_input.ts
var ProcessAfterInput = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "PROCESS AFTER INPUT");
  }
};

// ../core/src/abap/2_statements/statements/process_before_output.ts
var ProcessBeforeOutput = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "PROCESS BEFORE OUTPUT");
  }
};

// ../core/src/abap/2_statements/statements/process_on_value_request.ts
var ProcessOnValueRequest = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "PROCESS ON VALUE-REQUEST");
  }
};

// ../core/src/abap/2_statements/statements/type_end.ts
var TypeEnd = class {
  getMatcher() {
    const ret = seq("TYPES", "END OF", NamespaceSimpleName);
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/raise_event.ts
var RaiseEvent = class {
  getMatcher() {
    const exporting = seq("EXPORTING", ParameterListS);
    return seq("RAISE EVENT", EventName, opt(exporting));
  }
};

// ../core/src/abap/2_statements/statements/cleanup.ts
var Cleanup = class {
  getMatcher() {
    const into = seq("INTO", Target);
    return seq("CLEANUP", opt(into));
  }
};

// ../core/src/abap/2_statements/statements/create_ole.ts
var CreateOLE = class {
  getMatcher() {
    const ret = seq(
      "CREATE OBJECT",
      Target,
      Source,
      opt("NO FLUSH"),
      opt("QUEUE-ONLY")
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/call_ole.ts
var CallOLE = class {
  getMatcher() {
    const rc = seq("=", Target);
    const ret = seq(
      "CALL METHOD OF",
      Source,
      Source,
      opt(rc),
      opt("NO FLUSH"),
      opt(alt("QUEUE-ONLY", "QUEUEONLY")),
      opt(OLEExporting)
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/set_property.ts
var SetProperty = class {
  getMatcher() {
    const ret = seq(
      "SET PROPERTY OF",
      Source,
      alt(Constant, Field),
      "=",
      Source,
      optPrio("NO FLUSH"),
      opt(OLEExporting),
      opt("QUEUEONLY")
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/test_injection.ts
var TestInjection = class {
  getMatcher() {
    return seq("TEST-INJECTION", TestSeamName);
  }
};

// ../core/src/abap/2_statements/statements/end_test_injection.ts
var EndTestInjection = class {
  getMatcher() {
    return str("END-TEST-INJECTION");
  }
};

// ../core/src/abap/2_statements/statements/test_seam.ts
var TestSeam = class {
  getMatcher() {
    return ver("v750" /* v750 */, seq("TEST-SEAM", TestSeamName));
  }
};

// ../core/src/abap/2_statements/statements/end_test_seam.ts
var EndTestSeam = class {
  getMatcher() {
    return ver("v750" /* v750 */, str("END-TEST-SEAM"));
  }
};

// ../core/src/abap/2_statements/statements/delete_memory.ts
var DeleteMemory = class {
  getMatcher() {
    const memory = seq("MEMORY ID", Source);
    const id = seq("ID", Source);
    const client = seq("CLIENT", Source);
    const shared = seq("SHARED", altPrio("MEMORY", "BUFFER"), Field, "(", regex(/^[\w%]+$/), ")", optPrio(client), id);
    const ret = seq("DELETE FROM", alt(memory, shared));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/provide.ts
var Provide = class {
  getMatcher() {
    const list = plusPrio(altPrio("*", ProvideFieldName));
    const fields = seq(
      "FIELDS",
      list,
      "FROM",
      Source,
      "INTO",
      Target,
      "VALID",
      Field,
      "BOUNDS",
      Field,
      "AND",
      Field
    );
    const from = seq("FROM", Source);
    const fieldList = seq(plus(list), from);
    const where = seq("WHERE", Cond);
    const between = seq("BETWEEN", SimpleSource3, "AND", SimpleSource3);
    const ret = seq(
      "PROVIDE",
      altPrio(plusPrio(fields), plusPrio(fieldList)),
      opt(per(between, where))
    );
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/endexec.ts
var EndExec = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "ENDEXEC");
  }
};

// ../core/src/abap/2_statements/statements/chain.ts
var Chain = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "CHAIN");
  }
};

// ../core/src/abap/2_statements/statements/end_chain.ts
var EndChain = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "ENDCHAIN");
  }
};

// ../core/src/abap/2_statements/statements/call_subscreen.ts
var CallSubscreen = class {
  getMatcher() {
    const including = seq("INCLUDING", Source, Source);
    const ret = seq("CALL SUBSCREEN", Source, optPrio(including));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/sort_dataset.ts
var SortDataset = class {
  getMatcher() {
    const order = alt("ASCENDING", "DESCENDING");
    const sel = alt(ComponentChain, SourceFieldSymbol, Dynamic);
    const fields = plus(seq(sel, optPrio(order)));
    const by = seq("BY", fields);
    const ret = seq("SORT", opt("AS TEXT"), opt(by));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/get_permissions.ts
var GetPermissions = class {
  getMatcher() {
    const type = altPrio("GLOBAL AUTHORIZATION", "INSTANCE");
    const from = seq("FROM", Source);
    const s = seq(
      "GET PERMISSIONS ONLY",
      type,
      "ENTITY",
      SimpleName,
      optPrio(from),
      "REQUEST",
      Source,
      "RESULT",
      Target,
      "FAILED",
      Target,
      "REPORTED",
      Target
    );
    return ver("v754" /* v754 */, s);
  }
};

// ../core/src/abap/2_statements/statements/set_locks.ts
var SetLocks = class {
  getMatcher() {
    const s = seq(
      "SET LOCKS OF",
      SimpleName,
      "ENTITY",
      SimpleName,
      "FROM",
      Source,
      "FAILED",
      Target,
      "REPORTED",
      Target
    );
    return ver("v754" /* v754 */, s);
  }
};

// ../core/src/abap/2_statements/statements/enhancement.ts
var Enhancement = class {
  getMatcher() {
    const ret = seq("ENHANCEMENT", plus(NamespaceSimpleName));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/2_statements/statements/end_enhancement.ts
var EndEnhancement = class {
  getMatcher() {
    return verNot("Cloud" /* Cloud */, "ENDENHANCEMENT");
  }
};

// ../core/src/abap/2_statements/statements/form_definition.ts
var FormDefinition = class {
  getMatcher() {
    const ret = seq(
      "FORM",
      FormName,
      "DEFINITION",
      opt(FormTables),
      opt(FormUsing),
      opt(FormChanging),
      opt(FormRaising)
    );
    return ret;
  }
};

// ../core/src/abap/2_statements/statements/verification_message.ts
var VerificationMessage = class {
  getMatcher() {
    const priority = seq("PRIORITY", Source);
    const ret = seq("VERIFICATION-MESSAGE", Source, Source, opt(priority));
    return verNot("Cloud" /* Cloud */, ret);
  }
};

// ../core/src/abap/3_structures/structures/index.ts
var structures_exports = {};
__export(structures_exports, {
  Any: () => Any,
  At: () => At3,
  AtFirst: () => AtFirst2,
  AtLast: () => AtLast2,
  Body: () => Body,
  Case: () => Case2,
  CaseType: () => CaseType2,
  Catch: () => Catch2,
  CatchSystemExceptions: () => CatchSystemExceptions2,
  Chain: () => Chain2,
  ClassData: () => ClassData2,
  ClassDefinition: () => ClassDefinition2,
  ClassGlobal: () => ClassGlobal2,
  ClassImplementation: () => ClassImplementation2,
  Cleanup: () => Cleanup2,
  Constants: () => Constants,
  Data: () => Data2,
  Define: () => Define2,
  Do: () => Do2,
  DynproLogic: () => DynproLogic,
  DynproLoop: () => DynproLoop2,
  Else: () => Else2,
  ElseIf: () => ElseIf2,
  Enhancement: () => Enhancement2,
  EnhancementSection: () => EnhancementSection2,
  ExecSQL: () => ExecSQL2,
  Form: () => Form2,
  FunctionModule: () => FunctionModule2,
  If: () => If2,
  Interface: () => Interface2,
  InterfaceGlobal: () => InterfaceGlobal,
  Loop: () => Loop2,
  LoopAtScreen: () => LoopAtScreen2,
  LoopExtract: () => LoopExtract2,
  Method: () => Method,
  Module: () => Module2,
  Normal: () => Normal,
  OnChange: () => OnChange2,
  PrivateSection: () => PrivateSection,
  ProcessAfterInput: () => ProcessAfterInput2,
  ProcessBeforeOutput: () => ProcessBeforeOutput2,
  ProcessOnHelpRequest: () => ProcessOnHelpRequest2,
  ProcessOnValueRequest: () => ProcessOnValueRequest2,
  ProtectedSection: () => ProtectedSection,
  Provide: () => Provide2,
  PublicSection: () => PublicSection,
  SectionContents: () => SectionContents,
  Select: () => Select3,
  Statics: () => Statics,
  TestInjection: () => TestInjection2,
  TestSeam: () => TestSeam2,
  Try: () => Try2,
  TypeEnum: () => TypeEnum2,
  TypeMesh: () => TypeMesh2,
  Types: () => Types,
  When: () => When2,
  WhenType: () => WhenType2,
  While: () => While2,
  With: () => With2
});

// ../core/src/abap/2_statements/statements/_statement.ts
var Unknown = class {
  getMatcher() {
    throw new Error("Unknown Statement, get_matcher");
  }
};
var Comment2 = class {
  getMatcher() {
    throw new Error("Comment Statement, get_matcher");
  }
};
var Empty = class {
  getMatcher() {
    throw new Error("Empty Statement, get_matcher");
  }
};
var MacroCall = class {
  getMatcher() {
    throw new Error("MacroCall Statement, get_matcher");
  }
};
var MacroContent = class {
  getMatcher() {
    throw new Error("MacroContent Statement, get_matcher");
  }
};
var NativeSQL = class {
  getMatcher() {
    throw new Error("NativeSQL Statement, get_matcher");
  }
};

// ../core/src/abap/3_structures/structures/_combi.ts
var Sequence2 = class {
  constructor(list) {
    if (list.length < 2) {
      throw new Error("Sequence, length error");
    }
    this.list = list;
  }
  toRailroad() {
    const children = this.list.map((e) => {
      return e.toRailroad();
    });
    return "Railroad.Sequence(" + children.join() + ")";
  }
  getUsing() {
    return this.list.reduce((a, c) => {
      return a.concat(c.getUsing());
    }, []);
  }
  first() {
    return this.list[0].first();
  }
  run(statements, parent) {
    let inn = statements;
    let out = [];
    for (const i of this.list) {
      const match = i.run(inn, parent);
      if (match.error) {
        return {
          matched: [],
          unmatched: statements,
          error: true,
          errorDescription: match.errorDescription,
          errorMatched: out.length
        };
      }
      if (match.matched.length < 100) {
        out.push(...match.matched);
      } else {
        out = out.concat(match.matched);
      }
      inn = match.unmatched;
    }
    return {
      matched: out,
      unmatched: inn,
      error: false,
      errorDescription: "",
      errorMatched: 0
    };
  }
};
var Alternative2 = class {
  constructor(list) {
    if (list.length < 2) {
      throw new Error("Alternative, length error");
    }
    this.list = list;
  }
  setupMap() {
    if (this.map === void 0) {
      this.map = {};
      for (const i of this.list) {
        for (const first of i.first()) {
          if (this.map[first]) {
            this.map[first].push(i);
          } else {
            this.map[first] = [i];
          }
        }
      }
    }
  }
  first() {
    return [""];
  }
  toRailroad() {
    const children = this.list.map((e) => {
      return e.toRailroad();
    });
    return "Railroad.Choice(0, " + children.join() + ")";
  }
  getUsing() {
    return this.list.reduce((a, c) => {
      return a.concat(c.getUsing());
    }, []);
  }
  run(statements, parent) {
    this.setupMap();
    let count = 0;
    let countError = "";
    if (statements.length === 0) {
      return {
        matched: [],
        unmatched: statements,
        error: true,
        errorDescription: countError,
        errorMatched: count
      };
    }
    const token = statements[0].getFirstToken().getStr().toUpperCase();
    for (const i of this.map[token] || []) {
      const match = i.run(statements, parent);
      if (match.error === false) {
        return match;
      }
      if (match.errorMatched > count) {
        countError = match.errorDescription;
        count = match.errorMatched;
      }
    }
    for (const i of this.map[""] || []) {
      const match = i.run(statements, parent);
      if (match.error === false) {
        return match;
      }
      if (match.errorMatched > count) {
        countError = match.errorDescription;
        count = match.errorMatched;
      }
    }
    if (count === 0) {
      return {
        matched: [],
        unmatched: statements,
        error: true,
        errorDescription: "Unexpected code structure",
        errorMatched: count
      };
    } else {
      return {
        matched: [],
        unmatched: statements,
        error: true,
        errorDescription: countError,
        errorMatched: count
      };
    }
  }
};
var Optional2 = class {
  constructor(obj) {
    this.obj = obj;
  }
  toRailroad() {
    return "Railroad.Optional(" + this.obj.toRailroad() + ")";
  }
  getUsing() {
    return this.obj.getUsing();
  }
  run(statements, parent) {
    const ret = this.obj.run(statements, parent);
    ret.error = false;
    return ret;
  }
  first() {
    return [""];
  }
};
var Star2 = class {
  constructor(obj) {
    this.obj = obj;
  }
  toRailroad() {
    return "Railroad.ZeroOrMore(" + this.obj.toRailroad() + ")";
  }
  getUsing() {
    return this.obj.getUsing();
  }
  run(statements, parent) {
    let inn = statements;
    let out = [];
    while (true) {
      if (inn.length === 0) {
        return {
          matched: out,
          unmatched: inn,
          error: false,
          errorDescription: "",
          errorMatched: 0
        };
      }
      const match = this.obj.run(inn, parent);
      if (match.error === true) {
        if (match.errorMatched > 0) {
          return {
            matched: out,
            unmatched: inn,
            error: true,
            errorDescription: match.errorDescription,
            errorMatched: match.errorMatched
          };
        } else {
          return {
            matched: out,
            unmatched: inn,
            error: false,
            errorDescription: "",
            errorMatched: 0
          };
        }
      }
      if (match.matched.length < 100) {
        out.push(...match.matched);
      } else {
        out = out.concat(match.matched);
      }
      inn = match.unmatched;
    }
  }
  first() {
    return [""];
  }
};
var SubStructure = class {
  constructor(s) {
    this.s = s;
  }
  toRailroad() {
    return "Railroad.NonTerminal('" + this.s.constructor.name + "', {href: '#/structure/" + this.s.constructor.name + "'})";
  }
  getUsing() {
    return ["structure/" + this.s.constructor.name];
  }
  first() {
    this.setupMatcher();
    return this.matcher.first();
  }
  setupMatcher() {
    if (this.matcher === void 0) {
      this.matcher = this.s.getMatcher();
    }
  }
  run(statements, parent) {
    const nparent = new StructureNode(this.s);
    this.setupMatcher();
    const ret = this.matcher.run(statements, nparent);
    if (ret.matched.length === 0) {
      ret.error = true;
    } else {
      parent.addChild(nparent);
    }
    return ret;
  }
};
var SubStatement = class {
  constructor(obj) {
    this.obj = obj;
  }
  first() {
    const o = new this.obj();
    if (o instanceof MacroCall || o instanceof NativeSQL) {
      return [""];
    }
    return o.getMatcher().first();
  }
  toRailroad() {
    return "Railroad.Terminal('" + this.className() + "', {href: '#/statement/" + this.className() + "'})";
  }
  getUsing() {
    return ["statement/" + this.className()];
  }
  className() {
    return this.obj.name;
  }
  run(statements, parent) {
    if (statements.length === 0) {
      return {
        matched: [],
        unmatched: [],
        error: true,
        errorDescription: "Expected " + this.className().toUpperCase(),
        errorMatched: 0
      };
    } else if (statements[0].get() instanceof this.obj) {
      parent.addChild(statements[0]);
      return {
        matched: [statements[0]],
        unmatched: statements.splice(1),
        error: false,
        errorDescription: "",
        errorMatched: 0
      };
    } else {
      return {
        matched: [],
        unmatched: statements,
        error: true,
        errorDescription: "Expected " + this.className().toUpperCase(),
        errorMatched: 0
      };
    }
  }
};
function seq2(first, ...rest) {
  return new Sequence2([first].concat(rest));
}
function alt2(first, ...rest) {
  return new Alternative2([first].concat(rest));
}
function beginEnd(begin, body, end) {
  return new Sequence2([begin, body, end]);
}
function opt2(o) {
  return new Optional2(o);
}
function star2(s) {
  return new Star2(s);
}
function sta(s) {
  return new SubStatement(s);
}
var singletons = {};
function sub(s) {
  if (singletons[s.name] === void 0) {
    singletons[s.name] = new SubStructure(new s());
  }
  return singletons[s.name];
}

// ../core/src/abap/3_structures/structures/any.ts
var Any = class {
  getMatcher() {
    return star2(alt2(
      sta(ClassLocalFriends),
      sta(ClassDeferred),
      sta(Report),
      sta(Program),
      sta(Parameter),
      sta(CheckSelectOptions),
      sta(Get),
      sta(Initialization),
      sta(InterfaceDeferred),
      sta(SelectionScreen),
      sta(SelectOption),
      sta(AtSelectionScreen),
      sta(AtLineSelection),
      sta(AtPF),
      sta(AtUserCommand),
      sta(StartOfSelection),
      sta(EndOfSelection),
      sta(LoadOfProgram),
      sta(TopOfPage),
      sta(EndOfPage),
      sta(Controls),
      sta(TypePools),
      sta(TypePool),
      sta(FunctionPool),
      sub(Normal),
      sub(Form2),
      sub(Module2),
      sub(FunctionModule2),
      sub(Interface2),
      sub(ClassDefinition2),
      sub(ClassImplementation2)
    ));
  }
};

// ../core/src/abap/3_structures/structures/normal.ts
var Normal = class {
  getMatcher() {
    return alt2(
      sta(Move),
      sta(Call),
      sta(Data),
      sub(If2),
      sta(Clear),
      sta(FieldSymbol2),
      sta(CreateObject),
      sta(CallFunction),
      sta(MacroCall),
      sub(LoopAtScreen2),
      sub(Loop2),
      sub(LoopExtract2),
      sta(Append),
      sub(Try2),
      sub(OnChange2),
      sta(ReadTable),
      sta(Assert),
      sta(Return),
      sta(Select2),
      sta(Assign),
      sta(InsertInternal),
      sta(DeleteInternal),
      sta(Concatenate),
      sub(Case2),
      sub(CaseType2),
      sub(Enhancement2),
      sub(EnhancementSection2),
      sta(AddCorresponding),
      sta(Add),
      sta(AssignLocalCopy),
      sta(AuthorityCheck),
      sta(Back),
      sta(Break),
      sta(BreakId),
      sta(CallDatabase),
      sta(CallDialog),
      sta(CallKernel),
      sta(CallOLE),
      sta(CallScreen),
      sta(ModifyScreen),
      sta(CallSelectionScreen),
      sta(CallTransaction),
      sta(CallTransformation),
      sta(Check),
      sta(ClassDefinitionLoad),
      sta(CloseCursor),
      sta(CloseDataset),
      sta(Collect),
      sta(Commit),
      sta(Communication),
      sta(Compute),
      sta(CallBadi),
      sta(Condense),
      sta(Constant2),
      sta(Contexts),
      sta(Continue),
      sta(ConvertText),
      sta(Convert),
      sta(CreateData),
      sta(CreateOLE),
      sta(DeleteCluster),
      sta(DeleteDatabase),
      sta(DeleteDataset),
      sta(DeleteDynpro),
      sta(DeleteMemory),
      sta(DeleteReport),
      sta(DeleteTextpool),
      sta(Demand),
      sta(Describe),
      sta(Detail),
      sta(Divide),
      sta(EditorCall),
      sta(EnhancementPoint),
      sta(Exit),
      sta(ExportDynpro),
      sta(Export),
      sta(Extract),
      sta(FetchNextCursor),
      sta(FieldGroup),
      sta(Fields),
      sta(Find),
      sta(Format),
      sta(FreeMemory),
      sta(FreeObject),
      sta(Free),
      sta(GenerateDynpro),
      sta(GenerateReport),
      sta(GenerateSubroutine),
      sta(GetBadi),
      sta(GetBit),
      sta(GetCursor),
      sta(GetDataset),
      sta(GetLocale),
      sta(GetParameter),
      sta(GetPFStatus),
      sta(GetProperty),
      sta(GetReference),
      sta(GetRunTime),
      sta(GetTime),
      sta(Hide),
      sta(Nodes),
      sta(ImportDynpro),
      sta(ImportNametab),
      sta(MoveCorresponding),
      sta(Import),
      sta(Infotypes),
      sta(Include),
      // include does not have to be at top level
      sta(InsertDatabase),
      sta(InsertReport),
      sta(InsertTextpool),
      sta(InsertFieldGroup),
      sta(InterfaceLoad),
      sta(Leave),
      sta(LoadReport),
      sta(Local),
      sta(With),
      sta(LogPoint),
      sta(Message),
      sta(ModifyLine),
      sta(ModifyDatabase),
      sta(ModifyInternal),
      sta(Multiply),
      sta(NewLine),
      sta(NewPage),
      sta(OpenCursor),
      sta(OpenDataset),
      sta(Overlay),
      sta(Pack),
      sta(Perform),
      sta(FormDefinition),
      sta(Position2),
      sta(Put),
      sta(PrintControl),
      sta(RaiseEvent),
      sta(RaiseEntityEvent),
      sta(Raise),
      sta(Ranges),
      sta(ReadDataset),
      sta(ReadLine),
      sta(ReadReport),
      sta(ReadTextpool),
      sta(Receive),
      sta(RefreshControl),
      sta(Refresh),
      sta(Reject),
      sta(Replace),
      sta(Reserve),
      sta(Resume),
      sta(Retry),
      sta(Rollback),
      sta(Scan),
      sta(ScrollList),
      sta(Search),
      sta(SetBit),
      sta(SetBlank),
      sta(SetCountry),
      sta(SetCursor),
      sta(SetDataset),
      sta(SetExtendedCheck),
      sta(SetHandler),
      sta(SetLanguage),
      sta(SetLeft),
      sta(SetLocale),
      sta(SetMargin),
      sta(SetParameter),
      sta(SetPFStatus),
      sta(SetProperty),
      sta(SetRunTime),
      sta(SetScreen),
      sta(SetTitlebar),
      sta(SetUserCommand),
      sta(SetUpdateTask),
      sta(Shift),
      sta(Skip),
      sta(SortDataset),
      sta(Sort),
      sta(Static),
      sta(Split),
      sta(Stop),
      sta(Submit),
      sta(Summary),
      sta(SubtractCorresponding),
      sta(Subtract),
      sta(SuppressDialog),
      sta(Supply),
      sta(Sum),
      sta(SyntaxCheck),
      sta(SystemCall),
      sta(Tables),
      sta(Transfer),
      sta(Translate),
      sta(Type2),
      sta(TypePools),
      sta(Uline),
      sta(Unassign),
      sta(Unpack),
      sta(UpdateDatabase),
      sta(Wait),
      sta(Window),
      sta(Write),
      sta(CommitEntities),
      sta(GetPermissions),
      sta(SetLocks),
      sta(ModifyEntities),
      sta(ReadEntities),
      sta(RollbackEntities),
      sta(Module),
      // todo, should be dynpro specific
      sta(Field2),
      // todo, should be dynpro specific
      sub(Chain2),
      // todo, should be dynpro specific
      sub(Define2),
      sub(TestInjection2),
      sub(TestSeam2),
      sub(TypeMesh2),
      sub(Provide2),
      sub(CatchSystemExceptions2),
      sub(At3),
      sub(AtFirst2),
      sub(AtLast2),
      sub(Constants),
      sub(Types),
      sub(Statics),
      sub(Select3),
      sub(Data2),
      sub(TypeEnum2),
      sub(While2),
      sub(With2),
      sub(Do2),
      sub(ExecSQL2)
    );
  }
};

// ../core/src/abap/3_structures/structures/body.ts
var Body = class {
  getMatcher() {
    return star2(sub(Normal));
  }
};

// ../core/src/abap/3_structures/structures/at_first.ts
var AtFirst2 = class {
  getMatcher() {
    return beginEnd(
      sta(AtFirst),
      opt2(sub(Body)),
      sta(EndAt)
    );
  }
};

// ../core/src/abap/3_structures/structures/at_last.ts
var AtLast2 = class {
  getMatcher() {
    return beginEnd(
      sta(AtLast),
      opt2(sub(Body)),
      sta(EndAt)
    );
  }
};

// ../core/src/abap/3_structures/structures/at.ts
var At3 = class {
  getMatcher() {
    return beginEnd(
      sta(At2),
      opt2(sub(Body)),
      sta(EndAt)
    );
  }
};

// ../core/src/abap/3_structures/structures/when_type.ts
var WhenType2 = class {
  getMatcher() {
    const when = seq2(alt2(sta(WhenType), sta(WhenOthers)), opt2(sub(Body)));
    return when;
  }
};

// ../core/src/abap/3_structures/structures/case_type.ts
var CaseType2 = class {
  getMatcher() {
    return beginEnd(
      sta(CaseType),
      star2(alt2(sub(WhenType2), sta(Data))),
      sta(EndCase)
    );
  }
};

// ../core/src/abap/3_structures/structures/when.ts
var When2 = class {
  getMatcher() {
    const when = seq2(alt2(sta(When), sta(WhenOthers)), opt2(sub(Body)));
    return when;
  }
};

// ../core/src/abap/3_structures/structures/case.ts
var Case2 = class {
  getMatcher() {
    return beginEnd(
      sta(Case),
      seq2(star2(sub(Normal)), star2(alt2(sub(When2), sta(MacroCall), sta(Include)))),
      sta(EndCase)
    );
  }
};

// ../core/src/abap/3_structures/structures/catch_system_exceptions.ts
var CatchSystemExceptions2 = class {
  getMatcher() {
    return beginEnd(
      sta(CatchSystemExceptions),
      opt2(sub(Body)),
      sta(EndCatch)
    );
  }
};

// ../core/src/abap/3_structures/structures/catch.ts
var Catch2 = class {
  getMatcher() {
    const cat = seq2(sta(Catch), opt2(sub(Body)));
    return cat;
  }
};

// ../core/src/abap/3_structures/structures/chain.ts
var Chain2 = class {
  getMatcher() {
    return beginEnd(
      sta(Chain),
      star2(alt2(sta(Field2), sta(Module))),
      sta(EndChain)
    );
  }
};

// ../core/src/abap/3_structures/structures/class_data.ts
var ClassData2 = class _ClassData {
  getMatcher() {
    return beginEnd(
      sta(ClassDataBegin),
      star2(alt2(sta(ClassData), sub(_ClassData))),
      sta(ClassDataEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/types.ts
var Types = class _Types {
  getMatcher() {
    return beginEnd(
      sta(TypeBegin),
      star2(alt2(
        sta(Type2),
        sub(_Types),
        sta(MacroCall),
        sta(Include),
        sta(IncludeType)
      )),
      sta(TypeEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/constants.ts
var Constants = class _Constants {
  getMatcher() {
    return beginEnd(
      sta(ConstantBegin),
      star2(alt2(
        sta(Constant2),
        sta(Include),
        sub(_Constants)
      )),
      sta(ConstantEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/type_enum.ts
var TypeEnum2 = class {
  getMatcher() {
    return beginEnd(
      sta(TypeEnumBegin),
      star2(alt2(sta(TypeEnum), sta(Type2))),
      sta(TypeEnumEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/enhancement.ts
var Enhancement2 = class {
  getMatcher() {
    return beginEnd(
      sta(Enhancement),
      opt2(sub(Body)),
      sta(EndEnhancement)
    );
  }
};

// ../core/src/abap/3_structures/structures/define.ts
var Define2 = class {
  getMatcher() {
    return beginEnd(
      sta(Define),
      star2(sta(MacroContent)),
      sta(EndOfDefinition)
    );
  }
};

// ../core/src/abap/3_structures/structures/data.ts
var Data2 = class _Data {
  getMatcher() {
    return beginEnd(
      sta(DataBegin),
      star2(alt2(
        sta(Data),
        sub(_Data),
        sta(Include),
        sta(Ranges),
        sta(Constant2),
        sub(Constants),
        sta(Type2),
        sub(Types),
        sub(Enhancement2),
        sub(Define2),
        sta(IncludeType),
        sta(Parameter),
        sta(SelectionScreen),
        sta(SelectOption),
        sta(TypePools),
        sta(EnhancementPoint)
      )),
      sta(DataEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/section_contents.ts
var SectionContents = class {
  getMatcher() {
    return star2(alt2(
      sta(MethodDef),
      sta(InterfaceDef),
      sta(Data),
      sta(ClassData),
      sta(Events),
      sta(Constant2),
      sta(Aliases),
      sta(TypePools),
      sta(InterfaceLoad),
      sta(ClassDefinitionLoad),
      sta(Include),
      sub(Types),
      sub(Constants),
      sub(TypeEnum2),
      sub(TypeMesh2),
      sub(Data2),
      sub(ClassData2),
      sta(Type2)
    ));
  }
};

// ../core/src/abap/3_structures/structures/private_section.ts
var PrivateSection = class {
  getMatcher() {
    return seq2(sta(Private), opt2(sub(SectionContents)));
  }
};

// ../core/src/abap/3_structures/structures/protected_section.ts
var ProtectedSection = class {
  getMatcher() {
    return seq2(sta(Protected), opt2(sub(SectionContents)));
  }
};

// ../core/src/abap/3_structures/structures/public_section.ts
var PublicSection = class {
  getMatcher() {
    return seq2(sta(Public), opt2(sub(SectionContents)));
  }
};

// ../core/src/abap/3_structures/structures/class_definition.ts
var ClassDefinition2 = class {
  getMatcher() {
    const body = seq2(
      opt2(sta(SetExtendedCheck)),
      star2(sta(TypePools)),
      opt2(sub(PublicSection)),
      opt2(sub(ProtectedSection)),
      opt2(sub(PrivateSection)),
      opt2(sta(SetExtendedCheck))
    );
    return beginEnd(sta(ClassDefinition), body, sta(EndClass));
  }
};

// ../core/src/abap/3_structures/structures/class_global.ts
var ClassGlobal2 = class {
  getMatcher() {
    return seq2(
      star2(sta(TypePools)),
      sub(ClassDefinition2),
      sub(ClassImplementation2)
    );
  }
};

// ../core/src/abap/3_structures/structures/class_implementation.ts
var ClassImplementation2 = class {
  getMatcher() {
    const body = star2(alt2(sub(Define2), sta(Include), sub(Method)));
    return beginEnd(
      sta(ClassImplementation),
      body,
      sta(EndClass)
    );
  }
};

// ../core/src/abap/3_structures/structures/cleanup.ts
var Cleanup2 = class {
  getMatcher() {
    const cleanup = seq2(sta(Cleanup), opt2(sub(Body)));
    return cleanup;
  }
};

// ../core/src/abap/3_structures/structures/do.ts
var Do2 = class {
  getMatcher() {
    return beginEnd(
      sta(Do),
      opt2(sub(Body)),
      sta(EndDo)
    );
  }
};

// ../core/src/abap/3_structures/structures/dynpro_logic.ts
var DynproLogic = class {
  getMatcher() {
    return seq2(
      sub(ProcessBeforeOutput2),
      opt2(sub(ProcessAfterInput2)),
      opt2(sub(ProcessOnHelpRequest2)),
      opt2(sub(ProcessOnValueRequest2)),
      opt2(sub(ProcessOnHelpRequest2))
    );
  }
};

// ../core/src/abap/3_structures/structures/else.ts
var Else2 = class {
  getMatcher() {
    const body = opt2(sub(Body));
    const elseif = seq2(sta(Else), body);
    return elseif;
  }
};

// ../core/src/abap/3_structures/structures/elseif.ts
var ElseIf2 = class {
  getMatcher() {
    const body = opt2(sub(Body));
    const elseif = seq2(sta(ElseIf), body);
    return elseif;
  }
};

// ../core/src/abap/3_structures/structures/enhancement_section.ts
var EnhancementSection2 = class {
  getMatcher() {
    return beginEnd(
      sta(EnhancementSection),
      opt2(sub(Body)),
      sta(EndEnhancementSection)
    );
  }
};

// ../core/src/abap/3_structures/structures/exec_sql.ts
var ExecSQL2 = class {
  getMatcher() {
    return beginEnd(
      sta(ExecSQL),
      star2(sta(NativeSQL)),
      sta(EndExec)
    );
  }
};

// ../core/src/abap/3_structures/structures/form.ts
var Form2 = class {
  getMatcher() {
    return beginEnd(
      sta(Form),
      opt2(sub(Body)),
      sta(EndForm)
    );
  }
};

// ../core/src/abap/3_structures/structures/function_module.ts
var FunctionModule2 = class {
  getMatcher() {
    return beginEnd(
      sta(FunctionModule),
      opt2(sub(Body)),
      sta(EndFunction)
    );
  }
};

// ../core/src/abap/3_structures/structures/if.ts
var If2 = class {
  getMatcher() {
    const contents = seq2(
      opt2(sub(Body)),
      star2(sub(ElseIf2)),
      opt2(sub(Else2))
    );
    return beginEnd(
      sta(If),
      contents,
      sta(EndIf)
    );
  }
};

// ../core/src/abap/3_structures/structures/interface_global.ts
var InterfaceGlobal = class {
  getMatcher() {
    return seq2(
      star2(sta(TypePools)),
      star2(sta(InterfaceLoad)),
      sub(Interface2)
    );
  }
};

// ../core/src/abap/3_structures/structures/interface.ts
var Interface2 = class {
  getMatcher() {
    const intf = beginEnd(
      sta(Interface),
      star2(sub(SectionContents)),
      sta(EndInterface)
    );
    return intf;
  }
};

// ../core/src/abap/3_structures/structures/loop_at_screen.ts
var LoopAtScreen2 = class {
  getMatcher() {
    return beginEnd(
      sta(LoopAtScreen),
      opt2(sub(Body)),
      sta(EndLoop)
    );
  }
};

// ../core/src/abap/3_structures/structures/loop.ts
var Loop2 = class {
  getMatcher() {
    return beginEnd(
      sta(Loop),
      star2(sub(Body)),
      sta(EndLoop)
    );
  }
};

// ../core/src/abap/3_structures/structures/method.ts
var Method = class {
  getMatcher() {
    return beginEnd(
      sta(MethodImplementation),
      opt2(alt2(sub(Body), star2(sta(NativeSQL)))),
      sta(EndMethod)
    );
  }
};

// ../core/src/abap/3_structures/structures/module.ts
var Module2 = class {
  getMatcher() {
    return beginEnd(
      sta(Module),
      opt2(sub(Body)),
      sta(EndModule)
    );
  }
};

// ../core/src/abap/3_structures/structures/on_change.ts
var OnChange2 = class {
  getMatcher() {
    return beginEnd(
      sta(OnChange),
      seq2(opt2(sub(Body)), opt2(sub(Else2))),
      sta(EndOn)
    );
  }
};

// ../core/src/abap/3_structures/structures/dynpro_loop.ts
var DynproLoop2 = class {
  getMatcher() {
    return beginEnd(
      sta(DynproLoop),
      star2(alt2(sta(Module), sta(Field2), sub(Chain2))),
      sta(EndLoop)
    );
  }
};

// ../core/src/abap/3_structures/structures/loop_extract.ts
var LoopExtract2 = class {
  getMatcher() {
    return beginEnd(
      sta(LoopExtract),
      star2(sub(Body)),
      sta(EndLoop)
    );
  }
};

// ../core/src/abap/3_structures/structures/process_after_input.ts
var ProcessAfterInput2 = class {
  getMatcher() {
    const pai = star2(alt2(
      sta(Module),
      sta(Field2),
      sta(CallSubscreen),
      sub(Chain2),
      sub(DynproLoop2),
      sub(LoopExtract2),
      sub(Loop2)
    ));
    return seq2(
      sta(ProcessAfterInput),
      pai
    );
  }
};

// ../core/src/abap/3_structures/structures/process_before_output.ts
var ProcessBeforeOutput2 = class {
  getMatcher() {
    const pbo = star2(alt2(
      sta(Module),
      sta(Field2),
      sta(CallSubscreen),
      sub(LoopExtract2),
      sub(DynproLoop2)
    ));
    return seq2(sta(ProcessBeforeOutput), pbo);
  }
};

// ../core/src/abap/3_structures/structures/process_on_value_request.ts
var ProcessOnValueRequest2 = class {
  getMatcher() {
    const pov = star2(sta(Field2));
    return seq2(sta(ProcessOnValueRequest), pov);
  }
};

// ../core/src/abap/3_structures/structures/provide.ts
var Provide2 = class {
  getMatcher() {
    return beginEnd(
      sta(Provide),
      opt2(sub(Body)),
      sta(EndProvide)
    );
  }
};

// ../core/src/abap/3_structures/structures/select.ts
var Select3 = class {
  getMatcher() {
    return beginEnd(
      sta(SelectLoop2),
      opt2(sub(Body)),
      sta(EndSelect)
    );
  }
};

// ../core/src/abap/3_structures/structures/process_on_help_request.ts
var ProcessOnHelpRequest2 = class {
  getMatcher() {
    const pov = star2(sta(Field2));
    return seq2(sta(ProcessOnHelpRequest), pov);
  }
};

// ../core/src/abap/3_structures/structures/statics.ts
var Statics = class {
  getMatcher() {
    return beginEnd(
      sta(StaticBegin),
      star2(alt2(sta(Static), sta(IncludeType))),
      sta(StaticEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/test_injection.ts
var TestInjection2 = class {
  getMatcher() {
    return beginEnd(
      sta(TestInjection),
      opt2(sub(Body)),
      sta(EndTestInjection)
    );
  }
};

// ../core/src/abap/3_structures/structures/test_seam.ts
var TestSeam2 = class {
  getMatcher() {
    return beginEnd(
      sta(TestSeam),
      opt2(sub(Body)),
      sta(EndTestSeam)
    );
  }
};

// ../core/src/abap/3_structures/structures/try.ts
var Try2 = class {
  getMatcher() {
    const block = seq2(opt2(sub(Body)), star2(sub(Catch2)), opt2(sub(Cleanup2)));
    return beginEnd(
      sta(Try),
      block,
      sta(EndTry)
    );
  }
};

// ../core/src/abap/3_structures/structures/type_mesh.ts
var TypeMesh2 = class {
  getMatcher() {
    return beginEnd(
      sta(TypeMeshBegin),
      star2(alt2(sta(TypeMesh), sta(Type2))),
      sta(TypeMeshEnd)
    );
  }
};

// ../core/src/abap/3_structures/structures/while.ts
var While2 = class {
  getMatcher() {
    return beginEnd(
      sta(While),
      opt2(sub(Body)),
      sta(EndWhile)
    );
  }
};

// ../core/src/abap/3_structures/structures/with.ts
var With2 = class {
  getMatcher() {
    return beginEnd(
      sta(WithLoop),
      opt2(sub(Body)),
      sta(EndWith)
    );
  }
};

// ../core/src/abap/artifacts.ts
var List = class {
  constructor() {
    this.words = [];
  }
  add(keywords, source) {
    for (const w of keywords) {
      const index = this.find(w);
      if (index >= 0) {
        this.words[index].source.push(source);
      } else {
        this.words.push({ word: w, source: [source] });
      }
    }
  }
  get() {
    return this.words;
  }
  find(keyword) {
    for (let i = 0; i < this.words.length; i++) {
      if (this.words[i].word === keyword) {
        return i;
      }
    }
    return -1;
  }
};
function className(cla) {
  return cla.constructor.name;
}
var ArtifactsABAP = class {
  static getStructures() {
    const ret = [];
    const list = structures_exports;
    for (const key in structures_exports) {
      if (typeof list[key] === "function") {
        ret.push(new list[key]());
      }
    }
    return ret;
  }
  static getExpressions() {
    const ret = [];
    const list = expressions_exports;
    for (const key in expressions_exports) {
      if (typeof list[key] === "function") {
        ret.push(list[key]);
      }
    }
    return ret;
  }
  static getStatements() {
    const ret = [];
    const list = statements_exports;
    for (const key in statements_exports) {
      if (typeof list[key] === "function") {
        ret.push(new list[key]());
      }
    }
    return ret;
  }
  static getKeywords() {
    const list = new List();
    for (const stat of this.getStatements()) {
      list.add(Combi.listKeywords(stat.getMatcher()), "statement_" + className(stat));
    }
    for (const expr of this.getExpressions()) {
      list.add(Combi.listKeywords(new expr().getRunnable()), "expression_" + className(expr));
    }
    return list.get();
  }
};

// ../core/src/files/_abstract_file.ts
var AbstractFile = class {
  constructor(filename) {
    this.filename = filename;
  }
  getFilename() {
    return this.filename;
  }
  baseName() {
    let name = this.getFilename();
    let index = name.lastIndexOf("\\");
    if (index) {
      index = index + 1;
    }
    name = name.substring(index);
    index = name.lastIndexOf("/");
    if (index) {
      index = index + 1;
    }
    return name.substring(index);
  }
  getObjectType() {
    const split = this.baseName().split(".");
    return split[1]?.toUpperCase();
  }
  getObjectName() {
    const split = this.baseName().split(".");
    split[0] = split[0].replace(/%23/g, "#");
    split[0] = split[0].replace(/%3e/g, ">");
    split[0] = split[0].replace(/%3c/g, "<");
    split[0] = split[0].toUpperCase().replace(/#/g, "/");
    split[0] = split[0].replace("(", "/");
    split[0] = split[0].replace(")", "/");
    return split[0];
  }
};

// ../core/src/files/memory_file.ts
var MemoryFile = class extends AbstractFile {
  constructor(filename, raw) {
    super(filename);
    this.raw = raw;
  }
  getRaw() {
    return this.raw;
  }
  getRawRows() {
    return this.raw.split("\n");
  }
};

// ../core/src/virtual_position.ts
var VirtualPosition = class _VirtualPosition extends Position {
  constructor(virtual, row, col) {
    super(virtual.getRow(), virtual.getCol());
    this.vrow = row;
    this.vcol = col;
  }
  equals(p) {
    if (!(p instanceof _VirtualPosition)) {
      return false;
    }
    const casted = p;
    return super.equals(this) && this.vrow === casted.vrow && this.vcol === casted.vcol;
  }
  isAfter(p) {
    if (p instanceof _VirtualPosition) {
      if (this.getRow() > p.getRow()) {
        return true;
      }
      if (this.getRow() === p.getRow() && this.getCol() > p.getCol()) {
        return true;
      }
      if (this.getRow() === p.getRow() && this.getCol() === p.getCol() && this.vrow > p.vrow) {
        return true;
      }
      if (this.getRow() === p.getRow() && this.getCol() === p.getCol() && this.vrow === p.vrow && this.vcol > p.vcol) {
        return true;
      }
      return false;
    } else {
      return super.isAfter(p);
    }
  }
};

// ../core/src/abap/1_lexer/lexer_buffer.ts
var LexerBuffer = class {
  constructor() {
    this.buf = "";
  }
  add(s) {
    this.buf = this.buf + s;
    return this.buf;
  }
  get() {
    return this.buf;
  }
  clear() {
    this.buf = "";
  }
  countIsEven(char) {
    let count = 0;
    for (let i = 0; i < this.buf.length; i += 1) {
      if (this.buf.charAt(i) === char) {
        count += 1;
      }
    }
    return count % 2 === 0;
  }
};

// ../core/src/abap/1_lexer/lexer_stream.ts
var LexerStream = class {
  constructor(raw) {
    this.offset = -1;
    this.raw = raw;
    this.row = 0;
    this.col = 0;
  }
  advance() {
    if (this.currentChar() === "\n") {
      this.col = 1;
      this.row = this.row + 1;
    }
    if (this.offset === this.raw.length) {
      this.col = this.col - 1;
      return false;
    }
    this.col = this.col + 1;
    this.offset = this.offset + 1;
    return true;
  }
  getCol() {
    return this.col;
  }
  getRow() {
    return this.row;
  }
  prevChar() {
    if (this.offset - 1 < 0) {
      return "";
    }
    return this.raw.substr(this.offset - 1, 1);
  }
  prevPrevChar() {
    if (this.offset - 2 < 0) {
      return "";
    }
    return this.raw.substr(this.offset - 2, 2);
  }
  currentChar() {
    if (this.offset < 0) {
      return "\n";
    } else if (this.offset >= this.raw.length) {
      return "";
    }
    return this.raw.substr(this.offset, 1);
  }
  nextChar() {
    if (this.offset + 2 > this.raw.length) {
      return "";
    }
    return this.raw.substr(this.offset + 1, 1);
  }
  nextNextChar() {
    if (this.offset + 3 > this.raw.length) {
      return this.nextChar();
    }
    return this.raw.substr(this.offset + 1, 2);
  }
  getRaw() {
    return this.raw;
  }
  getOffset() {
    return this.offset;
  }
};

// ../core/src/abap/1_lexer/lexer.ts
var ModeNormal = 1;
var ModePing = 2;
var ModeStr = 3;
var ModeTemplate = 4;
var ModeComment = 5;
var ModePragma = 6;
var Lexer = class {
  run(file, virtual) {
    this.virtual = virtual;
    this.tokens = [];
    this.m = ModeNormal;
    this.process(file.getRaw());
    return { file, tokens: this.tokens };
  }
  add() {
    const s = this.buffer.get().trim();
    if (s.length > 0) {
      const col = this.stream.getCol();
      const row = this.stream.getRow();
      let whiteBefore = false;
      if (this.stream.getOffset() - s.length >= 0) {
        const prev = this.stream.getRaw().substr(this.stream.getOffset() - s.length, 1);
        if (prev === " " || prev === "\n" || prev === "	" || prev === ":") {
          whiteBefore = true;
        }
      }
      let whiteAfter = false;
      const next = this.stream.nextChar();
      if (next === " " || next === "\n" || next === "	" || next === ":" || next === "," || next === "." || next === "" || next === '"') {
        whiteAfter = true;
      }
      let pos = new Position(row, col - s.length);
      if (this.virtual) {
        pos = new VirtualPosition(this.virtual, pos.getRow(), pos.getCol());
      }
      let tok2 = void 0;
      if (this.m === ModeComment) {
        tok2 = new Comment(pos, s);
      } else if (this.m === ModePing || this.m === ModeStr) {
        tok2 = new StringToken(pos, s);
      } else if (this.m === ModeTemplate) {
        const first = s.charAt(0);
        const last = s.charAt(s.length - 1);
        if (first === "|" && last === "|") {
          tok2 = new StringTemplate(pos, s);
        } else if (first === "|" && last === "{" && whiteAfter === true) {
          tok2 = new StringTemplateBegin(pos, s);
        } else if (first === "}" && last === "|" && whiteBefore === true) {
          tok2 = new StringTemplateEnd(pos, s);
        } else if (first === "}" && last === "{" && whiteAfter === true && whiteBefore === true) {
          tok2 = new StringTemplateMiddle(pos, s);
        } else {
          tok2 = new Identifier(pos, s);
        }
      } else if (s.length > 2 && s.substr(0, 2) === "##") {
        tok2 = new Pragma(pos, s);
      } else if (s.length === 1) {
        if (s === "." || s === ",") {
          tok2 = new Punctuation(pos, s);
        } else if (s === "[") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WBracketLeftW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WBracketLeft(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new BracketLeftW(pos, s);
          } else {
            tok2 = new BracketLeft(pos, s);
          }
        } else if (s === "(") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WParenLeftW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WParenLeft(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new ParenLeftW(pos, s);
          } else {
            tok2 = new ParenLeft(pos, s);
          }
        } else if (s === "]") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WBracketRightW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WBracketRight(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new BracketRightW(pos, s);
          } else {
            tok2 = new BracketRight(pos, s);
          }
        } else if (s === ")") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WParenRightW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WParenRight(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new ParenRightW(pos, s);
          } else {
            tok2 = new ParenRight(pos, s);
          }
        } else if (s === "-") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WDashW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WDash(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new DashW(pos, s);
          } else {
            tok2 = new Dash(pos, s);
          }
        } else if (s === "+") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WPlusW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WPlus(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new PlusW(pos, s);
          } else {
            tok2 = new Plus(pos, s);
          }
        } else if (s === "@") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WAtW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WAt(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new AtW(pos, s);
          } else {
            tok2 = new At(pos, s);
          }
        }
      } else if (s.length === 2) {
        if (s === "->") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WInstanceArrowW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WInstanceArrow(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new InstanceArrowW(pos, s);
          } else {
            tok2 = new InstanceArrow(pos, s);
          }
        } else if (s === "=>") {
          if (whiteBefore === true && whiteAfter === true) {
            tok2 = new WStaticArrowW(pos, s);
          } else if (whiteBefore === true) {
            tok2 = new WStaticArrow(pos, s);
          } else if (whiteAfter === true) {
            tok2 = new StaticArrowW(pos, s);
          } else {
            tok2 = new StaticArrow(pos, s);
          }
        }
      }
      if (tok2 === void 0) {
        tok2 = new Identifier(pos, s);
      }
      this.tokens.push(tok2);
    }
    this.buffer.clear();
  }
  process(raw) {
    this.stream = new LexerStream(raw.replace(/\r/g, ""));
    this.buffer = new LexerBuffer();
    const splits = {};
    splits[" "] = true;
    splits[":"] = true;
    splits["."] = true;
    splits[","] = true;
    splits["-"] = true;
    splits["+"] = true;
    splits["("] = true;
    splits[")"] = true;
    splits["["] = true;
    splits["]"] = true;
    splits["	"] = true;
    splits["\n"] = true;
    const bufs = {};
    bufs["."] = true;
    bufs[","] = true;
    bufs[":"] = true;
    bufs["("] = true;
    bufs[")"] = true;
    bufs["["] = true;
    bufs["]"] = true;
    bufs["+"] = true;
    bufs["@"] = true;
    for (; ; ) {
      const current = this.stream.currentChar();
      const buf = this.buffer.add(current);
      const ahead = this.stream.nextChar();
      const aahead = this.stream.nextNextChar();
      if (this.m === ModeNormal) {
        if (splits[ahead]) {
          this.add();
        } else if (ahead === "'") {
          this.add();
          this.m = ModeStr;
        } else if (ahead === "|" || ahead === "}") {
          this.add();
          this.m = ModeTemplate;
        } else if (ahead === "`") {
          this.add();
          this.m = ModePing;
        } else if (aahead === "##") {
          this.add();
          this.m = ModePragma;
        } else if (ahead === '"' || ahead === "*" && current === "\n") {
          this.add();
          this.m = ModeComment;
        } else if (ahead === "@" && buf.trim().length === 0) {
          this.add();
        } else if (aahead === "->" || aahead === "=>") {
          this.add();
        } else if (current === ">" && ahead !== " " && (this.stream.prevChar() === "-" || this.stream.prevChar() === "=")) {
          this.add();
        } else if (buf.length === 1 && (bufs[buf] || buf === "-" && ahead !== ">")) {
          this.add();
        }
      } else if (this.m === ModePragma && (ahead === "," || ahead === ":" || ahead === "." || ahead === " " || ahead === "\n")) {
        this.add();
        this.m = ModeNormal;
      } else if (this.m === ModePing && buf.length > 1 && current === "`" && aahead !== "``" && ahead !== "`" && this.buffer.countIsEven("`")) {
        this.add();
        if (ahead === `"`) {
          this.m = ModeComment;
        } else {
          this.m = ModeNormal;
        }
      } else if (this.m === ModeTemplate && buf.length > 1 && (current === "|" || current === "{") && (this.stream.prevChar() !== "\\" || this.stream.prevPrevChar() === "\\\\")) {
        this.add();
        this.m = ModeNormal;
      } else if (this.m === ModeTemplate && ahead === "}" && current !== "\\") {
        this.add();
      } else if (this.m === ModeStr && current === "'" && buf.length > 1 && aahead !== "''" && ahead !== "'" && this.buffer.countIsEven("'")) {
        this.add();
        if (ahead === '"') {
          this.m = ModeComment;
        } else {
          this.m = ModeNormal;
        }
      } else if (ahead === "\n" && this.m !== ModeTemplate) {
        this.add();
        this.m = ModeNormal;
      } else if (this.m === ModeTemplate && current === "\n") {
        this.add();
      }
      if (!this.stream.advance()) {
        break;
      }
    }
    this.add();
  }
};

// ../core/src/abap/2_statements/expand_macros.ts
var Macros = class {
  constructor(globalMacros) {
    this.macros = {};
    for (const m of globalMacros) {
      this.macros[m.toUpperCase()] = {
        statements: [],
        filename: void 0
      };
    }
  }
  addMacro(name, contents, filename) {
    if (this.isMacro(name)) {
      return;
    }
    this.macros[name.toUpperCase()] = {
      statements: contents,
      filename
    };
  }
  getContents(name) {
    return this.macros[name.toUpperCase()].statements;
  }
  listMacroNames() {
    return Object.keys(this.macros);
  }
  isMacro(name) {
    if (this.macros[name.toUpperCase()]) {
      return true;
    }
    return false;
  }
  getMacroFilename(name) {
    return this.macros[name.toUpperCase()].filename;
  }
};
var ExpandMacros = class {
  // "reg" must be supplied if there are cross object macros via INCLUDE
  constructor(globalMacros, version, reg) {
    this.macros = new Macros(globalMacros);
    this.version = version;
    this.globalMacros = globalMacros;
    this.reg = reg;
  }
  find(statements, file, clear = true) {
    let nameToken = void 0;
    let start = void 0;
    let contents = [];
    const macroReferences = this.reg?.getMacroReferences();
    if (clear) {
      macroReferences?.clear(file.getFilename());
    }
    for (let i = 0; i < statements.length; i++) {
      const statement = statements[i];
      const type = statement.get();
      if (type instanceof Define) {
        nameToken = statement.getTokens()[1];
        start = statement.getFirstToken().getStart();
        contents = [];
      } else if (type instanceof Include) {
        const includeName = statement.findDirectExpression(IncludeName)?.concatTokens();
        const prog = this.reg?.getObject("PROG", includeName);
        if (prog) {
          prog.parse(this.version, this.globalMacros, this.reg);
          const includeMainFile = prog.getMainABAPFile();
          if (includeMainFile) {
            this.find([...includeMainFile.getStatements()], includeMainFile, false);
          }
        }
      } else if (nameToken) {
        if (type instanceof EndOfDefinition) {
          this.macros.addMacro(nameToken.getStr(), contents, file.getFilename());
          macroReferences?.addDefinition({ filename: file.getFilename(), token: nameToken }, start, statement.getLastToken().getEnd());
          nameToken = void 0;
        } else if (!(type instanceof Comment2)) {
          statements[i] = new StatementNode(new MacroContent()).setChildren(this.tokensToNodes(statement.getTokens()));
          contents.push(statements[i]);
        }
      }
    }
  }
  handleMacros(statements, file) {
    const result = [];
    let containsUnknown = false;
    const macroReferences = this.reg?.getMacroReferences();
    for (const statement of statements) {
      const type = statement.get();
      if (type instanceof Unknown || type instanceof MacroCall) {
        const macroName = this.findName(statement.getTokens());
        if (macroName && this.macros.isMacro(macroName)) {
          const filename = this.macros.getMacroFilename(macroName);
          if (filename) {
            macroReferences?.addReference({
              filename,
              token: statement.getFirstToken()
            });
          }
          result.push(new StatementNode(new MacroCall(), statement.getColon()).setChildren(this.tokensToNodes(statement.getTokens())));
          const expanded = this.expandContents(macroName, statement);
          const handled = this.handleMacros(expanded, file);
          for (const e of handled.statements) {
            result.push(e);
          }
          if (handled.containsUnknown === true) {
            containsUnknown = true;
          }
          continue;
        } else {
          containsUnknown = true;
        }
      }
      result.push(statement);
    }
    return { statements: result, containsUnknown };
  }
  //////////////
  expandContents(name, statement) {
    const contents = this.macros.getContents(name);
    if (contents === void 0 || contents.length === 0) {
      return [];
    }
    let str2 = "";
    for (const c of contents) {
      let concat = c.concatTokens();
      if (c.getTerminator() === ",") {
        concat = concat.replace(/,$/, ".");
      }
      str2 += concat + "\n";
    }
    const inputs = this.buildInput(statement);
    let i = 1;
    for (const input of inputs) {
      const search = "&" + i;
      const reg = new RegExp(search, "g");
      str2 = str2.replace(reg, input);
      i++;
    }
    const file = new MemoryFile("expand_macros.abap.prog", str2);
    const lexerResult = new Lexer().run(file, statement.getFirstToken().getStart());
    const result = new StatementParser(this.version, this.reg).run([lexerResult], this.macros.listMacroNames());
    return result[0].statements;
  }
  buildInput(statement) {
    const result = [];
    const tokens = statement.getTokens();
    let build = "";
    for (let i = 1; i < tokens.length - 1; i++) {
      const now = tokens[i];
      let next = tokens[i + 1];
      if (i + 2 === tokens.length) {
        next = void 0;
      }
      let end = now.getStart();
      if (end instanceof VirtualPosition) {
        end = new VirtualPosition(end, end.vrow, end.vcol + now.getStr().length);
      } else {
        end = now.getEnd();
      }
      if (next && next.getStart().equals(end)) {
        build += now.getStr();
      } else {
        build += now.getStr();
        result.push(build);
        build = "";
      }
    }
    return result;
  }
  findName(tokens) {
    let macroName = void 0;
    let previous = void 0;
    for (const i of tokens) {
      if (previous && previous?.getEnd().getCol() !== i.getStart().getCol()) {
        break;
      } else if (i instanceof Identifier || i.getStr() === "-") {
        if (macroName === void 0) {
          macroName = i.getStr();
        } else {
          macroName += i.getStr();
        }
      } else if (i instanceof Pragma) {
        continue;
      } else {
        break;
      }
      previous = i;
    }
    return macroName;
  }
  tokensToNodes(tokens) {
    const ret = [];
    for (const t of tokens) {
      ret.push(new TokenNode(t));
    }
    return ret;
  }
};

// ../core/src/abap/2_statements/statement_parser.ts
var STATEMENT_MAX_TOKENS = 1e3;
var StatementMap = class {
  constructor() {
    this.map = {};
    for (const stat of ArtifactsABAP.getStatements()) {
      const f = stat.getMatcher().first();
      if (f.length === 0) {
        throw new Error("StatementMap, first must have contents");
      }
      for (const first of f) {
        if (this.map[first]) {
          this.map[first].push({ statement: stat });
        } else {
          this.map[first] = [{ statement: stat }];
        }
      }
    }
  }
  lookup(str2) {
    const res = this.map[str2.toUpperCase()];
    if (res === void 0) {
      return [];
    }
    if (res[0].matcher === void 0) {
      for (const r of res) {
        r.matcher = r.statement.getMatcher();
      }
    }
    return res;
  }
};
var WorkArea = class {
  constructor(file, tokens) {
    this.file = file;
    this.tokens = tokens;
    this.statements = [];
  }
  addUnknown(pre, post, colon) {
    const st = new StatementNode(new Unknown(), colon);
    st.setChildren(this.tokensToNodes(pre, post));
    this.statements.push(st);
  }
  toResult() {
    return { file: this.file, tokens: this.tokens, statements: this.statements };
  }
  tokensToNodes(tokens1, tokens2) {
    const ret = [];
    for (const t of tokens1) {
      ret.push(new TokenNode(t));
    }
    for (const t of tokens2) {
      ret.push(new TokenNode(t));
    }
    return ret;
  }
};
var StatementParser = class _StatementParser {
  constructor(version, reg) {
    if (!_StatementParser.map) {
      _StatementParser.map = new StatementMap();
    }
    this.version = version;
    this.reg = reg;
  }
  /** input is one full object */
  run(input, globalMacros) {
    const macros = new ExpandMacros(globalMacros, this.version, this.reg);
    const wa = input.map((i) => new WorkArea(i.file, i.tokens));
    for (const w of wa) {
      this.process(w);
      this.categorize(w);
      macros.find(w.statements, w.file);
    }
    for (const w of wa) {
      const res = macros.handleMacros(w.statements, w.file);
      w.statements = res.statements;
      if (res.containsUnknown === true) {
        this.lazyUnknown(w);
      }
      this.nativeSQL(w);
    }
    return wa.map((w) => w.toResult());
  }
  // todo, refactor, remove method here and only have in WorkArea class
  tokensToNodes(tokens) {
    const ret = [];
    for (const t of tokens) {
      ret.push(new TokenNode(t));
    }
    return ret;
  }
  // tries to split Unknown statements by newlines, when adding/writing a new statement
  // in an editor, adding the statement terminator is typically the last thing to do
  // note: this will not work if the second statement is a macro call, guess this is okay
  lazyUnknown(wa) {
    const result = [];
    for (let statement of wa.statements) {
      if (statement.get() instanceof Unknown) {
        const concat = statement.concatTokens().toUpperCase();
        if (concat.startsWith("CALL METHOD ") === false && concat.startsWith("RAISE EXCEPTION TYPE ") === false && concat.startsWith("READ TABLE ") === false && concat.startsWith("LOOP AT ") === false && concat.startsWith("SELECT SINGLE ") === false && concat.startsWith("CALL FUNCTION ") === false) {
          for (const { first, second } of this.buildSplits(statement.getTokens())) {
            if (second.length === 1) {
              continue;
            }
            const s = this.categorizeStatement(new StatementNode(new Unknown()).setChildren(this.tokensToNodes(second)));
            if (!(s.get() instanceof Unknown) && !(s.get() instanceof Empty)) {
              result.push(new StatementNode(new Unknown()).setChildren(this.tokensToNodes(first)));
              statement = s;
              break;
            }
          }
        }
      }
      result.push(statement);
    }
    wa.statements = result;
  }
  buildSplits(tokens) {
    const res = [];
    const before = [];
    let prevRow = tokens[0].getRow();
    for (let i = 0; i < tokens.length; i++) {
      if (tokens[i].getRow() !== prevRow) {
        res.push({ first: [...before], second: [...tokens].splice(i) });
      }
      prevRow = tokens[i].getRow();
      before.push(tokens[i]);
    }
    return res;
  }
  nativeSQL(wa) {
    let sql = false;
    for (let i = 0; i < wa.statements.length; i++) {
      const statement = wa.statements[i];
      const type = statement.get();
      if (type instanceof ExecSQL || type instanceof MethodImplementation && statement.findDirectExpression(Language)) {
        sql = true;
      } else if (sql === true) {
        if (type instanceof EndExec || type instanceof EndMethod) {
          sql = false;
        } else {
          wa.statements[i] = new StatementNode(new NativeSQL()).setChildren(this.tokensToNodes(statement.getTokens()));
          if (statement.concatTokens().toUpperCase().endsWith("ENDMETHOD.")) {
            const tokens = statement.getTokens();
            const startTokens = this.tokensToNodes(tokens.slice(tokens.length - 2, tokens.length));
            const endTokens = this.tokensToNodes(tokens.slice(0, tokens.length - 2));
            wa.statements[i] = new StatementNode(new NativeSQL()).setChildren(endTokens);
            const item = new StatementNode(new EndMethod()).setChildren(startTokens);
            wa.statements.splice(i + 1, 0, item);
            sql = false;
          }
        }
      }
    }
  }
  // for each statement, run statement matchers to figure out which kind of statement it is
  categorize(wa) {
    const result = [];
    for (const statement of wa.statements) {
      result.push(this.categorizeStatement(statement));
    }
    wa.statements = result;
  }
  categorizeStatement(input) {
    let statement = input;
    const length = input.getChildren().length;
    const lastToken = input.getLastToken();
    const isPunctuation = lastToken instanceof Punctuation;
    if (length === 1 && isPunctuation) {
      const tokens = statement.getTokens();
      statement = new StatementNode(new Empty()).setChildren(this.tokensToNodes(tokens));
    } else if (statement.get() instanceof Unknown) {
      if (isPunctuation) {
        statement = this.match(statement);
      } else if (length > STATEMENT_MAX_TOKENS) {
        statement = input;
      } else if (length === 1 && lastToken instanceof Pragma) {
        statement = new StatementNode(new Empty(), void 0, [lastToken]);
      }
    }
    return statement;
  }
  removePragma(tokens) {
    const result = [];
    const pragmas = [];
    for (let i = 0; i < tokens.length - 1; i++) {
      const t = tokens[i];
      if (t instanceof Pragma) {
        pragmas.push(t);
      } else {
        result.push(t);
      }
    }
    return { tokens: result, pragmas };
  }
  match(statement) {
    const tokens = statement.getTokens();
    const { tokens: filtered, pragmas } = this.removePragma(tokens);
    if (filtered.length === 0) {
      return new StatementNode(new Empty()).setChildren(this.tokensToNodes(tokens));
    }
    for (const st of _StatementParser.map.lookup(filtered[0].getStr())) {
      const match = Combi.run(st.matcher, filtered, this.version);
      if (match) {
        const last = tokens[tokens.length - 1];
        match.push(new TokenNode(last));
        return new StatementNode(st.statement, statement.getColon(), pragmas).setChildren(match);
      }
    }
    for (const st of _StatementParser.map.lookup("")) {
      const match = Combi.run(st.matcher, filtered, this.version);
      if (match) {
        const last = tokens[tokens.length - 1];
        match.push(new TokenNode(last));
        return new StatementNode(st.statement, statement.getColon(), pragmas).setChildren(match);
      }
    }
    return statement;
  }
  // takes care of splitting tokens into statements, also handles chained statements
  // statements are split by "," or "."
  // additional colons/chaining after the first colon are ignored
  process(wa) {
    let add = [];
    let pre = [];
    let colon = void 0;
    for (const token of wa.tokens) {
      if (token instanceof Comment) {
        wa.statements.push(new StatementNode(new Comment2()).setChildren(this.tokensToNodes([token])));
        continue;
      }
      add.push(token);
      const str2 = token.getStr();
      if (str2.length === 1) {
        if (str2 === ".") {
          wa.addUnknown(pre, add, colon);
          add = [];
          pre = [];
          colon = void 0;
        } else if (str2 === "," && pre.length > 0) {
          wa.addUnknown(pre, add, colon);
          add = [];
        } else if (str2 === ":" && colon === void 0) {
          colon = token;
          add.pop();
          pre.push(...add);
          add = [];
        } else if (str2 === ":") {
          add.pop();
        }
      }
    }
    if (add.length > 0) {
      wa.addUnknown(pre, add, colon);
    }
  }
};

// src/index.ts
function main(filename, code) {
  console.log("Running statement parser...");
  var file = new MemoryFile(filename, code);
  var lexer = new Lexer();
  var lexerResult = lexer.run(file);
  console.log("Tokens: " + lexerResult.tokens.length);
  var parser = new StatementParser("v750" /* v750 */);
  var result = parser.run([lexerResult], []);
  console.log("Statements: " + result[0].statements.length);
}
main("test.prog.abap", "WRITE 'Hello World'.");
console.log("Done");
