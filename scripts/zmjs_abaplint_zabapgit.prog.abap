REPORT zmjs_abaplint_zabapgit.

* Generated from perf/benchmarks/abaplint.js.
* Input source: report ZABAPGIT_STANDALONE, read at runtime via READ REPORT.
START-OF-SELECTION.
  DATA lt_js TYPE STANDARD TABLE OF string WITH EMPTY KEY.
  APPEND `/*eslint-disable*/` TO lt_js.
  APPEND `var __defProp = Object.defineProperty;` TO lt_js.
  APPEND `var __export = (target, all) => {` TO lt_js.
  APPEND `  for (var name in all)` TO lt_js.
  APPEND `    __defProp(target, name, { get: all[name], enumerable: true });` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/index.ts` TO lt_js.
  APPEND `var statements_exports = {};` TO lt_js.
  APPEND `__export(statements_exports, {` TO lt_js.
  APPEND `  Add: () => Add,` TO lt_js.
  APPEND `  AddCorresponding: () => AddCorresponding,` TO lt_js.
  APPEND `  Aliases: () => Aliases,` TO lt_js.
  APPEND `  Append: () => Append,` TO lt_js.
  APPEND `  Assert: () => Assert,` TO lt_js.
  APPEND `  Assign: () => Assign,` TO lt_js.
  APPEND `  AssignLocalCopy: () => AssignLocalCopy,` TO lt_js.
  APPEND `  At: () => At2,` TO lt_js.
  APPEND `  AtFirst: () => AtFirst,` TO lt_js.
  APPEND `  AtLast: () => AtLast,` TO lt_js.
  APPEND `  AtLineSelection: () => AtLineSelection,` TO lt_js.
  APPEND `  AtPF: () => AtPF,` TO lt_js.
  APPEND `  AtSelectionScreen: () => AtSelectionScreen,` TO lt_js.
  APPEND `  AtUserCommand: () => AtUserCommand,` TO lt_js.
  APPEND `  AuthorityCheck: () => AuthorityCheck,` TO lt_js.
  APPEND `  Back: () => Back,` TO lt_js.
  APPEND `  Break: () => Break,` TO lt_js.
  APPEND `  BreakId: () => BreakId,` TO lt_js.
  APPEND `  Call: () => Call,` TO lt_js.
  APPEND `  CallBadi: () => CallBadi,` TO lt_js.
  APPEND `  CallDatabase: () => CallDatabase,` TO lt_js.
  APPEND `  CallDialog: () => CallDialog,` TO lt_js.
  APPEND `  CallFunction: () => CallFunction,` TO lt_js.
  APPEND `  CallKernel: () => CallKernel,` TO lt_js.
  APPEND `  CallOLE: () => CallOLE,` TO lt_js.
  APPEND `  CallScreen: () => CallScreen,` TO lt_js.
  APPEND `  CallSelectionScreen: () => CallSelectionScreen,` TO lt_js.
  APPEND `  CallSubscreen: () => CallSubscreen,` TO lt_js.
  APPEND `  CallTransaction: () => CallTransaction,` TO lt_js.
  APPEND `  CallTransformation: () => CallTransformation,` TO lt_js.
  APPEND `  Case: () => Case,` TO lt_js.
  APPEND `  CaseType: () => CaseType,` TO lt_js.
  APPEND `  Catch: () => Catch,` TO lt_js.
  APPEND `  CatchSystemExceptions: () => CatchSystemExceptions,` TO lt_js.
  APPEND `  Chain: () => Chain,` TO lt_js.
  APPEND `  Check: () => Check,` TO lt_js.
  APPEND `  CheckSelectOptions: () => CheckSelectOptions,` TO lt_js.
  APPEND `  ClassData: () => ClassData,` TO lt_js.
  APPEND `  ClassDataBegin: () => ClassDataBegin,` TO lt_js.
  APPEND `  ClassDataEnd: () => ClassDataEnd,` TO lt_js.
  APPEND `  ClassDeferred: () => ClassDeferred,` TO lt_js.
  APPEND `  ClassDefinition: () => ClassDefinition,` TO lt_js.
  APPEND `  ClassDefinitionLoad: () => ClassDefinitionLoad,` TO lt_js.
  APPEND `  ClassImplementation: () => ClassImplementation,` TO lt_js.
  APPEND `  ClassLocalFriends: () => ClassLocalFriends,` TO lt_js.
  APPEND `  Cleanup: () => Cleanup,` TO lt_js.
  APPEND `  Clear: () => Clear,` TO lt_js.
  APPEND `  CloseCursor: () => CloseCursor,` TO lt_js.
  APPEND `  CloseDataset: () => CloseDataset,` TO lt_js.
  APPEND `  Collect: () => Collect,` TO lt_js.
  APPEND `  Commit: () => Commit,` TO lt_js.
  APPEND `  CommitEntities: () => CommitEntities,` TO lt_js.
  APPEND `  Communication: () => Communication,` TO lt_js.
  APPEND `  Compute: () => Compute,` TO lt_js.
  APPEND `  Concatenate: () => Concatenate,` TO lt_js.
  APPEND `  Condense: () => Condense,` TO lt_js.
  APPEND `  Constant: () => Constant2,` TO lt_js.
  APPEND `  ConstantBegin: () => ConstantBegin,` TO lt_js.
  APPEND `  ConstantEnd: () => ConstantEnd,` TO lt_js.
  APPEND `  Contexts: () => Contexts,` TO lt_js.
  APPEND `  Continue: () => Continue,` TO lt_js.
  APPEND `  Controls: () => Controls,` TO lt_js.
  APPEND `  Convert: () => Convert,` TO lt_js.
  APPEND `  ConvertText: () => ConvertText,` TO lt_js.
  APPEND `  CreateData: () => CreateData,` TO lt_js.
  APPEND `  CreateOLE: () => CreateOLE,` TO lt_js.
  APPEND `  CreateObject: () => CreateObject,` TO lt_js.
  APPEND `  Data: () => Data,` TO lt_js.
  APPEND `  DataBegin: () => DataBegin,` TO lt_js.
  APPEND `  DataEnd: () => DataEnd,` TO lt_js.
  APPEND `  Define: () => Define,` TO lt_js.
  APPEND `  DeleteCluster: () => DeleteCluster,` TO lt_js.
  APPEND `  DeleteDatabase: () => DeleteDatabase,` TO lt_js.
  APPEND `  DeleteDataset: () => DeleteDataset,` TO lt_js.
  APPEND `  DeleteDynpro: () => DeleteDynpro,` TO lt_js.
  APPEND `  DeleteInternal: () => DeleteInternal,` TO lt_js.
  APPEND `  DeleteMemory: () => DeleteMemory,` TO lt_js.
  APPEND `  DeleteReport: () => DeleteReport,` TO lt_js.
  APPEND `  DeleteTextpool: () => DeleteTextpool,` TO lt_js.
  APPEND `  Demand: () => Demand,` TO lt_js.
  APPEND `  Describe: () => Describe,` TO lt_js.
  APPEND `  Detail: () => Detail,` TO lt_js.
  APPEND `  Divide: () => Divide,` TO lt_js.
  APPEND `  Do: () => Do,` TO lt_js.
  APPEND `  DynproLoop: () => DynproLoop,` TO lt_js.
  APPEND `  EditorCall: () => EditorCall,` TO lt_js.
  APPEND `  Else: () => Else,` TO lt_js.
  APPEND `  ElseIf: () => ElseIf,` TO lt_js.
  APPEND `  EndAt: () => EndAt,` TO lt_js.
  APPEND `  EndCase: () => EndCase,` TO lt_js.
  APPEND `  EndCatch: () => EndCatch,` TO lt_js.
  APPEND `  EndChain: () => EndChain,` TO lt_js.
  APPEND `  EndClass: () => EndClass,` TO lt_js.
  APPEND `  EndDo: () => EndDo,` TO lt_js.
  APPEND `  EndEnhancement: () => EndEnhancement,` TO lt_js.
  APPEND `  EndEnhancementSection: () => EndEnhancementSection,` TO lt_js.
  APPEND `  EndExec: () => EndExec,` TO lt_js.
  APPEND `  EndForm: () => EndForm,` TO lt_js.
  APPEND `  EndFunction: () => EndFunction,` TO lt_js.
  APPEND `  EndIf: () => EndIf,` TO lt_js.
  APPEND `  EndInterface: () => EndInterface,` TO lt_js.
  APPEND `  EndLoop: () => EndLoop,` TO lt_js.
  APPEND `  EndMethod: () => EndMethod,` TO lt_js.
  APPEND `  EndModule: () => EndModule,` TO lt_js.
  APPEND `  EndOfDefinition: () => EndOfDefinition,` TO lt_js.
  APPEND `  EndOfPage: () => EndOfPage,` TO lt_js.
  APPEND `  EndOfSelection: () => EndOfSelection,` TO lt_js.
  APPEND `  EndOn: () => EndOn,` TO lt_js.
  APPEND `  EndProvide: () => EndProvide,` TO lt_js.
  APPEND `  EndSelect: () => EndSelect,` TO lt_js.
  APPEND `  EndTestInjection: () => EndTestInjection,` TO lt_js.
  APPEND `  EndTestSeam: () => EndTestSeam,` TO lt_js.
  APPEND `  EndTry: () => EndTry,` TO lt_js.
  APPEND `  EndWhile: () => EndWhile,` TO lt_js.
  APPEND `  EndWith: () => EndWith,` TO lt_js.
  APPEND `  Enhancement: () => Enhancement,` TO lt_js.
  APPEND `  EnhancementPoint: () => EnhancementPoint,` TO lt_js.
  APPEND `  EnhancementSection: () => EnhancementSection,` TO lt_js.
  APPEND `  Events: () => Events,` TO lt_js.
  APPEND `  ExecSQL: () => ExecSQL,` TO lt_js.
  APPEND `  Exit: () => Exit,` TO lt_js.
  APPEND `  Export: () => Export,` TO lt_js.
  APPEND `  ExportDynpro: () => ExportDynpro,` TO lt_js.
  APPEND `  Extract: () => Extract,` TO lt_js.
  APPEND `  FetchNextCursor: () => FetchNextCursor,` TO lt_js.
  APPEND `  Field: () => Field2,` TO lt_js.
  APPEND `  FieldGroup: () => FieldGroup,` TO lt_js.
  APPEND `  FieldSymbol: () => FieldSymbol2,` TO lt_js.
  APPEND `  Fields: () => Fields,` TO lt_js.
  APPEND `  Find: () => Find,` TO lt_js.
  APPEND `  Form: () => Form,` TO lt_js.
  APPEND `  FormDefinition: () => FormDefinition,` TO lt_js.
  APPEND `  Format: () => Format,` TO lt_js.
  APPEND `  Free: () => Free,` TO lt_js.
  APPEND `  FreeMemory: () => FreeMemory,` TO lt_js.
  APPEND `  FreeObject: () => FreeObject,` TO lt_js.
  APPEND `  FunctionModule: () => FunctionModule,` TO lt_js.
  APPEND `  FunctionPool: () => FunctionPool,` TO lt_js.
  APPEND `  GenerateDynpro: () => GenerateDynpro,` TO lt_js.
  APPEND `  GenerateReport: () => GenerateReport,` TO lt_js.
  APPEND `  GenerateSubroutine: () => GenerateSubroutine,` TO lt_js.
  APPEND `  Get: () => Get,` TO lt_js.
  APPEND `  GetBadi: () => GetBadi,` TO lt_js.
  APPEND `  GetBit: () => GetBit,` TO lt_js.
  APPEND `  GetCursor: () => GetCursor,` TO lt_js.
  APPEND `  GetDataset: () => GetDataset,` TO lt_js.
  APPEND `  GetLocale: () => GetLocale,` TO lt_js.
  APPEND `  GetPFStatus: () => GetPFStatus,` TO lt_js.
  APPEND `  GetParameter: () => GetParameter,` TO lt_js.
  APPEND `  GetPermissions: () => GetPermissions,` TO lt_js.
  APPEND `  GetProperty: () => GetProperty,` TO lt_js.
  APPEND `  GetReference: () => GetReference,` TO lt_js.
  APPEND `  GetRunTime: () => GetRunTime,` TO lt_js.
  APPEND `  GetTime: () => GetTime,` TO lt_js.
  APPEND `  Hide: () => Hide,` TO lt_js.
  APPEND `  If: () => If,` TO lt_js.
  APPEND `  Import: () => Import,` TO lt_js.
  APPEND `  ImportDynpro: () => ImportDynpro,` TO lt_js.
  APPEND `  ImportNametab: () => ImportNametab,` TO lt_js.
  APPEND `  Include: () => Include,` TO lt_js.
  APPEND `  IncludeType: () => IncludeType,` TO lt_js.
  APPEND `  Infotypes: () => Infotypes,` TO lt_js.
  APPEND `  Initialization: () => Initialization,` TO lt_js.
  APPEND `  Input: () => Input,` TO lt_js.
  APPEND `  InsertDatabase: () => InsertDatabase,` TO lt_js.
  APPEND `  InsertFieldGroup: () => InsertFieldGroup,` TO lt_js.
  APPEND `  InsertInternal: () => InsertInternal,` TO lt_js.
  APPEND `  InsertReport: () => InsertReport,` TO lt_js.
  APPEND `  InsertTextpool: () => InsertTextpool,` TO lt_js.
  APPEND `  Interface: () => Interface,` TO lt_js.
  APPEND `  InterfaceDef: () => InterfaceDef,` TO lt_js.
  APPEND `  InterfaceDeferred: () => InterfaceDeferred,` TO lt_js.
  APPEND `  InterfaceLoad: () => InterfaceLoad,` TO lt_js.
  APPEND `  Leave: () => Leave,` TO lt_js.
  APPEND `  LoadOfProgram: () => LoadOfProgram,` TO lt_js.
  APPEND `  LoadReport: () => LoadReport,` TO lt_js.
  APPEND `  Local: () => Local,` TO lt_js.
  APPEND `  LogPoint: () => LogPoint,` TO lt_js.
  APPEND `  Loop: () => Loop,` TO lt_js.
  APPEND `  LoopAtScreen: () => LoopAtScreen,` TO lt_js.
  APPEND `  LoopExtract: () => LoopExtract,` TO lt_js.
  APPEND `  Message: () => Message,` TO lt_js.
  APPEND `  MethodDef: () => MethodDef,` TO lt_js.
  APPEND `  MethodImplementation: () => MethodImplementation,` TO lt_js.
  APPEND `  ModifyDatabase: () => ModifyDatabase,` TO lt_js.
  APPEND `  ModifyEntities: () => ModifyEntities,` TO lt_js.
  APPEND `  ModifyInternal: () => ModifyInternal,` TO lt_js.
  APPEND `  ModifyLine: () => ModifyLine,` TO lt_js.
  APPEND `  ModifyScreen: () => ModifyScreen,` TO lt_js.
  APPEND `  Module: () => Module,` TO lt_js.
  APPEND `  Move: () => Move,` TO lt_js.
  APPEND `  MoveCorresponding: () => MoveCorresponding,` TO lt_js.
  APPEND `  Multiply: () => Multiply,` TO lt_js.
  APPEND `  NewLine: () => NewLine,` TO lt_js.
  APPEND `  NewPage: () => NewPage,` TO lt_js.
  APPEND `  Nodes: () => Nodes,` TO lt_js.
  APPEND `  OnChange: () => OnChange,` TO lt_js.
  APPEND `  OpenCursor: () => OpenCursor,` TO lt_js.
  APPEND `  OpenDataset: () => OpenDataset,` TO lt_js.
  APPEND `  Overlay: () => Overlay,` TO lt_js.
  APPEND `  Pack: () => Pack,` TO lt_js.
  APPEND `  Parameter: () => Parameter,` TO lt_js.
  APPEND `  Perform: () => Perform,` TO lt_js.
  APPEND `  Position: () => Position2,` TO lt_js.
  APPEND `  PrintControl: () => PrintControl,` TO lt_js.
  APPEND `  Private: () => Private,` TO lt_js.
  APPEND `  ProcessAfterInput: () => ProcessAfterInput,` TO lt_js.
  APPEND `  ProcessBeforeOutput: () => ProcessBeforeOutput,` TO lt_js.
  APPEND `  ProcessOnHelpRequest: () => ProcessOnHelpRequest,` TO lt_js.
  APPEND `  ProcessOnValueRequest: () => ProcessOnValueRequest,` TO lt_js.
  APPEND `  Program: () => Program,` TO lt_js.
  APPEND `  Protected: () => Protected,` TO lt_js.
  APPEND `  Provide: () => Provide,` TO lt_js.
  APPEND `  Public: () => Public,` TO lt_js.
  APPEND `  Put: () => Put,` TO lt_js.
  APPEND `  Raise: () => Raise,` TO lt_js.
  APPEND `  RaiseEntityEvent: () => RaiseEntityEvent,` TO lt_js.
  APPEND `  RaiseEvent: () => RaiseEvent,` TO lt_js.
  APPEND `  Ranges: () => Ranges,` TO lt_js.
  APPEND `  ReadDataset: () => ReadDataset,` TO lt_js.
  APPEND `  ReadEntities: () => ReadEntities,` TO lt_js.
  APPEND `  ReadLine: () => ReadLine,` TO lt_js.
  APPEND `  ReadReport: () => ReadReport,` TO lt_js.
  APPEND `  ReadTable: () => ReadTable,` TO lt_js.
  APPEND `  ReadTextpool: () => ReadTextpool,` TO lt_js.
  APPEND `  Receive: () => Receive,` TO lt_js.
  APPEND `  Refresh: () => Refresh,` TO lt_js.
  APPEND `  RefreshControl: () => RefreshControl,` TO lt_js.
  APPEND `  Reject: () => Reject,` TO lt_js.
  APPEND `  Replace: () => Replace,` TO lt_js.
  APPEND `  Report: () => Report,` TO lt_js.
  APPEND `  Reserve: () => Reserve,` TO lt_js.
  APPEND `  Resume: () => Resume,` TO lt_js.
  APPEND `  Retry: () => Retry,` TO lt_js.
  APPEND `  Return: () => Return,` TO lt_js.
  APPEND `  Rollback: () => Rollback,` TO lt_js.
  APPEND `  RollbackEntities: () => RollbackEntities,` TO lt_js.
  APPEND `  Scan: () => Scan,` TO lt_js.
  APPEND `  ScrollList: () => ScrollList,` TO lt_js.
  APPEND `  Search: () => Search,` TO lt_js.
  APPEND `  Select: () => Select2,` TO lt_js.
  APPEND `  SelectLoop: () => SelectLoop2,` TO lt_js.
  APPEND `  SelectOption: () => SelectOption,` TO lt_js.
  APPEND `  SelectionScreen: () => SelectionScreen,` TO lt_js.
  APPEND `  SetBit: () => SetBit,` TO lt_js.
  APPEND `  SetBlank: () => SetBlank,` TO lt_js.
  APPEND `  SetCountry: () => SetCountry,` TO lt_js.
  APPEND `  SetCursor: () => SetCursor,` TO lt_js.
  APPEND `  SetDataset: () => SetDataset,` TO lt_js.
  APPEND `  SetExtendedCheck: () => SetExtendedCheck,` TO lt_js.
  APPEND `  SetHandler: () => SetHandler,` TO lt_js.
  APPEND `  SetLanguage: () => SetLanguage,` TO lt_js.
  APPEND `  SetLeft: () => SetLeft,` TO lt_js.
  APPEND `  SetLocale: () => SetLocale,` TO lt_js.
  APPEND `  SetLocks: () => SetLocks,` TO lt_js.
  APPEND `  SetMargin: () => SetMargin,` TO lt_js.
  APPEND `  SetPFStatus: () => SetPFStatus,` TO lt_js.
  APPEND `  SetParameter: () => SetParameter,` TO lt_js.
  APPEND `  SetProperty: () => SetProperty,` TO lt_js.
  APPEND `  SetRunTime: () => SetRunTime,` TO lt_js.
  APPEND `  SetScreen: () => SetScreen,` TO lt_js.
  APPEND `  SetTitlebar: () => SetTitlebar,` TO lt_js.
  APPEND `  SetUpdateTask: () => SetUpdateTask,` TO lt_js.
  APPEND `  SetUserCommand: () => SetUserCommand,` TO lt_js.
  APPEND `  Shift: () => Shift,` TO lt_js.
  APPEND `  Skip: () => Skip,` TO lt_js.
  APPEND `  Sort: () => Sort,` TO lt_js.
  APPEND `  SortDataset: () => SortDataset,` TO lt_js.
  APPEND `  Split: () => Split,` TO lt_js.
  APPEND `  StartOfSelection: () => StartOfSelection,` TO lt_js.
  APPEND `  Static: () => Static,` TO lt_js.
  APPEND `  StaticBegin: () => StaticBegin,` TO lt_js.
  APPEND `  StaticEnd: () => StaticEnd,` TO lt_js.
  APPEND `  Stop: () => Stop,` TO lt_js.
  APPEND `  Submit: () => Submit,` TO lt_js.
  APPEND `  Subtract: () => Subtract,` TO lt_js.
  APPEND `  SubtractCorresponding: () => SubtractCorresponding,` TO lt_js.
  APPEND `  Sum: () => Sum,` TO lt_js.
  APPEND `  Summary: () => Summary,` TO lt_js.
  APPEND `  Supply: () => Supply,` TO lt_js.
  APPEND `  SuppressDialog: () => SuppressDialog,` TO lt_js.
  APPEND `  SyntaxCheck: () => SyntaxCheck,` TO lt_js.
  APPEND `  SystemCall: () => SystemCall,` TO lt_js.
  APPEND `  Tables: () => Tables,` TO lt_js.
  APPEND `  TestInjection: () => TestInjection,` TO lt_js.
  APPEND `  TestSeam: () => TestSeam,` TO lt_js.
  APPEND `  TopOfPage: () => TopOfPage,` TO lt_js.
  APPEND `  Transfer: () => Transfer,` TO lt_js.
  APPEND `  Translate: () => Translate,` TO lt_js.
  APPEND `  TruncateDataset: () => TruncateDataset,` TO lt_js.
  APPEND `  Try: () => Try,` TO lt_js.
  APPEND `  Type: () => Type2,` TO lt_js.
  APPEND `  TypeBegin: () => TypeBegin,` TO lt_js.
  APPEND `  TypeEnd: () => TypeEnd,` TO lt_js.
  APPEND `  TypeEnum: () => TypeEnum,` TO lt_js.
  APPEND `  TypeEnumBegin: () => TypeEnumBegin,` TO lt_js.
  APPEND `  TypeEnumEnd: () => TypeEnumEnd,` TO lt_js.
  APPEND `  TypeMesh: () => TypeMesh,` TO lt_js.
  APPEND `  TypeMeshBegin: () => TypeMeshBegin,` TO lt_js.
  APPEND `  TypeMeshEnd: () => TypeMeshEnd,` TO lt_js.
  APPEND `  TypePool: () => TypePool,` TO lt_js.
  APPEND `  TypePools: () => TypePools,` TO lt_js.
  APPEND `  Uline: () => Uline,` TO lt_js.
  APPEND `  Unassign: () => Unassign,` TO lt_js.
  APPEND `  Unpack: () => Unpack,` TO lt_js.
  APPEND `  UpdateDatabase: () => UpdateDatabase,` TO lt_js.
  APPEND `  VerificationMessage: () => VerificationMessage,` TO lt_js.
  APPEND `  Wait: () => Wait,` TO lt_js.
  APPEND `  When: () => When,` TO lt_js.
  APPEND `  WhenOthers: () => WhenOthers,` TO lt_js.
  APPEND `  WhenType: () => WhenType,` TO lt_js.
  APPEND `  While: () => While,` TO lt_js.
  APPEND `  Window: () => Window,` TO lt_js.
  APPEND `  With: () => With,` TO lt_js.
  APPEND `  WithLoop: () => WithLoop,` TO lt_js.
  APPEND `  Write: () => Write` TO lt_js.
  APPEND `});` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/index.ts` TO lt_js.
  APPEND `var tokens_exports = {};` TO lt_js.
  APPEND `__export(tokens_exports, {` TO lt_js.
  APPEND `  At: () => At,` TO lt_js.
  APPEND `  AtW: () => AtW,` TO lt_js.
  APPEND `  BracketLeft: () => BracketLeft,` TO lt_js.
  APPEND `  BracketLeftW: () => BracketLeftW,` TO lt_js.
  APPEND `  BracketRight: () => BracketRight,` TO lt_js.
  APPEND `  BracketRightW: () => BracketRightW,` TO lt_js.
  APPEND `  Colon: () => Colon,` TO lt_js.
  APPEND `  Comment: () => Comment,` TO lt_js.
  APPEND `  Dash: () => Dash,` TO lt_js.
  APPEND `  DashW: () => DashW,` TO lt_js.
  APPEND `  Identifier: () => Identifier,` TO lt_js.
  APPEND `  InstanceArrow: () => InstanceArrow,` TO lt_js.
  APPEND `  InstanceArrowW: () => InstanceArrowW,` TO lt_js.
  APPEND `  ParenLeft: () => ParenLeft,` TO lt_js.
  APPEND `  ParenLeftW: () => ParenLeftW,` TO lt_js.
  APPEND `  ParenRight: () => ParenRight,` TO lt_js.
  APPEND `  ParenRightW: () => ParenRightW,` TO lt_js.
  APPEND `  Plus: () => Plus,` TO lt_js.
  APPEND `  PlusW: () => PlusW,` TO lt_js.
  APPEND `  Pragma: () => Pragma,` TO lt_js.
  APPEND `  Punctuation: () => Punctuation,` TO lt_js.
  APPEND `  StaticArrow: () => StaticArrow,` TO lt_js.
  APPEND `  StaticArrowW: () => StaticArrowW,` TO lt_js.
  APPEND `  StringTemplate: () => StringTemplate,` TO lt_js.
  APPEND `  StringTemplateBegin: () => StringTemplateBegin,` TO lt_js.
  APPEND `  StringTemplateEnd: () => StringTemplateEnd,` TO lt_js.
  APPEND `  StringTemplateMiddle: () => StringTemplateMiddle,` TO lt_js.
  APPEND `  StringToken: () => StringToken,` TO lt_js.
  APPEND `  WAt: () => WAt,` TO lt_js.
  APPEND `  WAtW: () => WAtW,` TO lt_js.
  APPEND `  WBracketLeft: () => WBracketLeft,` TO lt_js.
  APPEND `  WBracketLeftW: () => WBracketLeftW,` TO lt_js.
  APPEND `  WBracketRight: () => WBracketRight,` TO lt_js.
  APPEND `  WBracketRightW: () => WBracketRightW,` TO lt_js.
  APPEND `  WDash: () => WDash,` TO lt_js.
  APPEND `  WDashW: () => WDashW,` TO lt_js.
  APPEND `  WInstanceArrow: () => WInstanceArrow,` TO lt_js.
  APPEND `  WInstanceArrowW: () => WInstanceArrowW,` TO lt_js.
  APPEND `  WParenLeft: () => WParenLeft,` TO lt_js.
  APPEND `  WParenLeftW: () => WParenLeftW,` TO lt_js.
  APPEND `  WParenRight: () => WParenRight,` TO lt_js.
  APPEND `  WParenRightW: () => WParenRightW,` TO lt_js.
  APPEND `  WPlus: () => WPlus,` TO lt_js.
  APPEND `  WPlusW: () => WPlusW,` TO lt_js.
  APPEND `  WStaticArrow: () => WStaticArrow,` TO lt_js.
  APPEND `  WStaticArrowW: () => WStaticArrowW` TO lt_js.
  APPEND `});` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/position.ts` TO lt_js.
  APPEND `var Position = class {` TO lt_js.
  APPEND `  constructor(row, col) {` TO lt_js.
  APPEND `    this.row = row;` TO lt_js.
  APPEND `    this.col = col;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getCol() {` TO lt_js.
  APPEND `    return this.col;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getRow() {` TO lt_js.
  APPEND `    return this.row;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  isAfter(p) {` TO lt_js.
  APPEND `    return this.row > p.row || this.row === p.row && this.col >= p.col;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  equals(p) {` TO lt_js.
  APPEND `    return this.row === p.getRow() && this.col === p.getCol();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  isBefore(p) {` TO lt_js.
  APPEND `    return this.row < p.row || this.row === p.row && this.col < p.col;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  isBetween(p1, p2) {` TO lt_js.
  APPEND `    return this.isAfter(p1) && this.isBefore(p2);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/abstract_token.ts` TO lt_js.
  APPEND `var AbstractToken = class {` TO lt_js.
  APPEND `  constructor(start, str2) {` TO lt_js.
  APPEND `    this.start = start;` TO lt_js.
  APPEND `    this.str = str2;` TO lt_js.
  APPEND `    this.strUpper = str2.toUpperCase();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // special function, for debugging purposes, see https://github.com/abaplint/abaplint/pull/3137` TO lt_js.
  APPEND `  [/* @__PURE__ */ Symbol.for("debug.description")]() {` TO lt_js.
  APPEND `    return ``${this.constructor.name} ${this.str}``;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getStr() {` TO lt_js.
  APPEND `    return this.str;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUpperStr() {` TO lt_js.
  APPEND `    return this.strUpper;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getRow() {` TO lt_js.
  APPEND `    return this.start.getRow();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getCol() {` TO lt_js.
  APPEND `    return this.start.getCol();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getStart() {` TO lt_js.
  APPEND `    return this.start;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getEnd() {` TO lt_js.
  APPEND `    return new Position(this.start.getRow(), this.start.getCol() + this.str.length);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/at.ts` TO lt_js.
  APPEND `var At = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "@";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/atw.ts` TO lt_js.
  APPEND `var AtW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "@ ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wat.ts` TO lt_js.
  APPEND `var WAt = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " @";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/watw.ts` TO lt_js.
  APPEND `var WAtW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " @ ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/bracket_left.ts` TO lt_js.
  APPEND `var BracketLeft = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "[";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wbracket_left.ts` TO lt_js.
  APPEND `var WBracketLeft = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " [";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/bracket_leftw.ts` TO lt_js.
  APPEND `var BracketLeftW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "[ ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wbracket_leftw.ts` TO lt_js.
  APPEND `var WBracketLeftW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " [ ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/bracket_right.ts` TO lt_js.
  APPEND `var BracketRight = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "]";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wbracket_right.ts` TO lt_js.
  APPEND `var WBracketRight = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " ]";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/bracket_rightw.ts` TO lt_js.
  APPEND `var BracketRightW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "] ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wbracket_rightw.ts` TO lt_js.
  APPEND `var WBracketRightW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " ] ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/instance_arrow.ts` TO lt_js.
  APPEND `var InstanceArrow = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "->";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/winstance_arrow.ts` TO lt_js.
  APPEND `var WInstanceArrow = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " ->";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/instance_arroww.ts` TO lt_js.
  APPEND `var InstanceArrowW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "-> ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/winstance_arroww.ts` TO lt_js.
  APPEND `var WInstanceArrowW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " -> ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/paren_left.ts` TO lt_js.
  APPEND `var ParenLeft = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "(";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wparen_left.ts` TO lt_js.
  APPEND `var WParenLeft = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " (";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/paren_leftw.ts` TO lt_js.
  APPEND `var ParenLeftW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "( ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wparen_leftw.ts` TO lt_js.
  APPEND `var WParenLeftW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " ( ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/paren_right.ts` TO lt_js.
  APPEND `var ParenRight = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wparen_right.ts` TO lt_js.
  APPEND `var WParenRight = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " )";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/paren_rightw.ts` TO lt_js.
  APPEND `var ParenRightW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return ") ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wparen_rightw.ts` TO lt_js.
  APPEND `var WParenRightW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " ) ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/dash.ts` TO lt_js.
  APPEND `var Dash = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "-";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wdash.ts` TO lt_js.
  APPEND `var WDash = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " -";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/dashw.ts` TO lt_js.
  APPEND `var DashW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "- ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wdashw.ts` TO lt_js.
  APPEND `var WDashW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " - ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/plus.ts` TO lt_js.
  APPEND `var Plus = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "+";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wplus.ts` TO lt_js.
  APPEND `var WPlus = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " +";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/plusw.ts` TO lt_js.
  APPEND `var PlusW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "+ ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wplusw.ts` TO lt_js.
  APPEND `var WPlusW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " + ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/static_arrow.ts` TO lt_js.
  APPEND `var StaticArrow = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "=>";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wstatic_arrow.ts` TO lt_js.
  APPEND `var WStaticArrow = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " =>";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/static_arroww.ts` TO lt_js.
  APPEND `var StaticArrowW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return "=> ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/wstatic_arroww.ts` TO lt_js.
  APPEND `var WStaticArrowW = class extends AbstractToken {` TO lt_js.
  APPEND `  static railroad() {` TO lt_js.
  APPEND `    return " => ";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/string.ts` TO lt_js.
  APPEND `var StringToken = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/string_template.ts` TO lt_js.
  APPEND `var StringTemplate = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/string_template_begin.ts` TO lt_js.
  APPEND `var StringTemplateBegin = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/string_template_end.ts` TO lt_js.
  APPEND `var StringTemplateEnd = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/string_template_middle.ts` TO lt_js.
  APPEND `var StringTemplateMiddle = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/colon.ts` TO lt_js.
  APPEND `var Colon = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/comment.ts` TO lt_js.
  APPEND `var Comment = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/identifier.ts` TO lt_js.
  APPEND `var Identifier = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/pragma.ts` TO lt_js.
  APPEND `var Pragma = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/tokens/punctuation.ts` TO lt_js.
  APPEND `var Punctuation = class extends AbstractToken {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/nodes/token_node.ts` TO lt_js.
  APPEND `var TokenNode = class {` TO lt_js.
  APPEND `  constructor(token) {` TO lt_js.
  APPEND `    this.token = token;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  addChild(_n) {` TO lt_js.
  APPEND `    throw new Error("TokenNode, Method not implemented.");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  setChildren(_children) {` TO lt_js.
  APPEND `    throw new Error("TokenNode, Method not implemented.");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getChildren() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokens() {` TO lt_js.
  APPEND `    return this.token.getStr();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  get() {` TO lt_js.
  APPEND `    return this.token;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  countTokens() {` TO lt_js.
  APPEND `    return 1;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFirstToken() {` TO lt_js.
  APPEND `    return this.token;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getLastToken() {` TO lt_js.
  APPEND `    return this.token;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/nodes/_abstract_node.ts` TO lt_js.
  APPEND `var AbstractNode = class {` TO lt_js.
  APPEND `  constructor() {` TO lt_js.
  APPEND `    this.children = [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  addChild(n) {` TO lt_js.
  APPEND `    this.children.push(n);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  setChildren(children) {` TO lt_js.
  APPEND `    this.children = children;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getChildren() {` TO lt_js.
  APPEND `    return this.children;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFirstChild() {` TO lt_js.
  APPEND `    return this.children[0];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getLastChild() {` TO lt_js.
  APPEND `    return this.children[this.children.length - 1];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/nodes/expression_node.ts` TO lt_js.
  APPEND `var ExpressionNode = class _ExpressionNode extends AbstractNode {` TO lt_js.
  APPEND `  constructor(expression) {` TO lt_js.
  APPEND `    super();` TO lt_js.
  APPEND `    this.expression = expression;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  get() {` TO lt_js.
  APPEND `    return this.expression;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  countTokens() {` TO lt_js.
  APPEND `    let ret = 0;` TO lt_js.
  APPEND `    for (const c of this.getChildren()) {` TO lt_js.
  APPEND `      ret = ret + c.countTokens();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFirstToken() {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      return child.getFirstToken();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    throw new Error("ExpressionNode, getFirstToken, no children");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokensWithLinebreaks() {` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Pragma) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (str2 === "") {` TO lt_js.
  APPEND `        str2 = token.getStr();` TO lt_js.
  APPEND `      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {` TO lt_js.
  APPEND `        str2 = str2 + token.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        if (prev && prev.getRow() !== token.getRow()) {` TO lt_js.
  APPEND `          str2 = str2 + "\n" + token.getStr();` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          str2 = str2 + " " + token.getStr();` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = token;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return str2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokens() {` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Pragma) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (str2 === "") {` TO lt_js.
  APPEND `        str2 = token.getStr();` TO lt_js.
  APPEND `      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {` TO lt_js.
  APPEND `        str2 = str2 + token.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        str2 = str2 + " " + token.getStr();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = token;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return str2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokensWithoutStringsAndComments() {` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Comment || token instanceof StringToken || token instanceof StringTemplate || token instanceof StringTemplateBegin || token instanceo` &&
    `f StringTemplateMiddle || token instanceof StringTemplateEnd) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (str2 === "") {` TO lt_js.
  APPEND `        str2 = token.getStr();` TO lt_js.
  APPEND `      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {` TO lt_js.
  APPEND `        str2 = str2 + token.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        str2 = str2 + " " + token.getStr();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = token;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return str2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // todo: delete this method?, its slow` TO lt_js.
  APPEND `  getTokens() {` TO lt_js.
  APPEND `    const tokens = [];` TO lt_js.
  APPEND `    for (const c of this.getChildren()) {` TO lt_js.
  APPEND `      tokens.push(...this.toTokens(c));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return tokens;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toTokens(b) {` TO lt_js.
  APPEND `    const tokens = [];` TO lt_js.
  APPEND `    if (b instanceof TokenNode) {` TO lt_js.
  APPEND `      tokens.push(b.get());` TO lt_js.
  APPEND `      return tokens;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const c of b.getChildren()) {` TO lt_js.
  APPEND `      if (c instanceof TokenNode) {` TO lt_js.
  APPEND `        tokens.push(c.get());` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        tokens.push(...this.toTokens(c));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return tokens;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getLastToken() {` TO lt_js.
  APPEND `    const child = this.getLastChild();` TO lt_js.
  APPEND `    if (child) {` TO lt_js.
  APPEND `      return child.getLastToken();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    throw new Error("ExpressionNode, getLastToken, no children");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getAllTokens() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        ret.push(child.get());` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        ret.push(...child.getAllTokens());` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getDirectTokens() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        ret.push(child.get());` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectExpression(type) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof _ExpressionNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findExpressionAfterToken(text) {` TO lt_js.
  APPEND `    const children = this.getChildren();` TO lt_js.
  APPEND `    for (let i = 0; i < children.length - 1; i++) {` TO lt_js.
  APPEND `      const c = children[i];` TO lt_js.
  APPEND `      const next = children[i + 1];` TO lt_js.
  APPEND `      if (c instanceof TokenNode && c.get().getStr().toUpperCase() === text.toUpperCase() && next instanceof _ExpressionNode) {` TO lt_js.
  APPEND `        return next;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectExpressions(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof _ExpressionNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectExpressionsMulti(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof _ExpressionNode) {` TO lt_js.
  APPEND `        for (const t of type) {` TO lt_js.
  APPEND `          if (child.get() instanceof t) {` TO lt_js.
  APPEND `            ret.push(child);` TO lt_js.
  APPEND `            break;` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectTokenByText(text) {` TO lt_js.
  APPEND `    const search = text.toUpperCase();` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode && child.get().getStr().toUpperCase() === search) {` TO lt_js.
  APPEND `        return child.get();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressionsRecursive(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      ret.push(...child.findAllExpressionsRecursive(type));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressions(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        ret.push(...child.findAllExpressions(type));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressionsMulti(type, recursive = false) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      const before = ret.length;` TO lt_js.
  APPEND `      for (const t of type) {` TO lt_js.
  APPEND `        if (child.get() instanceof t) {` TO lt_js.
  APPEND `          ret.push(child);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (before === ret.length || recursive === true) {` TO lt_js.
  APPEND `        ret.push(...child.findAllExpressionsMulti(type, recursive));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findFirstExpression(type) {` TO lt_js.
  APPEND `    if (this.get() instanceof type) {` TO lt_js.
  APPEND `      return this;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        const res = child.findFirstExpression(type);` TO lt_js.
  APPEND `        if (res) {` TO lt_js.
  APPEND `          return res;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/nodes/statement_node.ts` TO lt_js.
  APPEND `var StatementNode = class extends AbstractNode {` TO lt_js.
  APPEND `  constructor(statement, colon, pragmas) {` TO lt_js.
  APPEND `    super();` TO lt_js.
  APPEND `    this.statement = statement;` TO lt_js.
  APPEND `    this.colon = colon;` TO lt_js.
  APPEND `    if (pragmas) {` TO lt_js.
  APPEND `      this.pragmas = pragmas;` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      this.pragmas = [];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  get() {` TO lt_js.
  APPEND `    return this.statement;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getColon() {` TO lt_js.
  APPEND `    return this.colon;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getPragmas() {` TO lt_js.
  APPEND `    return this.pragmas;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  setChildren(children) {` TO lt_js.
  APPEND `    if (children.length === 0) {` TO lt_js.
  APPEND `      throw new Error("statement: zero children");` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.children = children;` TO lt_js.
  APPEND `    return this;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getStart() {` TO lt_js.
  APPEND `    return this.getFirstToken().getStart();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getEnd() {` TO lt_js.
  APPEND `    const last = this.getLastToken();` TO lt_js.
  APPEND `    return last.getEnd();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getTokens() {` TO lt_js.
  APPEND `    const tokens = [];` TO lt_js.
  APPEND `    for (const c of this.getChildren()) {` TO lt_js.
  APPEND `      tokens.push(...this.toTokens(c));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return tokens;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  includesToken(search) {` TO lt_js.
  APPEND `    for (const t of this.getTokens()) {` TO lt_js.
  APPEND `      if (t.getStart().equals(search.getStart())) {` TO lt_js.
  APPEND `        return true;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return false;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getTokenNodes() {` TO lt_js.
  APPEND `    const tokens = [];` TO lt_js.
  APPEND `    for (const c of this.getChildren()) {` TO lt_js.
  APPEND `      tokens.push(...this.toTokenNodess(c));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return tokens;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokens() {` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Pragma) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (str2 === "") {` TO lt_js.
  APPEND `        str2 = token.getStr();` TO lt_js.
  APPEND `      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {` TO lt_js.
  APPEND `        str2 = str2 + token.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        str2 = str2 + " " + token.getStr();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = token;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return str2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokensVirtual() {` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Pragma) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      const vprev = prev?.getStart();` TO lt_js.
  APPEND `      const vtoke = token?.getStart();` TO lt_js.
  APPEND `      if (str2 === "") {` TO lt_js.
  APPEND `        str2 = token.getStr();` TO lt_js.
  APPEND `      } else if (prev && vprev && vtoke && prev.getStr().length + vprev.vcol === vtoke.vcol && vprev.vrow === vtoke.vrow) {` TO lt_js.
  APPEND `        str2 = str2 + token.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        str2 = str2 + " " + token.getStr();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = token;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return str2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokensWithoutStringsAndComments() {` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Comment || token instanceof StringToken || token instanceof StringTemplate || token instanceof StringTemplateBegin || token instanceo` &&
    `f StringTemplateMiddle || token instanceof StringTemplateEnd) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (str2 === "") {` TO lt_js.
  APPEND `        str2 = token.getStr();` TO lt_js.
  APPEND `      } else if (prev && prev.getStr().length + prev.getCol() === token.getCol() && prev.getRow() === token.getRow()) {` TO lt_js.
  APPEND `        str2 = str2 + token.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        str2 = str2 + " " + token.getStr();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = token;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return str2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getTerminator() {` TO lt_js.
  APPEND `    return this.getLastToken().getStr();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFirstToken() {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      return child.getFirstToken();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    throw new Error("StatementNode, getFirstToken, no children, " + this.get().constructor.name);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getLastToken() {` TO lt_js.
  APPEND `    const child = this.getLastChild();` TO lt_js.
  APPEND `    if (child !== void 0) {` TO lt_js.
  APPEND `      return child.getLastToken();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    throw new Error("StatementNode, getLastToken, no children");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectExpression(type) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof ExpressionNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectExpressions(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof ExpressionNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectExpressionsMulti(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof ExpressionNode && type.some((t) => child.get() instanceof t)) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectTokenByText(text) {` TO lt_js.
  APPEND `    const upper = text.toUpperCase();` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode && child.get().getStr().toUpperCase() === upper) {` TO lt_js.
  APPEND `        return child.get();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findFirstExpression(type) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        const res = child.findFirstExpression(type);` TO lt_js.
  APPEND `        if (res) {` TO lt_js.
  APPEND `          return res;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressions(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        ret.push(...child.findAllExpressions(type));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressionsRecursive(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      ret.push(...child.findAllExpressionsRecursive(type));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressionsMulti(type, recursive = false) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof TokenNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      const before = ret.length;` TO lt_js.
  APPEND `      for (const t of type) {` TO lt_js.
  APPEND `        if (child.get() instanceof t) {` TO lt_js.
  APPEND `          ret.push(child);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (before === ret.length || recursive === true) {` TO lt_js.
  APPEND `        ret.push(...child.findAllExpressionsMulti(type, recursive));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  /**` TO lt_js.
  APPEND `   * Returns the Position of the first token if the sequence is found,` TO lt_js.
  APPEND `   * otherwise undefined. Strings and Comments are ignored in this search.` TO lt_js.
  APPEND `   * @param first - Text of the first Token` TO lt_js.
  APPEND `   * @param second - Text of the second Token` TO lt_js.
  APPEND `   */` TO lt_js.
  APPEND `  findTokenSequencePosition(first, second) {` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (const token of this.getTokens()) {` TO lt_js.
  APPEND `      if (token instanceof Comment || token instanceof StringToken || token instanceof StringTemplate || token instanceof StringTemplateBegin || token instanceo` &&
    `f StringTemplateMiddle || token instanceof StringTemplateEnd) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (prev && token.getStr().toUpperCase() === second && prev?.getStr().toUpperCase() === first.toUpperCase()) {` TO lt_js.
  APPEND `        return prev.getStart();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        prev = token;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findExpressionAfterToken(text) {` TO lt_js.
  APPEND `    const children = this.getChildren();` TO lt_js.
  APPEND `    for (let i = 0; i < children.length - 1; i++) {` TO lt_js.
  APPEND `      const c = children[i];` TO lt_js.
  APPEND `      const next = children[i + 1];` TO lt_js.
  APPEND `      if (c instanceof TokenNode && c.get().getStr().toUpperCase() === text.toUpperCase() && next instanceof ExpressionNode) {` TO lt_js.
  APPEND `        return next;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findExpressionsAfterToken(text) {` TO lt_js.
  APPEND `    const children = this.getChildren();` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (let i = 0; i < children.length - 1; i++) {` TO lt_js.
  APPEND `      const c = children[i];` TO lt_js.
  APPEND `      const next = children[i + 1];` TO lt_js.
  APPEND `      if (c instanceof TokenNode && c.get().getStr().toUpperCase() === text.toUpperCase() && next instanceof ExpressionNode) {` TO lt_js.
  APPEND `        ret.push(next);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  ////////////////////////////////` TO lt_js.
  APPEND `  toTokens(b) {` TO lt_js.
  APPEND `    const tokens = [];` TO lt_js.
  APPEND `    if (b instanceof TokenNode) {` TO lt_js.
  APPEND `      tokens.push(b.get());` TO lt_js.
  APPEND `      return tokens;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const c of b.getChildren()) {` TO lt_js.
  APPEND `      if (c instanceof TokenNode) {` TO lt_js.
  APPEND `        tokens.push(c.get());` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        tokens.push(...this.toTokens(c));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return tokens;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toTokenNodess(b) {` TO lt_js.
  APPEND `    const tokens = [];` TO lt_js.
  APPEND `    if (b instanceof TokenNode) {` TO lt_js.
  APPEND `      tokens.push(b);` TO lt_js.
  APPEND `      return tokens;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const c of b.getChildren()) {` TO lt_js.
  APPEND `      if (c instanceof TokenNode) {` TO lt_js.
  APPEND `        tokens.push(c);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        tokens.push(...this.toTokenNodess(c));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return tokens;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/nodes/structure_node.ts` TO lt_js.
  APPEND `var StructureNode = class _StructureNode extends AbstractNode {` TO lt_js.
  APPEND `  constructor(structure) {` TO lt_js.
  APPEND `    super();` TO lt_js.
  APPEND `    this.structure = structure;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  get() {` TO lt_js.
  APPEND `    return this.structure;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // todo, remove this method, the logic should never go up in the tree` TO lt_js.
  APPEND `  findParent(node) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child === node) {` TO lt_js.
  APPEND `        return this;` TO lt_js.
  APPEND `      } else if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        const res = child.findParent(node);` TO lt_js.
  APPEND `        if (res) {` TO lt_js.
  APPEND `          return res;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  concatTokens() {` TO lt_js.
  APPEND `    let concat = "";` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      concat = concat + child.concatTokens();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return concat;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectStatement(type) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectStatements(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectStructures(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof _StructureNode && child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findFirstStatement(type) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      } else if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        const res = child.findFirstStatement(type);` TO lt_js.
  APPEND `        if (res) {` TO lt_js.
  APPEND `          return res;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findFirstExpression(type) {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      const res = child.findFirstExpression(type);` TO lt_js.
  APPEND `      if (res) {` TO lt_js.
  APPEND `        return res;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFirstStatement() {` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      return child.getFirstStatement();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFirstToken() {` TO lt_js.
  APPEND `    const child = this.getFirstChild();` TO lt_js.
  APPEND `    if (child !== void 0) {` TO lt_js.
  APPEND `      return child.getFirstToken();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    throw new Error("StructureNode, getFirstToken, unexpected type");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getLastToken() {` TO lt_js.
  APPEND `    const child = this.getLastChild();` TO lt_js.
  APPEND `    if (child !== void 0) {` TO lt_js.
  APPEND `      return child.getLastToken();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    throw new Error("StructureNode, getLastToken, unexpected type");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressions(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      ret.push(...child.findAllExpressions(type));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressionsRecursive(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        ret.push(...child.findAllExpressionsRecursive(type));` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        ret.push(...child.findAllExpressionsRecursive(type));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllExpressionsMulti(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      ret.push(...child.findAllExpressionsMulti(type));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllStatements(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof _StructureNode) {` TO lt_js.
  APPEND `        ret.push(...child.findAllStatements(type));` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllStatementNodes() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        ret.push(...child.findAllStatementNodes());` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllStructuresRecursive(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      ret.push(...child.findAllStructuresRecursive(type));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllStructuresMulti(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const t of type) {` TO lt_js.
  APPEND `      if (this.get() instanceof t) {` TO lt_js.
  APPEND `        return [this];` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      let found = false;` TO lt_js.
  APPEND `      for (const t of type) {` TO lt_js.
  APPEND `        if (this.get() instanceof t) {` TO lt_js.
  APPEND `          ret.push(child);` TO lt_js.
  APPEND `          found = true;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (found === false) {` TO lt_js.
  APPEND `        ret.push(...child.findAllStructuresMulti(type));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findAllStructures(type) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    if (this.get() instanceof type) {` TO lt_js.
  APPEND `      return [this];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        ret.push(child);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        ret.push(...child.findAllStructures(type));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findDirectStructure(type) {` TO lt_js.
  APPEND `    if (this.get() instanceof type) {` TO lt_js.
  APPEND `      return this;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findFirstStructure(type) {` TO lt_js.
  APPEND `    if (this.get() instanceof type) {` TO lt_js.
  APPEND `      return this;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const child of this.getChildren()) {` TO lt_js.
  APPEND `      if (child instanceof StatementNode) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else if (child.get() instanceof type) {` TO lt_js.
  APPEND `        return child;` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        const res = child.findFirstStructure(type);` TO lt_js.
  APPEND `        if (res) {` TO lt_js.
  APPEND `          return res;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/nodes/token_node_regex.ts` TO lt_js.
  APPEND `var TokenNodeRegex = class extends TokenNode {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/result.ts` TO lt_js.
  APPEND `var Result = class _Result {` TO lt_js.
  APPEND `  constructor(tokens, tokenIndex, nodes) {` TO lt_js.
  APPEND `    this.tokens = tokens;` TO lt_js.
  APPEND `    this.tokenIndex = tokenIndex;` TO lt_js.
  APPEND `    this.nodes = nodes;` TO lt_js.
  APPEND `    if (this.nodes === void 0) {` TO lt_js.
  APPEND `      this.nodes = [];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  peek() {` TO lt_js.
  APPEND `    return this.tokens[this.tokenIndex];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  shift(node) {` TO lt_js.
  APPEND `    const cp = this.nodes.slice();` TO lt_js.
  APPEND `    cp.push(node);` TO lt_js.
  APPEND `    return new _Result(this.tokens, this.tokenIndex + 1, cp);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  popNode() {` TO lt_js.
  APPEND `    return this.nodes.pop();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getNodes() {` TO lt_js.
  APPEND `    return this.nodes;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  setNodes(n) {` TO lt_js.
  APPEND `    this.nodes = n;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  remainingLength() {` TO lt_js.
  APPEND `    return this.tokens.length - this.tokenIndex;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/combi.ts` TO lt_js.
  APPEND `var Regex = class {` TO lt_js.
  APPEND `  constructor(r) {` TO lt_js.
  APPEND `    this.regexp = r;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      if (input.remainingLength() === 0) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      const token = input.peek();` TO lt_js.
  APPEND `      if (this.regexp.test(token.getStr()) === true) {` TO lt_js.
  APPEND `        result.push(input.shift(new TokenNodeRegex(token)));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return 'Railroad.Terminal("' + this.regexp.source.replace(/\\/g, "\\\\") + '")';` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return this.regexp.toString();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Word = class {` TO lt_js.
  APPEND `  constructor(s) {` TO lt_js.
  APPEND `    this.s = s.toUpperCase();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [this.s];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      if (input.remainingLength() !== 0 && input.peek().getUpperStr() === this.s) {` TO lt_js.
  APPEND `        result.push(input.shift(new TokenNode(input.peek())));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return ``Railroad.Terminal('"`` + this.s + ``"')``;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return '"' + this.s + '"';` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [this.s];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Token = class {` TO lt_js.
  APPEND `  constructor(s) {` TO lt_js.
  APPEND `    this.name = s;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      if (input.remainingLength() !== 0 && input.peek().constructor.name === this.name) {` TO lt_js.
  APPEND `        result.push(input.shift(new TokenNode(input.peek())));` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    let text = this.name;` TO lt_js.
  APPEND `    const toke = tokens_exports;` TO lt_js.
  APPEND `    for (const token in tokens_exports) {` TO lt_js.
  APPEND `      if (token.toUpperCase() === this.name && toke[token].railroad) {` TO lt_js.
  APPEND `        text = toke[token].railroad();` TO lt_js.
  APPEND `        break;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ``Railroad.Terminal('!"`` + text + ``"')``;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return 'Token "' + this.name + '"';` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Vers = class {` TO lt_js.
  APPEND `  constructor(version, runnable, or) {` TO lt_js.
  APPEND `    this.version = version;` TO lt_js.
  APPEND `    this.runnable = runnable;` TO lt_js.
  APPEND `    this.or = or;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.runnable.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const targetVersion = Combi.getVersion();` TO lt_js.
  APPEND `    if (this.or && targetVersion === this.or) {` TO lt_js.
  APPEND `      return this.runnable.run(r);` TO lt_js.
  APPEND `    } else if (targetVersion === "open-abap" /* OpenABAP */) {` TO lt_js.
  APPEND `      if (this.version > "v702" /* v702 */) {` TO lt_js.
  APPEND `        return [];` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        return this.runnable.run(r);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    } else if (targetVersion !== "Cloud" /* Cloud */ && this.version !== "Cloud" /* Cloud */ && targetVersion >= this.version || targetVersion === "Cloud" /* Cl` &&
    `oud */) {` TO lt_js.
  APPEND `      return this.runnable.run(r);` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      return [];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.runnable.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    let text = this.version;` TO lt_js.
  APPEND `    if (this.or) {` TO lt_js.
  APPEND `      text += " or " + this.or;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return 'Railroad.Sequence(Railroad.Comment("' + text + '", {}), ' + this.runnable.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "Version(" + this.runnable.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.runnable.first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var VersNot = class {` TO lt_js.
  APPEND `  constructor(version, runnable) {` TO lt_js.
  APPEND `    this.version = version;` TO lt_js.
  APPEND `    this.runnable = runnable;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.runnable.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.runnable.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    if (Combi.getVersion() !== this.version) {` TO lt_js.
  APPEND `      return this.runnable.run(r);` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      return [];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return 'Railroad.Sequence(Railroad.Comment("not ' + this.version + '", {}), ' + this.runnable.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "VersionNot(" + this.runnable.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.runnable.first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var OptionalPriority = class {` TO lt_js.
  APPEND `  constructor(optional) {` TO lt_js.
  APPEND `    this.optional = optional;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.optional.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.optional.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      const res = this.optional.run([input]);` TO lt_js.
  APPEND `      if (res.length > 1) {` TO lt_js.
  APPEND `        result.push(...res);` TO lt_js.
  APPEND `      } else if (res.length === 0) {` TO lt_js.
  APPEND `        result.push(input);` TO lt_js.
  APPEND `      } else if (res[0].remainingLength() < input.remainingLength()) {` TO lt_js.
  APPEND `        result.push(...res);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        result.push(input);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.Optional(" + this.optional.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "opt(" + this.optional.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Optional = class {` TO lt_js.
  APPEND `  constructor(optional) {` TO lt_js.
  APPEND `    this.optional = optional;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.optional.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.optional.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      result.push(input);` TO lt_js.
  APPEND `      const res = this.optional.run([input]);` TO lt_js.
  APPEND `      result.push(...res);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.Optional(" + this.optional.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "opt(" + this.optional.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Star = class {` TO lt_js.
  APPEND `  constructor(sta2) {` TO lt_js.
  APPEND `    this.sta = sta2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.sta.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.sta.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    let result = r;` TO lt_js.
  APPEND `    try {` TO lt_js.
  APPEND `      let res = r;` TO lt_js.
  APPEND `      let input = [];` TO lt_js.
  APPEND `      for (; ; ) {` TO lt_js.
  APPEND `        input = res;` TO lt_js.
  APPEND `        res = this.sta.run(input);` TO lt_js.
  APPEND `        if (res.length === 0) {` TO lt_js.
  APPEND `          break;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `        if (res.length > 1e3) {` TO lt_js.
  APPEND `          result = result.concat(res);` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          result.push(...res);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    } catch (err) {` TO lt_js.
  APPEND `      if (err instanceof FailStarError) {` TO lt_js.
  APPEND `        return result;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      throw err;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.ZeroOrMore(" + this.sta.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "star(" + this.sta.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var StarPriority = class {` TO lt_js.
  APPEND `  constructor(sta2) {` TO lt_js.
  APPEND `    this.sta = sta2;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.sta.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.sta.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    let result = r;` TO lt_js.
  APPEND `    let res = r;` TO lt_js.
  APPEND `    let prev;` TO lt_js.
  APPEND `    for (; ; ) {` TO lt_js.
  APPEND `      res = this.sta.run(res);` TO lt_js.
  APPEND `      if (res.length === 0) {` TO lt_js.
  APPEND `        if (prev !== void 0) {` TO lt_js.
  APPEND `          let best = Number.MAX_SAFE_INTEGER;` TO lt_js.
  APPEND `          for (const p of prev) {` TO lt_js.
  APPEND `            if (p.remainingLength() < best) {` TO lt_js.
  APPEND `              result = [p];` TO lt_js.
  APPEND `              best = p.remainingLength();` TO lt_js.
  APPEND `            }` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `        break;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prev = res;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.ZeroOrMore(" + this.sta.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "star(" + this.sta.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Plus2 = class {` TO lt_js.
  APPEND `  constructor(plu) {` TO lt_js.
  APPEND `    this.plu = plu;` TO lt_js.
  APPEND `    this.sub = new Sequence([this.plu, new Star(this.plu)]);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.plu.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.plu.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    return this.sub.run(r);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.OneOrMore(" + this.plu.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "plus(" + this.plu.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.plu.first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var PlusPriority = class {` TO lt_js.
  APPEND `  constructor(plu) {` TO lt_js.
  APPEND `    this.plu = plu;` TO lt_js.
  APPEND `    this.sub = new Sequence([this.plu, new StarPriority(this.plu)]);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return this.plu.listKeywords();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.plu.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    return this.sub.run(r);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.OneOrMore(" + this.plu.railroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "plus(" + this.plu.toStr() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.plu.first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Sequence = class {` TO lt_js.
  APPEND `  constructor(list) {` TO lt_js.
  APPEND `    if (list.length < 2) {` TO lt_js.
  APPEND `      throw new Error("Sequence, length error");` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.list = list;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret.push(...i.listKeywords());` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.list.reduce((a, c) => {` TO lt_js.
  APPEND `      return a.concat(c.getUsing());` TO lt_js.
  APPEND `    }, []);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    let result = [];` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      let temp = [input];` TO lt_js.
  APPEND `      let match = true;` TO lt_js.
  APPEND `      for (const sequence of this.list) {` TO lt_js.
  APPEND `        temp = sequence.run(temp);` TO lt_js.
  APPEND `        if (temp.length === 0) {` TO lt_js.
  APPEND `          match = false;` TO lt_js.
  APPEND `          break;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (match === true) {` TO lt_js.
  APPEND `        if (temp.length > 1e3) {` TO lt_js.
  APPEND `          result = result.concat(temp);` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          result.push(...temp);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.railroad();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "Railroad.Sequence(" + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    let ret = "";` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret = ret + i.toStr() + ",";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return "seq(" + ret + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.list[0].first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var WordSequence = class {` TO lt_js.
  APPEND `  constructor(stri) {` TO lt_js.
  APPEND `    this.words = [];` TO lt_js.
  APPEND `    this.stri = stri;` TO lt_js.
  APPEND `    const foo = this.stri.replace(/-/g, " - ");` TO lt_js.
  APPEND `    const split = foo.split(" ");` TO lt_js.
  APPEND `    for (const st of split) {` TO lt_js.
  APPEND `      this.words.push(new Word(st));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.seq = new Sequence(this.words);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [this.stri.toString()];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    return this.seq.run(r);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return ``Railroad.Terminal('"`` + this.stri + ``"')``;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "str(" + this.stri + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.words[0].first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Expression = class {` TO lt_js.
  APPEND `  constructor() {` TO lt_js.
  APPEND `    this.runnable = void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const results = [];` TO lt_js.
  APPEND `    if (this.runnable === void 0) {` TO lt_js.
  APPEND `      this.runnable = this.getRunnable();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const input of r) {` TO lt_js.
  APPEND `      const temp = this.runnable.run([input]);` TO lt_js.
  APPEND `      for (const t of temp) {` TO lt_js.
  APPEND `        let consumed = input.remainingLength() - t.remainingLength();` TO lt_js.
  APPEND `        if (consumed > 0) {` TO lt_js.
  APPEND `          const originalLength = t.getNodes().length;` TO lt_js.
  APPEND `          const children = [];` TO lt_js.
  APPEND `          while (consumed > 0) {` TO lt_js.
  APPEND `            const sub2 = t.popNode();` TO lt_js.
  APPEND `            if (sub2) {` TO lt_js.
  APPEND `              children.push(sub2);` TO lt_js.
  APPEND `              consumed = consumed - sub2.countTokens();` TO lt_js.
  APPEND `            }` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `          const re = new ExpressionNode(this);` TO lt_js.
  APPEND `          re.setChildren(children.reverse());` TO lt_js.
  APPEND `          const n = t.getNodes().slice(0, originalLength - consumed);` TO lt_js.
  APPEND `          n.push(re);` TO lt_js.
  APPEND `          t.setNodes(n);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `        results.push(t);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return results;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return ["expression/" + this.getName()];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getName() {` TO lt_js.
  APPEND `    return this.constructor.name;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.NonTerminal('" + this.getName() + "', {href: '#/expression/" + this.getName() + "'})";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "expression(" + this.getName() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.getRunnable().first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Permutation = class _Permutation {` TO lt_js.
  APPEND `  constructor(list) {` TO lt_js.
  APPEND `    if (list.length < 2) {` TO lt_js.
  APPEND `      throw new Error("Permutation, length error, got " + list.length);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.list = list;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret.push(...i.listKeywords());` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.list.reduce((a, c) => {` TO lt_js.
  APPEND `      return a.concat(c.getUsing());` TO lt_js.
  APPEND `    }, []);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    const copy = this.list.slice();` TO lt_js.
  APPEND `    for (let index = 0; index < this.list.length; index++) {` TO lt_js.
  APPEND `      const temp = this.list[index].run(r);` TO lt_js.
  APPEND `      if (temp.length !== 0) {` TO lt_js.
  APPEND `        result.push(...temp);` TO lt_js.
  APPEND `        const left = copy;` TO lt_js.
  APPEND `        left.splice(index, 1);` TO lt_js.
  APPEND `        if (left.length === 1) {` TO lt_js.
  APPEND `          result.push(...left[0].run(temp));` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          result.push(...new _Permutation(left).run(temp));` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.railroad();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "Railroad.MultipleChoice(0, 'any'," + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.toStr();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "per(" + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var FailCombinatorError = class extends Error {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var FailStarError = class extends Error {` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var FailCombinator = class {` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(_r) {` TO lt_js.
  APPEND `    throw new FailCombinatorError();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.Terminal('!FailCombinator')";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "fail()";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var FailStar = class {` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(_r) {` TO lt_js.
  APPEND `    throw new FailStarError();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    return "Railroad.Terminal('!FailStar')";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    return "fail()";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Alternative = class {` TO lt_js.
  APPEND `  constructor(list) {` TO lt_js.
  APPEND `    if (list.length < 2) {` TO lt_js.
  APPEND `      throw new Error("Alternative, length error");` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.list = list;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret.push(...i.listKeywords());` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.list.reduce((a, c) => {` TO lt_js.
  APPEND `      return a.concat(c.getUsing());` TO lt_js.
  APPEND `    }, []);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const sequ of this.list) {` TO lt_js.
  APPEND `      const temp = sequ.run(r);` TO lt_js.
  APPEND `      result.push(...temp);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.railroad();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "Railroad.Choice(0, " + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    let ret = "";` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret = ret + i.toStr() + ",";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return "alt(" + ret + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    if (this.list.length !== 2) {` TO lt_js.
  APPEND `      return [""];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const f1 = this.list[0].first();` TO lt_js.
  APPEND `    const f2 = this.list[1].first();` TO lt_js.
  APPEND `    if (f1.length === 1 && f1[0] === "") {` TO lt_js.
  APPEND `      return f1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (f2.length === 1 && f2[0] === "") {` TO lt_js.
  APPEND `      return f2;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (f1.length === 1 && f2.length === 1 && f1[0] === f2[0]) {` TO lt_js.
  APPEND `      return f1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    f1.push(...f2);` TO lt_js.
  APPEND `    return f1;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var AlternativePriority = class {` TO lt_js.
  APPEND `  constructor(list) {` TO lt_js.
  APPEND `    if (list.length < 2) {` TO lt_js.
  APPEND `      throw new Error("Alternative, length error");` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.list = list;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listKeywords() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret.push(...i.listKeywords());` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.list.reduce((a, c) => {` TO lt_js.
  APPEND `      return a.concat(c.getUsing());` TO lt_js.
  APPEND `    }, []);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(r) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const sequ of this.list) {` TO lt_js.
  APPEND `      const temp = sequ.run(r);` TO lt_js.
  APPEND `      if (temp.length > 0) {` TO lt_js.
  APPEND `        result.push(...temp);` TO lt_js.
  APPEND `        break;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  railroad() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.railroad();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "Railroad.Choice(0, " + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toStr() {` TO lt_js.
  APPEND `    let ret = "";` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      ret = ret + i.toStr() + ",";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return "alt(" + ret + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    if (this.list.length !== 2) {` TO lt_js.
  APPEND `      return [""];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const f1 = this.list[0].first();` TO lt_js.
  APPEND `    const f2 = this.list[1].first();` TO lt_js.
  APPEND `    if (f1.length === 1 && f1[0] === "") {` TO lt_js.
  APPEND `      return f1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (f2.length === 1 && f2[0] === "") {` TO lt_js.
  APPEND `      return f2;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (f1.length === 1 && f2.length === 1 && f1[0] === f2[0]) {` TO lt_js.
  APPEND `      return f1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    f1.push(...f2);` TO lt_js.
  APPEND `    return f1;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Combi = class {` TO lt_js.
  APPEND `  static railroad(runnable, complex = false) {` TO lt_js.
  APPEND `    let type = "Railroad.Diagram(";` TO lt_js.
  APPEND `    if (complex === true) {` TO lt_js.
  APPEND `      type = "Railroad.ComplexDiagram(";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const result = "Railroad.Diagram.INTERNAL_ALIGNMENT = 'left';\n" + type + runnable.railroad() + ").toString();";` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  static listKeywords(runnable) {` TO lt_js.
  APPEND `    let res = runnable.listKeywords();` TO lt_js.
  APPEND `    res = res.filter((x, i, a) => {` TO lt_js.
  APPEND `      return a.indexOf(x) === i;` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return res;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // assumption: no pragmas supplied in tokens input` TO lt_js.
  APPEND `  static run(runnable, tokens, version) {` TO lt_js.
  APPEND `    this.ver = version;` TO lt_js.
  APPEND `    const input = new Result(tokens, 0);` TO lt_js.
  APPEND `    try {` TO lt_js.
  APPEND `      const result = runnable.run([input]);` TO lt_js.
  APPEND `      for (const res of result) {` TO lt_js.
  APPEND `        if (res.remainingLength() === 0) {` TO lt_js.
  APPEND `          return res.getNodes();` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    } catch (err) {` TO lt_js.
  APPEND `      if (err instanceof FailCombinatorError) {` TO lt_js.
  APPEND `        return void 0;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      throw err;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return void 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  static getVersion() {` TO lt_js.
  APPEND `    return this.ver;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `function str(s) {` TO lt_js.
  APPEND `  if (s.indexOf(" ") > 0 || s.indexOf("-") > 0) {` TO lt_js.
  APPEND `    return new WordSequence(s);` TO lt_js.
  APPEND `  } else {` TO lt_js.
  APPEND `    return new Word(s);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function regex(r) {` TO lt_js.
  APPEND `  return new Regex(r);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function tok(t) {` TO lt_js.
  APPEND `  return new Token(t.name);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `var expressionSingletons = {};` TO lt_js.
  APPEND `var stringSingletons = {};` TO lt_js.
  APPEND `function mapInput(s) {` TO lt_js.
  APPEND `  const type = typeof s;` TO lt_js.
  APPEND `  if (type === "string") {` TO lt_js.
  APPEND `    if (stringSingletons[s] === void 0) {` TO lt_js.
  APPEND `      stringSingletons[s] = str(s);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return stringSingletons[s];` TO lt_js.
  APPEND `  } else if (type === "function") {` TO lt_js.
  APPEND `    const name = s.name;` TO lt_js.
  APPEND `    if (expressionSingletons[name] === void 0) {` TO lt_js.
  APPEND `      expressionSingletons[name] = new s();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return expressionSingletons[name];` TO lt_js.
  APPEND `  } else {` TO lt_js.
  APPEND `    return s;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function seq(first, second, ...rest) {` TO lt_js.
  APPEND `  const list = [mapInput(first), mapInput(second)];` TO lt_js.
  APPEND `  list.push(...rest.map(mapInput));` TO lt_js.
  APPEND `  return new Sequence(list);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function alt(first, second, ...rest) {` TO lt_js.
  APPEND `  const list = [mapInput(first), mapInput(second)];` TO lt_js.
  APPEND `  list.push(...rest.map(mapInput));` TO lt_js.
  APPEND `  return new Alternative(list);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function altPrio(first, second, ...rest) {` TO lt_js.
  APPEND `  const list = [mapInput(first), mapInput(second)];` TO lt_js.
  APPEND `  list.push(...rest.map(mapInput));` TO lt_js.
  APPEND `  return new AlternativePriority(list);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function opt(first) {` TO lt_js.
  APPEND `  return new Optional(mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function optPrio(first) {` TO lt_js.
  APPEND `  return new OptionalPriority(mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function per(first, second, ...rest) {` TO lt_js.
  APPEND `  const list = [mapInput(first), mapInput(second)];` TO lt_js.
  APPEND `  list.push(...rest.map(mapInput));` TO lt_js.
  APPEND `  return new Permutation(list);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function star(first) {` TO lt_js.
  APPEND `  return new Star(mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function starPrio(first) {` TO lt_js.
  APPEND `  return new StarPriority(mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function plus(first) {` TO lt_js.
  APPEND `  return new Plus2(mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function plusPrio(first) {` TO lt_js.
  APPEND `  return new PlusPriority(mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function ver(version, first, or) {` TO lt_js.
  APPEND `  return new Vers(version, mapInput(first), or);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function verNot(version, first) {` TO lt_js.
  APPEND `  return new VersNot(version, mapInput(first));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function failCombinator() {` TO lt_js.
  APPEND `  return new FailCombinator();` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function failStar() {` TO lt_js.
  APPEND `  return new FailStar();` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/index.ts` TO lt_js.
  APPEND `var expressions_exports = {};` TO lt_js.
  APPEND `__export(expressions_exports, {` TO lt_js.
  APPEND `  Abstract: () => Abstract,` TO lt_js.
  APPEND `  AbstractMethods: () => AbstractMethods,` TO lt_js.
  APPEND `  AndReturn: () => AndReturn,` TO lt_js.
  APPEND `  ArithOperator: () => ArithOperator,` TO lt_js.
  APPEND `  Arrow: () => Arrow,` TO lt_js.
  APPEND `  ArrowOrDash: () => ArrowOrDash,` TO lt_js.
  APPEND `  AssignSource: () => AssignSource,` TO lt_js.
  APPEND `  AssociationName: () => AssociationName,` TO lt_js.
  APPEND `  AttributeChain: () => AttributeChain,` TO lt_js.
  APPEND `  AttributeName: () => AttributeName,` TO lt_js.
  APPEND `  BehaviorDefinitionName: () => BehaviorDefinitionName,` TO lt_js.
  APPEND `  BlockName: () => BlockName,` TO lt_js.
  APPEND `  CallTransformationOptions: () => CallTransformationOptions,` TO lt_js.
  APPEND `  CallTransformationParameters: () => CallTransformationParameters,` TO lt_js.
  APPEND `  Cast: () => Cast,` TO lt_js.
  APPEND `  ClassFinal: () => ClassFinal,` TO lt_js.
  APPEND `  ClassFriends: () => ClassFriends,` TO lt_js.
  APPEND `  ClassGlobal: () => ClassGlobal,` TO lt_js.
  APPEND `  ClassName: () => ClassName,` TO lt_js.
  APPEND `  Color: () => Color,` TO lt_js.
  APPEND `  Compare: () => Compare,` TO lt_js.
  APPEND `  CompareOperator: () => CompareOperator,` TO lt_js.
  APPEND `  ComponentChain: () => ComponentChain,` TO lt_js.
  APPEND `  ComponentChainSimple: () => ComponentChainSimple,` TO lt_js.
  APPEND `  ComponentCompare: () => ComponentCompare,` TO lt_js.
  APPEND `  ComponentCompareSimple: () => ComponentCompareSimple,` TO lt_js.
  APPEND `  ComponentCompareSingle: () => ComponentCompareSingle,` TO lt_js.
  APPEND `  ComponentCond: () => ComponentCond,` TO lt_js.
  APPEND `  ComponentCondSub: () => ComponentCondSub,` TO lt_js.
  APPEND `  ComponentName: () => ComponentName,` TO lt_js.
  APPEND `  ConcatenatedConstant: () => ConcatenatedConstant,` TO lt_js.
  APPEND `  Cond: () => Cond,` TO lt_js.
  APPEND `  CondBody: () => CondBody,` TO lt_js.
  APPEND `  CondSub: () => CondSub,` TO lt_js.
  APPEND `  Constant: () => Constant,` TO lt_js.
  APPEND `  ConstantFieldLength: () => ConstantFieldLength,` TO lt_js.
  APPEND `  ConstantString: () => ConstantString,` TO lt_js.
  APPEND `  ConvBody: () => ConvBody,` TO lt_js.
  APPEND `  CorrespondingBody: () => CorrespondingBody,` TO lt_js.
  APPEND `  CorrespondingBodyBase: () => CorrespondingBodyBase,` TO lt_js.
  APPEND `  CorrespondingBodyMapping: () => CorrespondingBodyMapping,` TO lt_js.
  APPEND `  DataDefinition: () => DataDefinition,` TO lt_js.
  APPEND `  DatabaseConnection: () => DatabaseConnection,` TO lt_js.
  APPEND `  DatabaseTable: () => DatabaseTable,` TO lt_js.
  APPEND `  Decimals: () => Decimals,` TO lt_js.
  APPEND `  Default: () => Default,` TO lt_js.
  APPEND `  DefinitionName: () => DefinitionName,` TO lt_js.
  APPEND `  Dereference: () => Dereference,` TO lt_js.
  APPEND `  Destination: () => Destination,` TO lt_js.
  APPEND `  Dynamic: () => Dynamic,` TO lt_js.
  APPEND `  EntityAssociation: () => EntityAssociation,` TO lt_js.
  APPEND `  EventHandler: () => EventHandler,` TO lt_js.
  APPEND `  EventName: () => EventName,` TO lt_js.
  APPEND `  ExceptionName: () => ExceptionName,` TO lt_js.
  APPEND `  FSTarget: () => FSTarget,` TO lt_js.
  APPEND `  Field: () => Field,` TO lt_js.
  APPEND `  FieldAll: () => FieldAll,` TO lt_js.
  APPEND `  FieldAssignment: () => FieldAssignment,` TO lt_js.
  APPEND `  FieldChain: () => FieldChain,` TO lt_js.
  APPEND `  FieldLength: () => FieldLength,` TO lt_js.
  APPEND `  FieldOffset: () => FieldOffset,` TO lt_js.
  APPEND `  FieldSub: () => FieldSub,` TO lt_js.
  APPEND `  FieldSymbol: () => FieldSymbol,` TO lt_js.
  APPEND `  FilterBody: () => FilterBody,` TO lt_js.
  APPEND `  FinalMethods: () => FinalMethods,` TO lt_js.
  APPEND `  FindType: () => FindType,` TO lt_js.
  APPEND `  For: () => For,` TO lt_js.
  APPEND `  FormChanging: () => FormChanging,` TO lt_js.
  APPEND `  FormName: () => FormName,` TO lt_js.
  APPEND `  FormParam: () => FormParam,` TO lt_js.
  APPEND `  FormParamName: () => FormParamName,` TO lt_js.
  APPEND `  FormParamType: () => FormParamType,` TO lt_js.
  APPEND `  FormRaising: () => FormRaising,` TO lt_js.
  APPEND `  FormTables: () => FormTables,` TO lt_js.
  APPEND `  FormUsing: () => FormUsing,` TO lt_js.
  APPEND `  FunctionExporting: () => FunctionExporting,` TO lt_js.
  APPEND `  FunctionExportingParameter: () => FunctionExportingParameter,` TO lt_js.
  APPEND `  FunctionName: () => FunctionName,` TO lt_js.
  APPEND `  FunctionParameters: () => FunctionParameters,` TO lt_js.
  APPEND `  IncludeName: () => IncludeName,` TO lt_js.
  APPEND `  InlineData: () => InlineData,` TO lt_js.
  APPEND `  InlineFS: () => InlineFS,` TO lt_js.
  APPEND `  InlineField: () => InlineField,` TO lt_js.
  APPEND `  InlineFieldDefinition: () => InlineFieldDefinition,` TO lt_js.
  APPEND `  InlineLoopDefinition: () => InlineLoopDefinition,` TO lt_js.
  APPEND `  Integer: () => Integer,` TO lt_js.
  APPEND `  InterfaceName: () => InterfaceName,` TO lt_js.
  APPEND `  KernelId: () => KernelId,` TO lt_js.
  APPEND `  LOBHandle: () => LOBHandle,` TO lt_js.
  APPEND `  Language: () => Language,` TO lt_js.
  APPEND `  Length: () => Length,` TO lt_js.
  APPEND `  Let: () => Let,` TO lt_js.
  APPEND `  LoopGroupBy: () => LoopGroupBy,` TO lt_js.
  APPEND `  LoopGroupByComponent: () => LoopGroupByComponent,` TO lt_js.
  APPEND `  LoopGroupByTarget: () => LoopGroupByTarget,` TO lt_js.
  APPEND `  LoopSource: () => LoopSource,` TO lt_js.
  APPEND `  LoopTarget: () => LoopTarget,` TO lt_js.
  APPEND `  MacroName: () => MacroName,` TO lt_js.
  APPEND `  MessageClass: () => MessageClass,` TO lt_js.
  APPEND `  MessageNumber: () => MessageNumber,` TO lt_js.
  APPEND `  MessageSource: () => MessageSource,` TO lt_js.
  APPEND `  MessageSourceSource: () => MessageSourceSource,` TO lt_js.
  APPEND `  MessageTypeAndNumber: () => MessageTypeAndNumber,` TO lt_js.
  APPEND `  MethodCall: () => MethodCall,` TO lt_js.
  APPEND `  MethodCallBody: () => MethodCallBody,` TO lt_js.
  APPEND `  MethodCallChain: () => MethodCallChain,` TO lt_js.
  APPEND `  MethodCallParam: () => MethodCallParam,` TO lt_js.
  APPEND `  MethodDefChanging: () => MethodDefChanging,` TO lt_js.
  APPEND `  MethodDefExceptions: () => MethodDefExceptions,` TO lt_js.
  APPEND `  MethodDefExporting: () => MethodDefExporting,` TO lt_js.
  APPEND `  MethodDefImporting: () => MethodDefImporting,` TO lt_js.
  APPEND `  MethodDefRaising: () => MethodDefRaising,` TO lt_js.
  APPEND `  MethodDefReturning: () => MethodDefReturning,` TO lt_js.
  APPEND `  MethodName: () => MethodName,` TO lt_js.
  APPEND `  MethodParam: () => MethodParam,` TO lt_js.
  APPEND `  MethodParamName: () => MethodParamName,` TO lt_js.
  APPEND `  MethodParamOptional: () => MethodParamOptional,` TO lt_js.
  APPEND `  MethodParameters: () => MethodParameters,` TO lt_js.
  APPEND `  MethodSource: () => MethodSource,` TO lt_js.
  APPEND `  Modif: () => Modif,` TO lt_js.
  APPEND `  NamespaceSimpleName: () => NamespaceSimpleName,` TO lt_js.
  APPEND `  NewObject: () => NewObject,` TO lt_js.
  APPEND `  OLEExporting: () => OLEExporting,` TO lt_js.
  APPEND `  Or: () => Or,` TO lt_js.
  APPEND `  ParameterException: () => ParameterException,` TO lt_js.
  APPEND `  ParameterListExceptions: () => ParameterListExceptions,` TO lt_js.
  APPEND `  ParameterListS: () => ParameterListS,` TO lt_js.
  APPEND `  ParameterListT: () => ParameterListT,` TO lt_js.
  APPEND `  ParameterName: () => ParameterName,` TO lt_js.
  APPEND `  ParameterS: () => ParameterS,` TO lt_js.
  APPEND `  ParameterT: () => ParameterT,` TO lt_js.
  APPEND `  PassByValue: () => PassByValue,` TO lt_js.
  APPEND `  PerformChanging: () => PerformChanging,` TO lt_js.
  APPEND `  PerformTables: () => PerformTables,` TO lt_js.
  APPEND `  PerformUsing: () => PerformUsing,` TO lt_js.
  APPEND `  ProvideFieldName: () => ProvideFieldName,` TO lt_js.
  APPEND `  RadioGroupName: () => RadioGroupName,` TO lt_js.
  APPEND `  RaiseWith: () => RaiseWith,` TO lt_js.
  APPEND `  ReadTableTarget: () => ReadTableTarget,` TO lt_js.
  APPEND `  ReceiveParameters: () => ReceiveParameters,` TO lt_js.
  APPEND `  Redefinition: () => Redefinition,` TO lt_js.
  APPEND `  ReduceBody: () => ReduceBody,` TO lt_js.
  APPEND `  ReduceNext: () => ReduceNext,` TO lt_js.
  APPEND `  ReportName: () => ReportName,` TO lt_js.
  APPEND `  SQLAggregation: () => SQLAggregation,` TO lt_js.
  APPEND `  SQLAliasField: () => SQLAliasField,` TO lt_js.
  APPEND `  SQLArithmeticOperator: () => SQLArithmeticOperator,` TO lt_js.
  APPEND `  SQLArithmetics: () => SQLArithmetics,` TO lt_js.
  APPEND `  SQLAsName: () => SQLAsName,` TO lt_js.
  APPEND `  SQLBypassingBuffer: () => SQLBypassingBuffer,` TO lt_js.
  APPEND `  SQLCDSParameters: () => SQLCDSParameters,` TO lt_js.
  APPEND `  SQLCase: () => SQLCase,` TO lt_js.
  APPEND `  SQLClient: () => SQLClient,` TO lt_js.
  APPEND `  SQLCompare: () => SQLCompare,` TO lt_js.
  APPEND `  SQLCompareOperator: () => SQLCompareOperator,` TO lt_js.
  APPEND `  SQLCond: () => SQLCond,` TO lt_js.
  APPEND `  SQLField: () => SQLField,` TO lt_js.
  APPEND `  SQLFieldAndValue: () => SQLFieldAndValue,` TO lt_js.
  APPEND `  SQLFieldList: () => SQLFieldList,` TO lt_js.
  APPEND `  SQLFieldListLoop: () => SQLFieldListLoop,` TO lt_js.
  APPEND `  SQLFieldName: () => SQLFieldName,` TO lt_js.
  APPEND `  SQLFields: () => SQLFields,` TO lt_js.
  APPEND `  SQLFieldsLoop: () => SQLFieldsLoop,` TO lt_js.
  APPEND `  SQLForAllEntries: () => SQLForAllEntries,` TO lt_js.
  APPEND `  SQLFrom: () => SQLFrom,` TO lt_js.
  APPEND `  SQLFromSource: () => SQLFromSource,` TO lt_js.
  APPEND `  SQLFunction: () => SQLFunction,` TO lt_js.
  APPEND `  SQLFunctionInput: () => SQLFunctionInput,` TO lt_js.
  APPEND `  SQLGroupBy: () => SQLGroupBy,` TO lt_js.
  APPEND `  SQLHaving: () => SQLHaving,` TO lt_js.
  APPEND `  SQLHints: () => SQLHints,` TO lt_js.
  APPEND `  SQLIn: () => SQLIn,` TO lt_js.
  APPEND `  SQLIntoList: () => SQLIntoList,` TO lt_js.
  APPEND `  SQLIntoStructure: () => SQLIntoStructure,` TO lt_js.
  APPEND `  SQLIntoTable: () => SQLIntoTable,` TO lt_js.
  APPEND `  SQLJoin: () => SQLJoin,` TO lt_js.
  APPEND `  SQLOptions: () => SQLOptions,` TO lt_js.
  APPEND `  SQLOrderBy: () => SQLOrderBy,` TO lt_js.
  APPEND `  SQLOver: () => SQLOver,` TO lt_js.
  APPEND `  SQLPath: () => SQLPath,` TO lt_js.
  APPEND `  SQLPrivilegedAccess: () => SQLPrivilegedAccess,` TO lt_js.
  APPEND `  SQLSource: () => SQLSource,` TO lt_js.
  APPEND `  SQLSourceNoSpace: () => SQLSourceNoSpace,` TO lt_js.
  APPEND `  SQLSourceSimple: () => SQLSourceSimple,` TO lt_js.
  APPEND `  SQLTarget: () => SQLTarget,` TO lt_js.
  APPEND `  SQLUpTo: () => SQLUpTo,` TO lt_js.
  APPEND `  Select: () => Select,` TO lt_js.
  APPEND `  SelectLoop: () => SelectLoop,` TO lt_js.
  APPEND `  SimpleFieldChain: () => SimpleFieldChain,` TO lt_js.
  APPEND `  SimpleFieldChain2: () => SimpleFieldChain2,` TO lt_js.
  APPEND `  SimpleName: () => SimpleName,` TO lt_js.
  APPEND `  SimpleSource1: () => SimpleSource1,` TO lt_js.
  APPEND `  SimpleSource2: () => SimpleSource2,` TO lt_js.
  APPEND `  SimpleSource3: () => SimpleSource3,` TO lt_js.
  APPEND `  SimpleSource4: () => SimpleSource4,` TO lt_js.
  APPEND `  SimpleTarget: () => SimpleTarget,` TO lt_js.
  APPEND `  Source: () => Source,` TO lt_js.
  APPEND `  SourceField: () => SourceField,` TO lt_js.
  APPEND `  SourceFieldSymbol: () => SourceFieldSymbol,` TO lt_js.
  APPEND `  SourceFieldSymbolChain: () => SourceFieldSymbolChain,` TO lt_js.
  APPEND `  StringTemplate: () => StringTemplate2,` TO lt_js.
  APPEND `  StringTemplateFormatting: () => StringTemplateFormatting,` TO lt_js.
  APPEND `  StringTemplateSource: () => StringTemplateSource,` TO lt_js.
  APPEND `  SuperClassName: () => SuperClassName,` TO lt_js.
  APPEND `  SwitchBody: () => SwitchBody,` TO lt_js.
  APPEND `  TableBody: () => TableBody,` TO lt_js.
  APPEND `  TableExpression: () => TableExpression,` TO lt_js.
  APPEND `  Target: () => Target,` TO lt_js.
  APPEND `  TargetField: () => TargetField,` TO lt_js.
  APPEND `  TargetFieldSymbol: () => TargetFieldSymbol,` TO lt_js.
  APPEND `  TestSeamName: () => TestSeamName,` TO lt_js.
  APPEND `  TextElement: () => TextElement,` TO lt_js.
  APPEND `  TextElementKey: () => TextElementKey,` TO lt_js.
  APPEND `  TextElementString: () => TextElementString,` TO lt_js.
  APPEND `  Throw: () => Throw,` TO lt_js.
  APPEND `  TransportingFields: () => TransportingFields,` TO lt_js.
  APPEND `  Type: () => Type,` TO lt_js.
  APPEND `  TypeName: () => TypeName,` TO lt_js.
  APPEND `  TypeNameOrInfer: () => TypeNameOrInfer,` TO lt_js.
  APPEND `  TypeParam: () => TypeParam,` TO lt_js.
  APPEND `  TypeStructure: () => TypeStructure,` TO lt_js.
  APPEND `  TypeTable: () => TypeTable,` TO lt_js.
  APPEND `  TypeTableKey: () => TypeTableKey,` TO lt_js.
  APPEND `  Value: () => Value,` TO lt_js.
  APPEND `  ValueBase: () => ValueBase,` TO lt_js.
  APPEND `  ValueBody: () => ValueBody,` TO lt_js.
  APPEND `  ValueBodyLine: () => ValueBodyLine,` TO lt_js.
  APPEND `  ValueBodyLines: () => ValueBodyLines,` TO lt_js.
  APPEND `  WithName: () => WithName,` TO lt_js.
  APPEND `  WriteOffsetLength: () => WriteOffsetLength` TO lt_js.
  APPEND `});` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_name.ts` TO lt_js.
  APPEND `var MethodName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^(\/\w+\/)?\w+(~\w+)?$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/abstract_methods.ts` TO lt_js.
  APPEND `var AbstractMethods = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("ABSTRACT METHODS", plus(MethodName));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/abstract.ts` TO lt_js.
  APPEND `var Abstract = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return str("ABSTRACT");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/and_return.ts` TO lt_js.
  APPEND `var AndReturn = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return str("AND RETURN");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/arith_operator.ts` TO lt_js.
  APPEND `var ArithOperator = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = altPrio(` TO lt_js.
  APPEND `      tok(WPlusW),` TO lt_js.
  APPEND `      tok(WDashW),` TO lt_js.
  APPEND `      "*",` TO lt_js.
  APPEND `      "**",` TO lt_js.
  APPEND `      "/",` TO lt_js.
  APPEND `      "BIT-XOR",` TO lt_js.
  APPEND `      "BIT-AND",` TO lt_js.
  APPEND `      "BIT-OR",` TO lt_js.
  APPEND `      "DIV",` TO lt_js.
  APPEND `      "MOD"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/arrow_or_dash.ts` TO lt_js.
  APPEND `var ArrowOrDash = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(tok(InstanceArrow), tok(StaticArrow), tok(Dash));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/arrow.ts` TO lt_js.
  APPEND `var Arrow = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(tok(InstanceArrow), tok(StaticArrow));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/text_element.ts` TO lt_js.
  APPEND `var TextElement = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("TEXT", tok(Dash), TextElementKey);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/table_body.ts` TO lt_js.
  APPEND `var TableBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(tok(BracketLeft), altPrio(tok(BracketRightW), tok(BracketRight)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/attribute_chain.ts` TO lt_js.
  APPEND `var AttributeChain = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const chain = seq(` TO lt_js.
  APPEND `      AttributeName,` TO lt_js.
  APPEND `      starPrio(altPrio(seq(ArrowOrDash, altPrio("*", ComponentName)), TableExpression))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(chain, optPrio(TableBody), optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/dereference.ts` TO lt_js.
  APPEND `var Dereference = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(tok(InstanceArrow), "*");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/source.ts` TO lt_js.
  APPEND `var Source = class _Source extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), ComponentChain);` TO lt_js.
  APPEND `    const attr = seq(Arrow, AttributeChain);` TO lt_js.
  APPEND `    const deref = optPrio(ver("v756" /* v756 */, Dereference));` TO lt_js.
  APPEND `    const method = seq(MethodCallChain, optPrio(altPrio(attr, comp)), deref);` TO lt_js.
  APPEND `    const rparen3 = tok(WParenRightW);` TO lt_js.
  APPEND `    const rparenNoSpace = altPrio(tok(ParenRightW), tok(WParenRightW));` TO lt_js.
  APPEND `    const lparenNoSpace = altPrio(tok(ParenLeft), tok(ParenLeftW));` TO lt_js.
  APPEND `    const paren = seq(` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      _Source,` TO lt_js.
  APPEND `      rparen3` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const after = seq(altPrio("&", "&&", ArithOperator), _Source);` TO lt_js.
  APPEND `    const bool = seq(` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        ver("v702" /* v702 */, regex(/^BOOLC$/i), "open-abap" /* OpenABAP */),` TO lt_js.
  APPEND `        ver("v740sp08" /* v740sp08 */, regex(/^XSDBOOL$/i), "open-abap" /* OpenABAP */)` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      Cond,` TO lt_js.
  APPEND `      ")"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const prefix = altPrio(tok(WPlus), "BIT-NOT");` TO lt_js.
  APPEND `    const old = seq(` TO lt_js.
  APPEND `      optPrio(prefix),` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        Constant,` TO lt_js.
  APPEND `        StringTemplate2,` TO lt_js.
  APPEND `        TextElement,` TO lt_js.
  APPEND `        bool,` TO lt_js.
  APPEND `        method,` TO lt_js.
  APPEND `        seq(FieldChain, deref),` TO lt_js.
  APPEND `        paren` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const corr = ver("v740sp05" /* v740sp05 */, seq(` TO lt_js.
  APPEND `      "CORRESPONDING",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      CorrespondingBody,` TO lt_js.
  APPEND `      rparen3,` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    ), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const conv = ver("v740sp02" /* v740sp02 */, seq(` TO lt_js.
  APPEND `      "CONV",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      lparenNoSpace,` TO lt_js.
  APPEND `      ConvBody,` TO lt_js.
  APPEND `      rparenNoSpace,` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    ), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const swit = ver("v740sp02" /* v740sp02 */, seq(` TO lt_js.
  APPEND `      "SWITCH",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      SwitchBody,` TO lt_js.
  APPEND `      rparenNoSpace,` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    ), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const value = ver("v740sp02" /* v740sp02 */, seq(` TO lt_js.
  APPEND `      "VALUE",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      ValueBody,` TO lt_js.
  APPEND `      rparenNoSpace,` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    ), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const cond = ver("v740sp02" /* v740sp02 */, seq(` TO lt_js.
  APPEND `      "COND",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      CondBody,` TO lt_js.
  APPEND `      rparenNoSpace,` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    ), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const reff = ver("v740sp02" /* v740sp02 */, seq(` TO lt_js.
  APPEND `      "REF",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      _Source,` TO lt_js.
  APPEND `      optPrio("OPTIONAL"),` TO lt_js.
  APPEND `      rparen3` TO lt_js.
  APPEND `    ), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const exact = ver("v740sp02" /* v740sp02 */, seq(` TO lt_js.
  APPEND `      "EXACT",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      _Source,` TO lt_js.
  APPEND `      rparen3,` TO lt_js.
  APPEND `      optPrio(after)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const filter = ver(` TO lt_js.
  APPEND `      "v740sp08" /* v740sp08 */,` TO lt_js.
  APPEND `      seq(` TO lt_js.
  APPEND `        "FILTER",` TO lt_js.
  APPEND `        TypeNameOrInfer,` TO lt_js.
  APPEND `        tok(ParenLeftW),` TO lt_js.
  APPEND `        FilterBody,` TO lt_js.
  APPEND `        rparen3` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      "open-abap" /* OpenABAP */` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const reduce = ver(` TO lt_js.
  APPEND `      "v740sp08" /* v740sp08 */,` TO lt_js.
  APPEND `      seq(` TO lt_js.
  APPEND `        "REDUCE",` TO lt_js.
  APPEND `        TypeNameOrInfer,` TO lt_js.
  APPEND `        tok(ParenLeftW),` TO lt_js.
  APPEND `        ReduceBody,` TO lt_js.
  APPEND `        rparen3,` TO lt_js.
  APPEND `        optPrio(after)` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      "open-abap" /* OpenABAP */` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const prefix1 = altPrio(tok(WDashW), tok(WPlusW));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      starPrio(prefix1),` TO lt_js.
  APPEND `      altPrio(filter, reff, corr, conv, value, cond, exact, swit, reduce, old)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/dynamic.ts` TO lt_js.
  APPEND `var Dynamic = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      altPrio(tok(WParenLeft), tok(ParenLeft)),` TO lt_js.
  APPEND `      altPrio(FieldChain, Constant),` TO lt_js.
  APPEND `      altPrio(tok(ParenRightW), tok(ParenRight))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field.ts` TO lt_js.
  APPEND `var Field = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[&_!?]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?#]*(~\w+)?$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_source3.ts` TO lt_js.
  APPEND `var SimpleSource3 = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(Constant, TextElement, FieldChain);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/assign_source.ts` TO lt_js.
  APPEND `var AssignSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const component = seq(` TO lt_js.
  APPEND `      "COMPONENT",` TO lt_js.
  APPEND `      alt(SimpleSource3, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */)),` TO lt_js.
  APPEND `      "OF STRUCTURE",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const tableField = seq("TABLE FIELD", alt(Source, Dynamic));` TO lt_js.
  APPEND `    const arrow = alt(tok(InstanceArrow), tok(StaticArrow));` TO lt_js.
  APPEND `    const source = alt(` TO lt_js.
  APPEND `      seq(Source, opt(seq(arrow, Dynamic))),` TO lt_js.
  APPEND `      component,` TO lt_js.
  APPEND `      tableField,` TO lt_js.
  APPEND `      seq(Dynamic, opt(seq(arrow, alt(Field, Dynamic))))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return source;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/association_name.ts` TO lt_js.
  APPEND `var AssociationName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^(\\_[\w]+)+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/attribute_name.ts` TO lt_js.
  APPEND `var AttributeName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^(\/\w+\/)?(?!\*)[\w\d_\*\~%]+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/behavior_definition_name.ts` TO lt_js.
  APPEND `var BehaviorDefinitionName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^((\w*\/\w+\/)|(\w*\/\w+\/)?[\w\*$%]+)$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/block_name.ts` TO lt_js.
  APPEND `var BlockName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(optPrio(tok(WDash)), regex(/^[\w%\$\*]+$/), starPrio(seq(tok(Dash), regex(/^[\w%\$\*]+$/))));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/integer.ts` TO lt_js.
  APPEND `var Integer = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const modifier = optPrio(altPrio(tok(WDash), tok(WDashW), tok(WPlus)));` TO lt_js.
  APPEND `    return seq(modifier, regex(/^\d+$/));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/call_transformation_options.ts` TO lt_js.
  APPEND `var CallTransformationOptions = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = seq(alt(Field, Integer), "=", Source);` TO lt_js.
  APPEND `    return plus(field);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/call_transformation_parameters.ts` TO lt_js.
  APPEND `var CallTransformationParameters = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = seq(alt(Field, Integer), "=", SimpleSource3);` TO lt_js.
  APPEND `    return alt(plus(field), Dynamic);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/let.ts` TO lt_js.
  APPEND `var Let = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("LET", plusPrio(InlineFieldDefinition), "IN");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/cast.ts` TO lt_js.
  APPEND `var Cast = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const rparen3 = altPrio(tok(WParenRightW), tok(WParenRight));` TO lt_js.
  APPEND `    const cast = seq("CAST", TypeNameOrInfer, tok(ParenLeftW), optPrio(Let), Source, rparen3, opt(Dereference));` TO lt_js.
  APPEND `    return ver("v740sp02" /* v740sp02 */, cast, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/class_final.ts` TO lt_js.
  APPEND `var ClassFinal = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return str("FINAL");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/class_name.ts` TO lt_js.
  APPEND `var ClassName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^!?\w*(\/\w{3,}\/)?\w+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/class_friends.ts` TO lt_js.
  APPEND `var ClassFriends = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(optPrio("GLOBAL"), "FRIENDS", plus(ClassName));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/class_global.ts` TO lt_js.
  APPEND `var ClassGlobal = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return str("PUBLIC");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/color.ts` TO lt_js.
  APPEND `var Color = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const eq = seq("=", Source);` TO lt_js.
  APPEND `    const integers = altPrio("1", "2", "3", "4", "5", "6", "7");` TO lt_js.
  APPEND `    const texts = altPrio(` TO lt_js.
  APPEND `      "COL_BACKGROUND",` TO lt_js.
  APPEND `      "COL_HEADING",` TO lt_js.
  APPEND `      "COL_NORMAL",` TO lt_js.
  APPEND `      "COL_TOTAL",` TO lt_js.
  APPEND `      "COL_KEY",` TO lt_js.
  APPEND `      "COL_POSITIVE",` TO lt_js.
  APPEND `      "COL_NEGATIVE",` TO lt_js.
  APPEND `      "COL_GROUP"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const value = alt(eq, altPrio("ON", "OFF", "COLOR OFF", altPrio(integers, texts)));` TO lt_js.
  APPEND `    const toggle = altPrio("ON", "OFF");` TO lt_js.
  APPEND `    return seq("COLOR", opt(seq(value, opt(toggle))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/compare_operator.ts` TO lt_js.
  APPEND `var CompareOperator = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const operator = altPrio(` TO lt_js.
  APPEND `      "=",` TO lt_js.
  APPEND `      "<>",` TO lt_js.
  APPEND `      "><",` TO lt_js.
  APPEND `      "<",` TO lt_js.
  APPEND `      ">",` TO lt_js.
  APPEND `      "<=",` TO lt_js.
  APPEND `      ">=",` TO lt_js.
  APPEND `      "=>",` TO lt_js.
  APPEND `      "=<",` TO lt_js.
  APPEND `      "CA",` TO lt_js.
  APPEND `      "CO",` TO lt_js.
  APPEND `      "CP",` TO lt_js.
  APPEND `      "EQ",` TO lt_js.
  APPEND `      "NE",` TO lt_js.
  APPEND `      "CN",` TO lt_js.
  APPEND `      "GE",` TO lt_js.
  APPEND `      "GT",` TO lt_js.
  APPEND `      "LT",` TO lt_js.
  APPEND `      "LE",` TO lt_js.
  APPEND `      "CS",` TO lt_js.
  APPEND `      "NS",` TO lt_js.
  APPEND `      "NA",` TO lt_js.
  APPEND `      "NP",` TO lt_js.
  APPEND `      "BYTE-CO",` TO lt_js.
  APPEND `      "BYTE-CA",` TO lt_js.
  APPEND `      "BYTE-CS",` TO lt_js.
  APPEND `      "BYTE-CN",` TO lt_js.
  APPEND `      "BYTE-NA",` TO lt_js.
  APPEND `      "BYTE-NS",` TO lt_js.
  APPEND `      "O",` TO lt_js.
  APPEND `      // hex comparison operator` TO lt_js.
  APPEND `      "Z",` TO lt_js.
  APPEND `      // hex comparison operator` TO lt_js.
  APPEND `      "M"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return operator;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/compare.ts` TO lt_js.
  APPEND `var Compare = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const val = altPrio(FieldSub, Constant);` TO lt_js.
  APPEND `    const list = seq(` TO lt_js.
  APPEND `      tok(WParenLeft),` TO lt_js.
  APPEND `      val,` TO lt_js.
  APPEND `      plus(seq(",", val)),` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const inn = seq(optPrio("NOT"), "IN", altPrio(Source, list));` TO lt_js.
  APPEND `    const sopt = seq(` TO lt_js.
  APPEND `      "IS",` TO lt_js.
  APPEND `      optPrio("NOT"),` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        "SUPPLIED",` TO lt_js.
  APPEND `        "BOUND",` TO lt_js.
  APPEND `        ver("v750" /* v750 */, seq("INSTANCE OF", ClassName), "open-abap" /* OpenABAP */),` TO lt_js.
  APPEND `        "REQUESTED",` TO lt_js.
  APPEND `        "INITIAL"` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const between = seq(optPrio("NOT"), "BETWEEN", Source, "AND", Source);` TO lt_js.
  APPEND `    const predicate = ver("v740sp08" /* v740sp08 */, MethodCallChain, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const rett = seq(Source, altPrio(seq(CompareOperator, Source), inn, between, sopt));` TO lt_js.
  APPEND `    const fsassign = seq(SourceFieldSymbolChain, "IS", optPrio("NOT"), "ASSIGNED");` TO lt_js.
  APPEND `    const ret = seq(opt("NOT"), altPrio(rett, predicate, fsassign));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_chain_simple.ts` TO lt_js.
  APPEND `var ComponentChainSimple = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const chain = seq(` TO lt_js.
  APPEND `      ComponentName,` TO lt_js.
  APPEND `      starPrio(seq(ArrowOrDash, ComponentName))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(chain, optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_chain.ts` TO lt_js.
  APPEND `var ComponentChain = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const chain = seq(` TO lt_js.
  APPEND `      ComponentName,` TO lt_js.
  APPEND `      star(altPrio(seq(ArrowOrDash, altPrio("*", ComponentName)), TableExpression))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(chain, optPrio(TableBody), optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_compare_simple.ts` TO lt_js.
  APPEND `var ComponentCompareSimple = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const source = altPrio(ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */), SimpleSource4);` TO lt_js.
  APPEND `    const ret = seq(altPrio(ComponentChainSimple, Dynamic), "=", source);` TO lt_js.
  APPEND `    return plus(ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_compare_single.ts` TO lt_js.
  APPEND `var ComponentCompareSingle = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(altPrio(ComponentChainSimple, Dynamic), "=", Source);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_compare.ts` TO lt_js.
  APPEND `var ComponentCompare = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const val = alt(FieldSub, Constant);` TO lt_js.
  APPEND `    const list = seq(` TO lt_js.
  APPEND `      tok(WParenLeft),` TO lt_js.
  APPEND `      val,` TO lt_js.
  APPEND `      plus(seq(",", val)),` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const inn = seq(opt("NOT"), "IN", altPrio(Source, list));` TO lt_js.
  APPEND `    const sopt = seq(` TO lt_js.
  APPEND `      "IS",` TO lt_js.
  APPEND `      opt("NOT"),` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        "SUPPLIED",` TO lt_js.
  APPEND `        "BOUND",` TO lt_js.
  APPEND `        ver("v750" /* v750 */, seq("INSTANCE OF", Source)),` TO lt_js.
  APPEND `        "REQUESTED",` TO lt_js.
  APPEND `        "ASSIGNED",` TO lt_js.
  APPEND `        "INITIAL"` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const between = seq(opt("NOT"), "BETWEEN", Source, "AND", Source);` TO lt_js.
  APPEND `    const rett = seq(ComponentChainSimple, altPrio(seq(CompareOperator, Source), inn, between, sopt));` TO lt_js.
  APPEND `    const ret = seq(opt("NOT"), rett);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_cond_sub.ts` TO lt_js.
  APPEND `var ComponentCondSub = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const another = seq(` TO lt_js.
  APPEND `      opt("NOT"),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      ComponentCond,` TO lt_js.
  APPEND `      altPrio(tok(WParenRightW), tok(ParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return another;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_cond.ts` TO lt_js.
  APPEND `var ComponentCond = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const operator = alt("AND", "OR");` TO lt_js.
  APPEND `    const cnd = alt(ComponentCompare, ComponentCondSub);` TO lt_js.
  APPEND `    const ret = seq(cnd, star(seq(operator, cnd)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/component_name.ts` TO lt_js.
  APPEND `var ComponentName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[\/\w\d_%$\*\~]+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/concatenated_constant.ts` TO lt_js.
  APPEND `var ConcatenatedConstant = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const str2 = seq(regex(/^``.*``$/), plusPrio(seq("&", regex(/^``.*``$/))));` TO lt_js.
  APPEND `    const char = seq(regex(/^'.*'$/), plusPrio(seq("&", regex(/^'.*'$/))));` TO lt_js.
  APPEND `    return altPrio(str2, char);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/cond_body.ts` TO lt_js.
  APPEND `var CondBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const when = seq("WHEN", altPrio(Cond, Source), "THEN", altPrio(Throw, Source));` TO lt_js.
  APPEND `    const elsee = seq("ELSE", altPrio(Throw, Source));` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      optPrio(Let),` TO lt_js.
  APPEND `      plusPrio(when),` TO lt_js.
  APPEND `      optPrio(elsee)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/cond_sub.ts` TO lt_js.
  APPEND `var CondSub = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const another = seq(` TO lt_js.
  APPEND `      optPrio("NOT"),` TO lt_js.
  APPEND `      altPrio(tok(WParenLeftW), tok(WParenLeft)),` TO lt_js.
  APPEND `      Cond,` TO lt_js.
  APPEND `      altPrio(tok(WParenRightW), tok(ParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return another;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/cond.ts` TO lt_js.
  APPEND `var Cond = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const operator = altPrio("AND", "OR", ver("v702" /* v702 */, "EQUIV"));` TO lt_js.
  APPEND `    const cnd = altPrio(Compare, CondSub);` TO lt_js.
  APPEND `    const ret = seq(cnd, starPrio(seq(operator, cnd)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/constant_field_length.ts` TO lt_js.
  APPEND `var ConstantFieldLength = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const length = seq(` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      altPrio(Integer, SimpleFieldChain),` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return length;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/constant_string.ts` TO lt_js.
  APPEND `var ConstantString = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^('.*')|(``.*``)$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/constant.ts` TO lt_js.
  APPEND `var Constant = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(` TO lt_js.
  APPEND `      TextElementString,` TO lt_js.
  APPEND `      ConcatenatedConstant,` TO lt_js.
  APPEND `      ConstantString,` TO lt_js.
  APPEND `      Integer` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/conv_body.ts` TO lt_js.
  APPEND `var ConvBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(optPrio(Let), Source);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/corresponding_body_base.ts` TO lt_js.
  APPEND `var CorrespondingBodyBase = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("BASE", tok(WParenLeftW), Source, tok(WParenRightW));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/corresponding_body_mapping.ts` TO lt_js.
  APPEND `var CorrespondingBodyMapping = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const mapping = seq("MAPPING", plus(seq(ComponentName, "=", ComponentChain)));` TO lt_js.
  APPEND `    return mapping;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/corresponding_body.ts` TO lt_js.
  APPEND `var CorrespondingBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const discarding = ver("v751" /* v751 */, "DISCARDING DUPLICATES");` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      optPrio("DEEP"),` TO lt_js.
  APPEND `      optPrio(CorrespondingBodyBase),` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio(discarding),` TO lt_js.
  APPEND `      optPrio(CorrespondingBodyMapping),` TO lt_js.
  APPEND `      optPrio("CHANGING CONTROL"),` TO lt_js.
  APPEND `      optPrio(seq("MAPPING FROM ENTITY", optPrio("USING CONTROL"))),` TO lt_js.
  APPEND `      // todo, version something?` TO lt_js.
  APPEND `      optPrio(seq("EXCEPT", alt(plus(Field), "*")))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/data_definition.ts` TO lt_js.
  APPEND `var DataDefinition = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const simple = opt(per(` TO lt_js.
  APPEND `      "READ-ONLY",` TO lt_js.
  APPEND `      Type,` TO lt_js.
  APPEND `      Length,` TO lt_js.
  APPEND `      Decimals,` TO lt_js.
  APPEND `      Value` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const table = seq(TypeTable, optPrio("READ-ONLY"));` TO lt_js.
  APPEND `    const boxed = ver("v702" /* v702 */, "BOXED");` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      DefinitionName,` TO lt_js.
  APPEND `      optPrio(ConstantFieldLength),` TO lt_js.
  APPEND `      alt(simple, table, TypeStructure),` TO lt_js.
  APPEND `      optPrio(boxed)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/database_connection.ts` TO lt_js.
  APPEND `var DatabaseConnection = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const name = regex(/[\w\/]+/);` TO lt_js.
  APPEND `    return seq("CONNECTION", altPrio(name, Dynamic));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/database_table.ts` TO lt_js.
  APPEND `var DatabaseTable = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(Dynamic, regex(/^\*?(\/\w+\/)?\w+$/));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/decimals.ts` TO lt_js.
  APPEND `var Decimals = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq("DECIMALS", Integer);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/default.ts` TO lt_js.
  APPEND `var Default = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const def = seq("DEFAULT", altPrio(TextElement, Constant, FieldChain));` TO lt_js.
  APPEND `    return def;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/definition_name.ts` TO lt_js.
  APPEND `var DefinitionName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const r = regex(/^&|&?((\w*\/\w+\/)|(\w*\/\w+\/)?[\w\*$%\?#]+)$/);` TO lt_js.
  APPEND `    return seq(r, starPrio(seq(tok(Dash), optPrio(r))), optPrio(tok(DashW)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/destination.ts` TO lt_js.
  APPEND `var Destination = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("DESTINATION", optPrio("IN GROUP"), altPrio("DEFAULT", Source));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/entity_association.ts` TO lt_js.
  APPEND `var EntityAssociation = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[\/\w]+(\\_|\\\\)[\/\_\w\\~]+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/event_handler.ts` TO lt_js.
  APPEND `var EventHandler = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const event = seq(` TO lt_js.
  APPEND `      "FOR EVENT",` TO lt_js.
  APPEND `      EventName,` TO lt_js.
  APPEND `      "OF",` TO lt_js.
  APPEND `      ClassName,` TO lt_js.
  APPEND `      optPrio(seq("IMPORTING", plusPrio(MethodParamName)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return event;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/event_name.ts` TO lt_js.
  APPEND `var EventName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?#]*(~\w+)?$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/exception_name.ts` TO lt_js.
  APPEND `var ExceptionName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(Field, starPrio(seq(tok(Dash), Field)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_all.ts` TO lt_js.
  APPEND `var FieldAll = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^&?\*?(\/\w+\/)?[\w\*\$]+(~\w+)?$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_length.ts` TO lt_js.
  APPEND `var FieldLength = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const normal = seq(` TO lt_js.
  APPEND `      optPrio(tok(Plus)),` TO lt_js.
  APPEND `      altPrio(regex(/^\d+$/), SimpleFieldChain2)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const length = seq(` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      optPrio(altPrio(normal, "*")),` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return length;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_sub.ts` TO lt_js.
  APPEND `var FieldSub = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      regex(/^\*?!?&?(\/\w+\/)?[a-zA-Z_%$\?][\w%$\$\*]*$/),` TO lt_js.
  APPEND `      starPrio(seq(tok(Dash), regex(/^[\w%$\$\*]+$/))),` TO lt_js.
  APPEND `      opt(FieldLength),` TO lt_js.
  APPEND `      opt(TableBody)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_assignment.ts` TO lt_js.
  APPEND `var FieldAssignment = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(FieldSub, "=", Source);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_chain.ts` TO lt_js.
  APPEND `var FieldChain = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const attr = seq(tok(InstanceArrow), AttributeName);` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), optPrio(ComponentName));` TO lt_js.
  APPEND `    const chain = star(altPrio(Dereference, attr, comp, TableExpression));` TO lt_js.
  APPEND `    const clas = seq(ClassName, tok(StaticArrow), AttributeName);` TO lt_js.
  APPEND `    const start = altPrio(clas, SourceField, SourceFieldSymbol);` TO lt_js.
  APPEND `    const after = altPrio(tok(DashW), seq(optPrio(TableBody), optPrio(FieldOffset), optPrio(FieldLength)));` TO lt_js.
  APPEND `    const ret = seq(start, chain, after);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_offset.ts` TO lt_js.
  APPEND `var FieldOffset = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const offset = seq(` TO lt_js.
  APPEND `      tok(Plus),` TO lt_js.
  APPEND `      optPrio(altPrio(regex(/^\d+$/), SimpleFieldChain2))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return offset;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/field_symbol.ts` TO lt_js.
  APPEND `var FieldSymbol = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const dashes = seq(regex(/^<[\w\/%$\*]+$/), tok(Dash), regex(/^[\w\/%$\*]+>$/));` TO lt_js.
  APPEND `    return altPrio(regex(/^<[\w\/%$\*\?]+>$/), dashes);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/filter_body.ts` TO lt_js.
  APPEND `var FilterBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const inn = seq("IN", Source);` TO lt_js.
  APPEND `    const using = seq("USING KEY", SimpleName);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio("EXCEPT"),` TO lt_js.
  APPEND `      optPrio(per(inn, using)),` TO lt_js.
  APPEND `      seq("WHERE", ComponentCond)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/final_methods.ts` TO lt_js.
  APPEND `var FinalMethods = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("FINAL METHODS", plus(MethodName));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/find_type.ts` TO lt_js.
  APPEND `var FindType = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return opt(alt("REGEX", "SUBSTRING", ver("v755" /* v755 */, "PCRE", "open-abap" /* OpenABAP */)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/for.ts` TO lt_js.
  APPEND `var For = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const where = seq("WHERE (", ComponentCond, ")");` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const to = seq("TO", Source);` TO lt_js.
  APPEND `    const inn = seq(InlineLoopDefinition, optPrio(from), optPrio(to), optPrio(where));` TO lt_js.
  APPEND `    const then = seq("THEN", Source);` TO lt_js.
  APPEND `    const whil = seq(altPrio("UNTIL", "WHILE"), Cond);` TO lt_js.
  APPEND `    const itera = seq(InlineFieldDefinition, opt(then), whil);` TO lt_js.
  APPEND `    const groupBy = seq(` TO lt_js.
  APPEND `      "GROUP BY",` TO lt_js.
  APPEND `      alt(FieldChain, seq("(", plus(LoopGroupByComponent), ")")),` TO lt_js.
  APPEND `      opt(seq(alt("ASCENDING", "DESCENDING"), opt("AS TEXT"))),` TO lt_js.
  APPEND `      opt("WITHOUT MEMBERS")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const t = alt(TargetField, TargetFieldSymbol);` TO lt_js.
  APPEND `    const groups = ver("v740sp08" /* v740sp08 */, seq("GROUPS", t, "OF", t, "IN", Source, optPrio(groupBy)));` TO lt_js.
  APPEND `    const f = seq("FOR", alt(itera, inn, groups), optPrio(Let));` TO lt_js.
  APPEND `    return ver("v740sp05" /* v740sp05 */, f, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_changing.ts` TO lt_js.
  APPEND `var FormChanging = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("CHANGING", plus(FormParam));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_name.ts` TO lt_js.
  APPEND `var FormName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      regex(/^!?[\w%$\*\/\?<>]+$/),` TO lt_js.
  APPEND `      starPrio(seq(tok(Dash), optPrio(regex(/^\w+$/)))),` TO lt_js.
  APPEND `      optPrio(tok(DashW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_param_name.ts` TO lt_js.
  APPEND `var FormParamName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const r = regex(/^[\w$&\*%\/]+$/);` TO lt_js.
  APPEND `    return seq(r, starPrio(seq(tok(Dash), r)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_param_type.ts` TO lt_js.
  APPEND `var FormParamType = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const def = seq("DEFAULT", alt(Constant, FieldChain));` TO lt_js.
  APPEND `    const table = seq(` TO lt_js.
  APPEND `      alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY"),` TO lt_js.
  APPEND `      "TABLE"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const tabseq = seq(table, optPrio(seq("OF", TypeName)));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      optPrio(alt("REF TO", "LINE OF")),` TO lt_js.
  APPEND `      TypeName,` TO lt_js.
  APPEND `      opt(def)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const like = seq(` TO lt_js.
  APPEND `      "LIKE",` TO lt_js.
  APPEND `      optPrio(alt("REF TO", "LINE OF")),` TO lt_js.
  APPEND `      FieldChain` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return alt(seq("TYPE", altPrio(tabseq, ret)), like);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_param.ts` TO lt_js.
  APPEND `var FormParam = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const stru = seq("STRUCTURE", SimpleFieldChain);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      altPrio(PassByValue, FormParamName),` TO lt_js.
  APPEND `      optPrio(altPrio(FormParamType, stru))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_raising.ts` TO lt_js.
  APPEND `var FormRaising = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const resume = seq(` TO lt_js.
  APPEND `      "RESUMABLE",` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      ClassName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const raising = seq("RAISING", plus(alt(ClassName, resume)));` TO lt_js.
  APPEND `    return raising;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_tables.ts` TO lt_js.
  APPEND `var FormTables = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("TABLES", plus(FormParam));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/form_using.ts` TO lt_js.
  APPEND `var FormUsing = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("USING", plus(FormParam));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/fstarget.ts` TO lt_js.
  APPEND `var FSTarget = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(InlineFS, TargetFieldSymbol);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_name.ts` TO lt_js.
  APPEND `var ParameterName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?]*(~\w+)?$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/function_exporting_parameter.ts` TO lt_js.
  APPEND `var FunctionExportingParameter = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const s = altPrio(ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */), SimpleSource3);` TO lt_js.
  APPEND `    const exp = seq(ParameterName, "=", s);` TO lt_js.
  APPEND `    return exp;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/function_exporting.ts` TO lt_js.
  APPEND `var FunctionExporting = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const exp = plusPrio(FunctionExportingParameter);` TO lt_js.
  APPEND `    return exp;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/function_name.ts` TO lt_js.
  APPEND `var FunctionName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(Constant, FieldChain);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/function_parameters.ts` TO lt_js.
  APPEND `var FunctionParameters = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", FunctionExporting);` TO lt_js.
  APPEND `    const importing = seq("IMPORTING", ParameterListT);` TO lt_js.
  APPEND `    const changing = seq("CHANGING", ParameterListT);` TO lt_js.
  APPEND `    const tables = seq("TABLES", ParameterListT);` TO lt_js.
  APPEND `    const exceptions = seq("EXCEPTIONS", ParameterListExceptions);` TO lt_js.
  APPEND `    const long = seq(` TO lt_js.
  APPEND `      optPrio(exporting),` TO lt_js.
  APPEND `      optPrio(importing),` TO lt_js.
  APPEND `      optPrio(tables),` TO lt_js.
  APPEND `      optPrio(changing),` TO lt_js.
  APPEND `      optPrio(exceptions)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return long;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/include_name.ts` TO lt_js.
  APPEND `var IncludeName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(regex(/^<?(\/\w+\/)?[\w%#]+(~\w+)?>?$/), starPrio(seq(tok(Dash), optPrio(regex(/^\w+$/)))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/inline_field_definition.ts` TO lt_js.
  APPEND `var InlineFieldDefinition = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio(` TO lt_js.
  APPEND `      seq(Field, "=", Source),` TO lt_js.
  APPEND `      seq(Field, "TYPE", TypeName)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/inline_field.ts` TO lt_js.
  APPEND `var InlineField = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(Field, starPrio(seq(tok(Dash), FieldAll)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/inline_loop_definition.ts` TO lt_js.
  APPEND `var InlineLoopDefinition = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const index = seq("INDEX INTO", TargetField);` TO lt_js.
  APPEND `    const key = seq("USING KEY", SimpleName);` TO lt_js.
  APPEND `    return seq(altPrio(TargetFieldSymbol, TargetField), "IN", opt("GROUP"), Source, optPrio(key), optPrio(index));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/inlinedata.ts` TO lt_js.
  APPEND `var InlineData = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const right = altPrio(tok(ParenRightW), tok(ParenRight));` TO lt_js.
  APPEND `    const left = tok(ParenLeft);` TO lt_js.
  APPEND `    const data = seq("DATA", left, TargetField, right);` TO lt_js.
  APPEND `    const final = seq("FINAL", left, TargetField, right);` TO lt_js.
  APPEND `    return altPrio(ver("v740sp02" /* v740sp02 */, data, "open-abap" /* OpenABAP */), ver("v757" /* v757 */, final, "open-abap" /* OpenABAP */));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/inlinefs.ts` TO lt_js.
  APPEND `var InlineFS = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const right = tok(ParenRightW);` TO lt_js.
  APPEND `    const left = tok(ParenLeft);` TO lt_js.
  APPEND `    const fs = seq("FIELD-SYMBOL", left, TargetFieldSymbol, right);` TO lt_js.
  APPEND `    return ver("v740sp02" /* v740sp02 */, fs, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/interface_name.ts` TO lt_js.
  APPEND `var InterfaceName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^\w*(\/\w{3,}\/)?\w+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/kernel_id.ts` TO lt_js.
  APPEND `var KernelId = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = seq("ID", Source, "FIELD", Source);` TO lt_js.
  APPEND `    return field;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/language.ts` TO lt_js.
  APPEND `var Language = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("LANGUAGE", altPrio("SQLSCRIPT", "SQL", "GRAPH"));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/length.ts` TO lt_js.
  APPEND `var Length = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq("LENGTH", altPrio(Integer, ConstantString, SimpleFieldChain));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/lob_handle.ts` TO lt_js.
  APPEND `var LOBHandle = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("WRITER FOR COLUMNS", Field);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/loop_group_by_component.ts` TO lt_js.
  APPEND `var LoopGroupByComponent = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const groupSize = seq(ComponentName, "=", "GROUP SIZE");` TO lt_js.
  APPEND `    const groupIndex = seq(ComponentName, "=", "GROUP INDEX");` TO lt_js.
  APPEND `    const components = alt(ComponentCompareSingle, groupSize, groupIndex);` TO lt_js.
  APPEND `    return components;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/target.ts` TO lt_js.
  APPEND `var Target = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const attr = seq(tok(InstanceArrow), AttributeName);` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), ComponentName);` TO lt_js.
  APPEND `    const something = starPrio(altPrio(Dereference, attr, comp, TableExpression));` TO lt_js.
  APPEND `    const clas = seq(ClassName, tok(StaticArrow), AttributeName);` TO lt_js.
  APPEND `    const start = altPrio(Cast, NewObject, clas, TargetField, TargetFieldSymbol);` TO lt_js.
  APPEND `    const fields = seq(optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    const optional = altPrio(TableBody, fields);` TO lt_js.
  APPEND `    return altPrio(InlineData, InlineFS, seq(start, something, optional));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/loop_group_by_target.ts` TO lt_js.
  APPEND `var LoopGroupByTarget = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const into = seq(opt("REFERENCE"), "INTO", Target);` TO lt_js.
  APPEND `    const assigning = seq("ASSIGNING", FSTarget);` TO lt_js.
  APPEND `    return optPrio(alt(into, assigning));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/loop_group_by.ts` TO lt_js.
  APPEND `var LoopGroupBy = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const components = seq(tok(WParenLeftW), plus(LoopGroupByComponent), tok(WParenRightW));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      alt(Source, components),` TO lt_js.
  APPEND `      optPrio("ASCENDING"),` TO lt_js.
  APPEND `      optPrio("WITHOUT MEMBERS"),` TO lt_js.
  APPEND `      LoopGroupByTarget` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/loop_source.ts` TO lt_js.
  APPEND `var LoopSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return alt(SimpleSource2, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/loop_target.ts` TO lt_js.
  APPEND `var LoopTarget = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const into = seq(opt("REFERENCE"), "INTO", Target);` TO lt_js.
  APPEND `    const assigning = seq("ASSIGNING", FSTarget);` TO lt_js.
  APPEND `    const target = alt(` TO lt_js.
  APPEND `      seq(` TO lt_js.
  APPEND `        alt(into, assigning),` TO lt_js.
  APPEND `        optPrio("CASTING")` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      "TRANSPORTING NO FIELDS"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return target;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/macro_name.ts` TO lt_js.
  APPEND `var MacroName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const r = /^(\/\w+\/)?[\w\*%\?$&]+>?$/;` TO lt_js.
  APPEND `    return seq(regex(r), starPrio(seq(tok(Dash), regex(r))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/message_class.ts` TO lt_js.
  APPEND `var MessageClass = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(regex(/^>?[\w\/]+#?@?\/?!?&?>?\$?\??<?§?~?$/), starPrio(tok(Plus)), starPrio(tok(PlusW)), starPrio(seq(tok(Dash), optPrio(regex(/^\w+$/)))), optP` &&
    `rio(tok(DashW)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/message_number.ts` TO lt_js.
  APPEND `var MessageNumber = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^\d\d\d$/i);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/message_source_source.ts` TO lt_js.
  APPEND `var MessageSourceSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return alt(ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */), SimpleSource3);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/message_source.ts` TO lt_js.
  APPEND `var MessageSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const msgid = seq(tok(ParenLeft), MessageClass, tok(ParenRightW));` TO lt_js.
  APPEND `    const simple = seq(MessageTypeAndNumber, opt(msgid));` TO lt_js.
  APPEND `    const mess1 = seq("ID", Source, "TYPE", Source, "NUMBER", altPrio(MessageNumber, Source));` TO lt_js.
  APPEND `    return altPrio(simple, mess1);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/message_type_and_number.ts` TO lt_js.
  APPEND `var MessageTypeAndNumber = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[iweaxs]\d\d\d$/i);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_call_param.ts` TO lt_js.
  APPEND `var MethodCallParam = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const param = alt(Source, ParameterListS, MethodParameters);` TO lt_js.
  APPEND `    const right1 = altPrio(tok(WParenRight), tok(WParenRightW), tok(ParenRight), tok(ParenRightW));` TO lt_js.
  APPEND `    const right2 = altPrio(tok(WParenRight), tok(WParenRightW));` TO lt_js.
  APPEND `    const ret = altPrio(` TO lt_js.
  APPEND `      seq(tok(ParenLeftW), param, right1),` TO lt_js.
  APPEND `      seq(tok(ParenLeft), param, right2),` TO lt_js.
  APPEND `      seq(tok(ParenLeft), ConstantString, altPrio(tok(ParenRight), tok(ParenRightW)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_call_body.ts` TO lt_js.
  APPEND `var MethodCallBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const dynamicPar = seq("PARAMETER-TABLE", Source);` TO lt_js.
  APPEND `    const dynamicExc = seq("EXCEPTION-TABLE", Source);` TO lt_js.
  APPEND `    const dynamic = seq(dynamicPar, optPrio(dynamicExc));` TO lt_js.
  APPEND `    return alt(MethodCallParam, MethodParameters, dynamic);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_call_chain.ts` TO lt_js.
  APPEND `var MethodCallChain = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const attr = seq(tok(InstanceArrow), AttributeName);` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), ComponentName);` TO lt_js.
  APPEND `    const fields = star(altPrio(attr, comp));` TO lt_js.
  APPEND `    const after = star(seq(fields, tok(InstanceArrow), MethodCall));` TO lt_js.
  APPEND `    const localVariable = seq(FieldChain, tok(InstanceArrow));` TO lt_js.
  APPEND `    const staticClass = seq(ClassName, tok(StaticArrow));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        seq(optPrio(altPrio(localVariable, staticClass)), MethodCall),` TO lt_js.
  APPEND `        NewObject,` TO lt_js.
  APPEND `        Cast` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      after` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_call.ts` TO lt_js.
  APPEND `var MethodCall = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(MethodName, MethodCallParam);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_def_changing.ts` TO lt_js.
  APPEND `var MethodDefChanging = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("CHANGING", plus(MethodParamOptional));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_def_exceptions.ts` TO lt_js.
  APPEND `var MethodDefExceptions = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const exceptions = seq("EXCEPTIONS", plusPrio(NamespaceSimpleName));` TO lt_js.
  APPEND `    return exceptions;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_def_exporting.ts` TO lt_js.
  APPEND `var MethodDefExporting = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("EXPORTING", plus(MethodParam));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_def_importing.ts` TO lt_js.
  APPEND `var MethodDefImporting = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = regex(/^!?(\/\w+\/)?\w+$/);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "IMPORTING",` TO lt_js.
  APPEND `      plus(MethodParamOptional),` TO lt_js.
  APPEND `      optPrio(seq("PREFERRED PARAMETER", field))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_def_raising.ts` TO lt_js.
  APPEND `var MethodDefRaising = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const resumable = seq(` TO lt_js.
  APPEND `      "RESUMABLE",` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      ClassName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const raising = seq("RAISING", plus(altPrio(resumable, ClassName)));` TO lt_js.
  APPEND `    return raising;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_def_returning.ts` TO lt_js.
  APPEND `var MethodDefReturning = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const value = seq(` TO lt_js.
  APPEND `      "VALUE",` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      MethodParamName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("RETURNING", value, TypeParam);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_param_name.ts` TO lt_js.
  APPEND `var MethodParamName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = regex(/^!?\w*(\/\w+\/)?\w+$/);` TO lt_js.
  APPEND `    return field;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_param_optional.ts` TO lt_js.
  APPEND `var MethodParamOptional = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(MethodParam, optPrio("OPTIONAL"));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_param.ts` TO lt_js.
  APPEND `var MethodParam = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ref = seq(` TO lt_js.
  APPEND `      "REFERENCE",` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      MethodParamName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const value = seq(` TO lt_js.
  APPEND `      "VALUE",` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      MethodParamName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const fieldsOrValue = seq(` TO lt_js.
  APPEND `      altPrio(value, ref, MethodParamName),` TO lt_js.
  APPEND `      TypeParam` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return fieldsOrValue;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_parameters.ts` TO lt_js.
  APPEND `var MethodParameters = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", ParameterListS);` TO lt_js.
  APPEND `    const importing = seq("IMPORTING", ParameterListT);` TO lt_js.
  APPEND `    const changing = seq("CHANGING", ParameterListT);` TO lt_js.
  APPEND `    const receiving = seq("RECEIVING", ParameterT);` TO lt_js.
  APPEND `    const exceptions = seq("EXCEPTIONS", ParameterListExceptions);` TO lt_js.
  APPEND `    const long = seq(` TO lt_js.
  APPEND `      optPrio(exporting),` TO lt_js.
  APPEND `      optPrio(importing),` TO lt_js.
  APPEND `      optPrio(changing),` TO lt_js.
  APPEND `      optPrio(receiving),` TO lt_js.
  APPEND `      optPrio(exceptions)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return long;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/method_source.ts` TO lt_js.
  APPEND `var MethodSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const afterArrow = alt(AttributeName, MethodCall, Dynamic);` TO lt_js.
  APPEND `    const arrow = altPrio(tok(InstanceArrow), tok(StaticArrow));` TO lt_js.
  APPEND `    const attr = seq(arrow, afterArrow);` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), ComponentName);` TO lt_js.
  APPEND `    const attrOrComp = altPrio(attr, comp);` TO lt_js.
  APPEND `    const staticClass = seq(ClassName, tok(StaticArrow));` TO lt_js.
  APPEND `    const clas = seq(staticClass, afterArrow);` TO lt_js.
  APPEND `    const start = seq(altPrio(clas, SourceField, SourceFieldSymbol, Dynamic), star(attrOrComp));` TO lt_js.
  APPEND `    return start;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/modif.ts` TO lt_js.
  APPEND `var Modif = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[\w\*]{1,3}$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/namespace_simple_name.ts` TO lt_js.
  APPEND `var NamespaceSimpleName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^!?((\w*\/\w+\/)|(\w*\/\w+\/)*[\w\*$%#]+)$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/new_object.ts` TO lt_js.
  APPEND `var NewObject = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const lines = plus(seq(tok(WParenLeftW), Source, tok(WParenRightW)));` TO lt_js.
  APPEND `    const linesFields = plus(seq(tok(WParenLeftW), plus(FieldAssignment), tok(WParenRightW)));` TO lt_js.
  APPEND `    const neww = seq(` TO lt_js.
  APPEND `      "NEW",` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      optPrio(alt(Source, ParameterListS, lines, linesFields)),` TO lt_js.
  APPEND `      ")"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v740sp02" /* v740sp02 */, neww, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/ole_exporting.ts` TO lt_js.
  APPEND `var OLEExporting = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const fields = seq(regex(/^[&_!#\*]?[\w\d\*%\$\?#]+$/), "=", Source);` TO lt_js.
  APPEND `    return seq("EXPORTING", plus(fields));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/or.ts` TO lt_js.
  APPEND `var Or = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("OR", Source);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_exception.ts` TO lt_js.
  APPEND `var ParameterException = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const name = altPrio("OTHERS", seq(ParameterName, tok(Dash), ComponentName), ParameterName);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      name,` TO lt_js.
  APPEND `      optPrio(seq(` TO lt_js.
  APPEND `        "=",` TO lt_js.
  APPEND `        altPrio(Integer, SimpleFieldChain),` TO lt_js.
  APPEND `        optPrio(seq("MESSAGE", Target))` TO lt_js.
  APPEND `      ))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_list_exceptions.ts` TO lt_js.
  APPEND `var ParameterListExceptions = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return plus(ParameterException);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_list_s.ts` TO lt_js.
  APPEND `var ParameterListS = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return plus(ParameterS);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_list_t.ts` TO lt_js.
  APPEND `var ParameterListT = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return plus(ParameterT);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_s.ts` TO lt_js.
  APPEND `var ParameterS = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(ParameterName, "=", Source);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/parameter_t.ts` TO lt_js.
  APPEND `var ParameterT = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(ParameterName, "=", Target);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/pass_by_value.ts` TO lt_js.
  APPEND `var PassByValue = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const value = seq(` TO lt_js.
  APPEND `      "VALUE",` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      FormParamName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return value;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/perform_changing.ts` TO lt_js.
  APPEND `var PerformChanging = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const changing = seq("CHANGING", plus(Target));` TO lt_js.
  APPEND `    return changing;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/perform_tables.ts` TO lt_js.
  APPEND `var PerformTables = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const tables = seq("TABLES", plus(Source));` TO lt_js.
  APPEND `    return tables;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/perform_using.ts` TO lt_js.
  APPEND `var PerformUsing = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const using = seq("USING", plus(Source));` TO lt_js.
  APPEND `    return using;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/provide_field_name.ts` TO lt_js.
  APPEND `var ProvideFieldName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(regex(/^(?!(?:FROM|BETWEEN|WHERE)$)(\/\w+\/)?(\w+~(\w+|\*)|\w+)$/i), optPrio(seq(tok(Dash), regex(/^\w+$/i))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/radio_group_name.ts` TO lt_js.
  APPEND `var RadioGroupName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[\w\d%]+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/raise_with.ts` TO lt_js.
  APPEND `var RaiseWith = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const wit = seq(` TO lt_js.
  APPEND `      SimpleSource1,` TO lt_js.
  APPEND `      opt(SimpleSource1),` TO lt_js.
  APPEND `      opt(SimpleSource1),` TO lt_js.
  APPEND `      opt(SimpleSource1)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const witComplex = seq(` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(Source),` TO lt_js.
  APPEND `      opt(Source),` TO lt_js.
  APPEND `      opt(Source)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("WITH", altPrio(witComplex, wit));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/read_table_target.ts` TO lt_js.
  APPEND `var ReadTableTarget = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const target = altPrio(` TO lt_js.
  APPEND `      seq("ASSIGNING", FSTarget),` TO lt_js.
  APPEND `      seq(optPrio("REFERENCE"), "INTO", Target),` TO lt_js.
  APPEND `      "TRANSPORTING NO FIELDS"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return target;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/receive_parameters.ts` TO lt_js.
  APPEND `var ReceiveParameters = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const importing = seq("IMPORTING", ParameterListT);` TO lt_js.
  APPEND `    const tables = seq("TABLES", ParameterListT);` TO lt_js.
  APPEND `    const changing = seq("CHANGING", ParameterListT);` TO lt_js.
  APPEND `    const exceptions = seq("EXCEPTIONS", opt(ParameterListExceptions), opt(Field));` TO lt_js.
  APPEND `    const long = seq(` TO lt_js.
  APPEND `      opt(importing),` TO lt_js.
  APPEND `      opt(changing),` TO lt_js.
  APPEND `      opt(tables),` TO lt_js.
  APPEND `      opt(exceptions)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return long;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/redefinition.ts` TO lt_js.
  APPEND `var Redefinition = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(opt("FINAL"), "REDEFINITION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/reduce_next.ts` TO lt_js.
  APPEND `var ReduceNext = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const calcAssign = ver(` TO lt_js.
  APPEND `      "v754" /* v754 */,` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        seq(tok(WPlus), "="),` TO lt_js.
  APPEND `        seq(tok(WDash), "="),` TO lt_js.
  APPEND `        "/=",` TO lt_js.
  APPEND `        "*=",` TO lt_js.
  APPEND `        "&&="` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const fields = seq(SimpleTarget, altPrio("=", calcAssign), Source);` TO lt_js.
  APPEND `    return seq("NEXT", plus(fields));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/reduce_body.ts` TO lt_js.
  APPEND `var ReduceBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const init = seq("INIT", plus(InlineFieldDefinition));` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      opt(Let),` TO lt_js.
  APPEND `      init,` TO lt_js.
  APPEND `      plus(For),` TO lt_js.
  APPEND `      ReduceNext` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/report_name.ts` TO lt_js.
  APPEND `var ReportName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(regex(/^[\w/$%&=]+$/), star(seq(tok(Dash), regex(/^\w+$/))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_field_name.ts` TO lt_js.
  APPEND `var SQLFieldName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^(?!(?:SINGLE|INTO|DISTINCT|AS|WHERE|FOR|HAVING|APPENDING|UP|FROM)$)(\/\w+\/)?(\*?\w+~(\/\w+\/)?(\w+|\*)|\w+)$/i);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_order_by.ts` TO lt_js.
  APPEND `var SQLOrderBy = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ding = alt("ASCENDING", "DESCENDING");` TO lt_js.
  APPEND `    const ofields = plus(seq(SQLFieldName, opt(ding), opt(",")));` TO lt_js.
  APPEND `    const order = seq("ORDER BY", altPrio("PRIMARY KEY", Dynamic, ofields));` TO lt_js.
  APPEND `    return order;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_alias_field.ts` TO lt_js.
  APPEND `var SQLAliasField = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(regex(/^(\/\w+\/)?\w+~(\/\w+\/)?\w+$/), starPrio(seq(tok(Dash), regex(/^\w+$/))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_cond.ts` TO lt_js.
  APPEND `var SQLCond = class _SQLCond extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const operator = altPrio("AND", "OR");` TO lt_js.
  APPEND `    const paren = seq(` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      _SQLCond,` TO lt_js.
  APPEND `      altPrio(tok(WParenRightW), tok(ParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const cnd = seq(optPrio("NOT"), altPrio(SQLCompare, paren));` TO lt_js.
  APPEND `    const ret = seq(cnd, starPrio(seq(operator, cnd)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_source.ts` TO lt_js.
  APPEND `var SQLSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));` TO lt_js.
  APPEND `    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleSource3, paren)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return altPrio(SQLAliasField, SimpleSource3, at);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_case.ts` TO lt_js.
  APPEND `var SQLCase = class _SQLCase extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const abap = seq(tok(WAt), SimpleFieldChain2);` TO lt_js.
  APPEND `    const field = altPrio(` TO lt_js.
  APPEND `      SQLAggregation,` TO lt_js.
  APPEND `      _SQLCase,` TO lt_js.
  APPEND `      SQLFunction,` TO lt_js.
  APPEND `      SQLPath,` TO lt_js.
  APPEND `      SQLFieldName,` TO lt_js.
  APPEND `      Constant` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const sub2 = seq(altPrio("+", "-", "*", "/", "&&"), optPrio(tok(WParenLeftW)), field, optPrio(tok(WParenRightW)));` TO lt_js.
  APPEND `    const sourc = altPrio(_SQLCase, SQLAggregation, SQLFunction, SQLFieldName, SQLSource, Constant);` TO lt_js.
  APPEND `    const val = altPrio(SQLCond, Constant, abap);` TO lt_js.
  APPEND `    const when = seq("WHEN", val, "THEN", sourc, starPrio(sub2));` TO lt_js.
  APPEND `    const els = seq("ELSE", sourc);` TO lt_js.
  APPEND `    return ver("v740sp05" /* v740sp05 */, seq("CASE", opt(altPrio(SQLFieldName, abap)), plusPrio(when), optPrio(els), "END"), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_function.ts` TO lt_js.
  APPEND `var SQLFunction = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const castTypes = altPrio(` TO lt_js.
  APPEND `      seq("CHAR", optPrio(seq(tok(ParenLeftW), Integer, tok(WParenRightW)))),` TO lt_js.
  APPEND `      seq("DEC", tok(ParenLeftW), Integer, ",", Integer, tok(WParenRightW)),` TO lt_js.
  APPEND `      seq("NUMC", optPrio(seq(tok(ParenLeftW), Integer, tok(WParenRightW)))),` TO lt_js.
  APPEND `      "DATS",` TO lt_js.
  APPEND `      "FLTP",` TO lt_js.
  APPEND `      "INT2",` TO lt_js.
  APPEND `      "INT4",` TO lt_js.
  APPEND `      "INT8"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const commaParam = seq(",", SQLFunctionInput);` TO lt_js.
  APPEND `    const abs = ver("v740sp05" /* v740sp05 */, seq(regex(/^abs$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const castInput = altPrio(SQLCase, SQLFunctionInput);` TO lt_js.
  APPEND `    const cast = ver("v750" /* v750 */, seq(regex(/^cast$/i), tok(ParenLeftW), castInput, "AS", castTypes, tok(WParenRightW)));` TO lt_js.
  APPEND `    const ceil = ver("v740sp05" /* v740sp05 */, seq(regex(/^ceil$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const coalesce = ver("v740sp05" /* v740sp05 */, seq(regex(/^coalesce$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, optPrio(commaParam), tok(WParenRigh` &&
    `tW)));` TO lt_js.
  APPEND `    const concat = ver("v750" /* v750 */, seq(regex(/^concat$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const div = ver("v740sp05" /* v740sp05 */, seq(regex(/^div$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const floor = ver("v740sp05" /* v740sp05 */, seq(regex(/^floor$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const length = ver("v750" /* v750 */, seq(regex(/^length$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const lower = ver("v751" /* v751 */, seq(regex(/^lower$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const mod = ver("v740sp05" /* v740sp05 */, seq(regex(/^mod$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const replace = ver("v750" /* v750 */, seq(regex(/^replace$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const round = ver("v750" /* v750 */, seq(regex(/^round$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const upper = ver("v751" /* v751 */, seq(regex(/^upper$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const uuid = ver("v754" /* v754 */, seq(regex(/^uuid$/i), tok(ParenLeftW), tok(WParenRightW)));` TO lt_js.
  APPEND `    const concat_with_space = ver("v751" /* v751 */, seq(regex(/^concat_with_space$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRig` &&
    `htW)));` TO lt_js.
  APPEND `    const substring = ver("v750" /* v750 */, seq(regex(/^substring$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const dats_is_valid = ver("v754" /* v754 */, seq(regex(/^dats_is_valid$/i), tok(ParenLeftW), SQLFunctionInput, tok(WParenRightW)));` TO lt_js.
  APPEND `    const dats_days_between = ver("v754" /* v754 */, seq(regex(/^dats_days_between$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const dats_add_days = ver("v754" /* v754 */, seq(regex(/^dats_add_days$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const dats_add_months = ver("v754" /* v754 */, seq(regex(/^dats_add_months$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const ltrim = ver("v750" /* v750 */, seq(regex(/^ltrim$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const rtrim = ver("v750" /* v750 */, seq(regex(/^rtrim$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const right = ver("v750" /* v750 */, seq(regex(/^right$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const left = ver("v751" /* v751 */, seq(regex(/^left$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    const division = ver("v751" /* v751 */, seq(regex(/^division$/i), tok(ParenLeftW), SQLFunctionInput, commaParam, commaParam, tok(WParenRightW)));` TO lt_js.
  APPEND `    return altPrio(` TO lt_js.
  APPEND `      uuid,` TO lt_js.
  APPEND `      abs,` TO lt_js.
  APPEND `      ceil,` TO lt_js.
  APPEND `      floor,` TO lt_js.
  APPEND `      cast,` TO lt_js.
  APPEND `      div,` TO lt_js.
  APPEND `      mod,` TO lt_js.
  APPEND `      coalesce,` TO lt_js.
  APPEND `      concat,` TO lt_js.
  APPEND `      replace,` TO lt_js.
  APPEND `      length,` TO lt_js.
  APPEND `      lower,` TO lt_js.
  APPEND `      upper,` TO lt_js.
  APPEND `      round,` TO lt_js.
  APPEND `      concat_with_space,` TO lt_js.
  APPEND `      ltrim,` TO lt_js.
  APPEND `      rtrim,` TO lt_js.
  APPEND `      right,` TO lt_js.
  APPEND `      left,` TO lt_js.
  APPEND `      substring,` TO lt_js.
  APPEND `      dats_is_valid,` TO lt_js.
  APPEND `      dats_days_between,` TO lt_js.
  APPEND `      dats_add_days,` TO lt_js.
  APPEND `      dats_add_months,` TO lt_js.
  APPEND `      division` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_function_input.ts` TO lt_js.
  APPEND `var SQLFunctionInput = class _SQLFunctionInput extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const hostParen = seq(tok(ParenLeftW), Source, tok(WParenRightW));` TO lt_js.
  APPEND `    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleSource3, hostParen)));` TO lt_js.
  APPEND `    const parenInput = seq("(", _SQLFunctionInput, ")");` TO lt_js.
  APPEND `    const param = altPrio(parenInput, SQLCase, SQLFunction, SQLAggregation, SQLFieldName, SQLAliasField, Constant, at);` TO lt_js.
  APPEND `    const operator = altPrio("+", "-", "*", "/", "&&");` TO lt_js.
  APPEND `    return seq(param, starPrio(seq(operator, param)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_over.ts` TO lt_js.
  APPEND `var lparen = tok(ParenLeftW);` TO lt_js.
  APPEND `var rparen = altPrio(tok(WParenRightW), tok(WParenRight));` TO lt_js.
  APPEND `var SQLOver = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const partitionBy = seq("PARTITION", "BY", plus(seq(SQLFunctionInput, opt(","))));` TO lt_js.
  APPEND `    const unboundedPreceding = seq("UNBOUNDED", "PRECEDING");` TO lt_js.
  APPEND `    const unboundedFollowing = seq("UNBOUNDED", "FOLLOWING");` TO lt_js.
  APPEND `    const currentRow = seq("CURRENT", "ROW");` TO lt_js.
  APPEND `    const numBound = seq(SQLSource, altPrio("PRECEDING", "FOLLOWING"));` TO lt_js.
  APPEND `    const bound = altPrio(unboundedPreceding, unboundedFollowing, currentRow, numBound);` TO lt_js.
  APPEND `    const windowFrameSpec = ver("v757" /* v757 */, seq("ROWS", "BETWEEN", bound, "AND", bound));` TO lt_js.
  APPEND `    return ver(` TO lt_js.
  APPEND `      "v757" /* v757 */,` TO lt_js.
  APPEND `      seq(` TO lt_js.
  APPEND `        "OVER",` TO lt_js.
  APPEND `        lparen,` TO lt_js.
  APPEND `        optPrio(partitionBy),` TO lt_js.
  APPEND `        optPrio(SQLOrderBy),` TO lt_js.
  APPEND `        optPrio(windowFrameSpec),` TO lt_js.
  APPEND `        rparen` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_aggregation.ts` TO lt_js.
  APPEND `var lparen2 = altPrio(tok(ParenLeft), tok(ParenLeftW));` TO lt_js.
  APPEND `var rparen2 = altPrio(tok(WParenRightW), tok(WParenRight), tok(ParenRightW));` TO lt_js.
  APPEND `var SQLAggregation = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const arg = altPrio(ver("v740sp08" /* v740sp08 */, SQLFunctionInput), SQLFieldName);` TO lt_js.
  APPEND `    const avgRparen = altPrio(tok(WParenRightW), tok(WParenRight), tok(ParenRightW));` TO lt_js.
  APPEND `    const lenDecimals = seq(tok(ParenLeftW), SQLFunctionInput, ",", SQLFunctionInput, tok(WParenRightW));` TO lt_js.
  APPEND `    const avgCastType = altPrio(` TO lt_js.
  APPEND `      seq("DEC", lenDecimals),` TO lt_js.
  APPEND `      seq("CURR", lenDecimals),` TO lt_js.
  APPEND `      seq("QUAN", lenDecimals),` TO lt_js.
  APPEND `      "D16N",` TO lt_js.
  APPEND `      "D34N",` TO lt_js.
  APPEND `      "FLTP"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const count = seq("COUNT", lparen2, optPrio("DISTINCT"), altPrio("*", arg), rparen2, optPrio(SQLOver));` TO lt_js.
  APPEND `    const max = seq("MAX", lparen2, optPrio("DISTINCT"), arg, rparen2, optPrio(SQLOver));` TO lt_js.
  APPEND `    const min = seq("MIN", lparen2, optPrio("DISTINCT"), arg, rparen2, optPrio(SQLOver));` TO lt_js.
  APPEND `    const sum = seq("SUM", lparen2, optPrio("DISTINCT"), arg, rparen2, optPrio(SQLOver));` TO lt_js.
  APPEND `    const avg = seq(` TO lt_js.
  APPEND `      "AVG",` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      optPrio("DISTINCT"),` TO lt_js.
  APPEND `      arg,` TO lt_js.
  APPEND `      optPrio(ver("v751" /* v751 */, seq("AS", avgCastType))),` TO lt_js.
  APPEND `      avgRparen,` TO lt_js.
  APPEND `      optPrio(SQLOver)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const rank = ver("v757" /* v757 */, seq(altPrio("ROW_NUMBER", "RANK", "DENSE_RANK"), lparen2, rparen2, SQLOver));` TO lt_js.
  APPEND `    const leadLag = ver("v757" /* v757 */, seq(` TO lt_js.
  APPEND `      altPrio("LEAD", "LAG"),` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      SQLFunctionInput,` TO lt_js.
  APPEND `      optPrio(seq(",", SQLFunctionInput, optPrio(seq(",", SQLFunctionInput)))),` TO lt_js.
  APPEND `      rparen2,` TO lt_js.
  APPEND `      SQLOver` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const firstLastValue = ver("v757" /* v757 */, seq(` TO lt_js.
  APPEND `      altPrio("FIRST_VALUE", "LAST_VALUE"),` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      SQLFunctionInput,` TO lt_js.
  APPEND `      rparen2,` TO lt_js.
  APPEND `      SQLOver` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const stringAgg = ver("v757" /* v757 */, seq(` TO lt_js.
  APPEND `      "STRING_AGG",` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      SQLFunctionInput,` TO lt_js.
  APPEND `      optPrio(seq(",", SQLFunctionInput)),` TO lt_js.
  APPEND `      rparen2,` TO lt_js.
  APPEND `      optPrio(SQLOver)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const ntile = ver("v757" /* v757 */, seq("NTILE", tok(ParenLeftW), SQLFunctionInput, rparen2, SQLOver));` TO lt_js.
  APPEND `    const corr = ver("v757" /* v757 */, seq(` TO lt_js.
  APPEND `      altPrio("CORR_SPEARMAN", "CORR"),` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      SQLFunctionInput,` TO lt_js.
  APPEND `      ",",` TO lt_js.
  APPEND `      SQLFunctionInput,` TO lt_js.
  APPEND `      rparen2,` TO lt_js.
  APPEND `      optPrio(SQLOver)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const stat = ver("v757" /* v757 */, seq(` TO lt_js.
  APPEND `      altPrio("PRODUCT", "MEDIAN", "VAR", "STDDEV"),` TO lt_js.
  APPEND `      tok(ParenLeftW),` TO lt_js.
  APPEND `      SQLFunctionInput,` TO lt_js.
  APPEND `      rparen2,` TO lt_js.
  APPEND `      optPrio(SQLOver)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    return altPrio(` TO lt_js.
  APPEND `      rank,` TO lt_js.
  APPEND `      leadLag,` TO lt_js.
  APPEND `      firstLastValue,` TO lt_js.
  APPEND `      stringAgg,` TO lt_js.
  APPEND `      ntile,` TO lt_js.
  APPEND `      corr,` TO lt_js.
  APPEND `      stat,` TO lt_js.
  APPEND `      count,` TO lt_js.
  APPEND `      max,` TO lt_js.
  APPEND `      min,` TO lt_js.
  APPEND `      sum,` TO lt_js.
  APPEND `      avg` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_compare_operator.ts` TO lt_js.
  APPEND `var SQLCompareOperator = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const operator = altPrio("=", "<>", "<", ">", "<=", ">=", "EQ", "NE", "GE", "GT", "LT", "LE", "><", "=>", "=<");` TO lt_js.
  APPEND `    return operator;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_having.ts` TO lt_js.
  APPEND `var SQLHaving = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const cond = seq(SQLAggregation, SQLCompareOperator, SQLSource);` TO lt_js.
  APPEND `    const having = seq("HAVING", altPrio(Dynamic, cond));` TO lt_js.
  APPEND `    return having;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_into_structure.ts` TO lt_js.
  APPEND `var SQLIntoStructure = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const intoSimple = seq(optPrio("CORRESPONDING FIELDS OF"), SQLTarget);` TO lt_js.
  APPEND `    return seq("INTO", intoSimple);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_hints.ts` TO lt_js.
  APPEND `var SQLHints = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const type = altPrio("ORACLE", "ADABAS", "AS400", "DB2", "HDB", "MSSQLNT", "SYBASE", "DB6", "INFORMIX");` TO lt_js.
  APPEND `    const ret = seq("%_HINTS", plus(seq(type, alt(Constant, FieldSub))));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_path.ts` TO lt_js.
  APPEND `var SQLPath = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const condition = seq(tok(BracketLeftW), "ONE TO ONE WHERE", SQLCond, tok(WBracketRight));` TO lt_js.
  APPEND `    const ret = seq(AssociationName, optPrio(condition), tok(Dash), regex(/\w+/));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_field_list_loop.ts` TO lt_js.
  APPEND `var SQLFieldListLoop = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const comma = opt(ver("v740sp05" /* v740sp05 */, ",", "open-abap" /* OpenABAP */));` TO lt_js.
  APPEND `    const as = seq("AS", SQLAsName);` TO lt_js.
  APPEND `    const someField = seq(SQLField, comma);` TO lt_js.
  APPEND `    const abap = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), SimpleFieldChain2), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const fieldList = seq(star(someField), alt(SQLFieldName, abap, SQLPath, Constant), optPrio(as), comma, star(someField));` TO lt_js.
  APPEND `    const fields = alt("*", Dynamic, fieldList);` TO lt_js.
  APPEND `    return fields;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_up_to.ts` TO lt_js.
  APPEND `var SQLUpTo = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const up = seq("UP TO", SQLSource, "ROWS");` TO lt_js.
  APPEND `    return up;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_fields_loop.ts` TO lt_js.
  APPEND `var SQLFieldsLoop = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("FIELDS", opt("DISTINCT"), SQLFieldListLoop);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/select_loop.ts` TO lt_js.
  APPEND `var SelectLoop = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const where = seq("WHERE", SQLCond);` TO lt_js.
  APPEND `    const bypass = "BYPASSING BUFFER";` TO lt_js.
  APPEND `    const pack = seq("PACKAGE SIZE", SQLSource);` TO lt_js.
  APPEND `    const privileged = ver("v758" /* v758 */, SQLPrivilegedAccess);` TO lt_js.
  APPEND `    const tab = seq(SQLIntoTable, alt(pack, seq(SQLFrom, pack), seq(pack, SQLFrom)));` TO lt_js.
  APPEND `    const packTab = seq(pack, SQLIntoTable);` TO lt_js.
  APPEND `    const into = altPrio(SQLIntoStructure, SQLIntoList);` TO lt_js.
  APPEND `    const perm = per(` TO lt_js.
  APPEND `      SQLFrom,` TO lt_js.
  APPEND `      where,` TO lt_js.
  APPEND `      SQLUpTo,` TO lt_js.
  APPEND `      SQLOrderBy,` TO lt_js.
  APPEND `      SQLHaving,` TO lt_js.
  APPEND `      SQLClient,` TO lt_js.
  APPEND `      bypass,` TO lt_js.
  APPEND `      SQLGroupBy,` TO lt_js.
  APPEND `      SQLForAllEntries,` TO lt_js.
  APPEND `      DatabaseConnection,` TO lt_js.
  APPEND `      privileged,` TO lt_js.
  APPEND `      SQLOptions,` TO lt_js.
  APPEND `      alt(tab, SQLIntoStructure, SQLIntoList, packTab)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const strict = seq(` TO lt_js.
  APPEND `      SQLFrom,` TO lt_js.
  APPEND `      ver("v750" /* v750 */, SQLFieldsLoop),` TO lt_js.
  APPEND `      optPrio(SQLForAllEntries),` TO lt_js.
  APPEND `      optPrio(seq(where, optPrio(SQLOrderBy), into, optPrio(SQLUpTo)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const aggrIntoBeforeFrom = seq(` TO lt_js.
  APPEND `      plusPrio(SQLAggregation),` TO lt_js.
  APPEND `      into,` TO lt_js.
  APPEND `      optPrio(SQLUpTo),` TO lt_js.
  APPEND `      SQLFrom,` TO lt_js.
  APPEND `      optPrio(SQLClient),` TO lt_js.
  APPEND `      optPrio(where),` TO lt_js.
  APPEND `      SQLGroupBy` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const aggrIntoAfterFrom = seq(` TO lt_js.
  APPEND `      plusPrio(SQLAggregation),` TO lt_js.
  APPEND `      SQLFrom,` TO lt_js.
  APPEND `      optPrio(SQLClient),` TO lt_js.
  APPEND `      into,` TO lt_js.
  APPEND `      optPrio(SQLUpTo),` TO lt_js.
  APPEND `      optPrio(where),` TO lt_js.
  APPEND `      SQLGroupBy` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SELECT",` TO lt_js.
  APPEND `      altPrio(seq(optPrio("DISTINCT"), SQLFieldListLoop, perm), strict, aggrIntoBeforeFrom, aggrIntoAfterFrom),` TO lt_js.
  APPEND `      optPrio(SQLHints),` TO lt_js.
  APPEND `      optPrio(privileged),` TO lt_js.
  APPEND `      optPrio(SQLOptions)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_group_by.ts` TO lt_js.
  APPEND `var SQLGroupBy = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const f = alt(SQLFieldName, Dynamic);` TO lt_js.
  APPEND `    const strict = seq(plus(seq(f, ",")), f);` TO lt_js.
  APPEND `    const group = seq("GROUP BY", altPrio(strict, plus(f)));` TO lt_js.
  APPEND `    return group;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/select.ts` TO lt_js.
  APPEND `var Select = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const into = altPrio(SQLIntoTable, SQLIntoStructure, SQLIntoList);` TO lt_js.
  APPEND `    const where = seq("WHERE", SQLCond);` TO lt_js.
  APPEND `    const offset = ver("v751" /* v751 */, seq("OFFSET", SQLSource));` TO lt_js.
  APPEND `    const bypass = str("BYPASSING BUFFER");` TO lt_js.
  APPEND `    const fields = ver("v750" /* v750 */, SQLFields, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const privileged = ver("v758" /* v758 */, SQLPrivilegedAccess);` TO lt_js.
  APPEND `    const perm = per(` TO lt_js.
  APPEND `      SQLFrom,` TO lt_js.
  APPEND `      into,` TO lt_js.
  APPEND `      SQLForAllEntries,` TO lt_js.
  APPEND `      where,` TO lt_js.
  APPEND `      SQLOrderBy,` TO lt_js.
  APPEND `      SQLUpTo,` TO lt_js.
  APPEND `      offset,` TO lt_js.
  APPEND `      SQLClient,` TO lt_js.
  APPEND `      SQLHaving,` TO lt_js.
  APPEND `      bypass,` TO lt_js.
  APPEND `      SQLGroupBy,` TO lt_js.
  APPEND `      fields,` TO lt_js.
  APPEND `      DatabaseConnection,` TO lt_js.
  APPEND `      SQLHints,` TO lt_js.
  APPEND `      privileged,` TO lt_js.
  APPEND `      SQLOptions` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const permSingle = per(` TO lt_js.
  APPEND `      SQLFrom,` TO lt_js.
  APPEND `      altPrio(SQLIntoStructure, SQLIntoList),` TO lt_js.
  APPEND `      where,` TO lt_js.
  APPEND `      SQLClient,` TO lt_js.
  APPEND `      bypass,` TO lt_js.
  APPEND `      SQLGroupBy,` TO lt_js.
  APPEND `      fields,` TO lt_js.
  APPEND `      DatabaseConnection,` TO lt_js.
  APPEND `      SQLHints,` TO lt_js.
  APPEND `      privileged,` TO lt_js.
  APPEND `      SQLOptions` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const fieldList = optPrio(SQLFieldList);` TO lt_js.
  APPEND `    const single = seq("SINGLE", optPrio("FOR UPDATE"), fieldList, permSingle);` TO lt_js.
  APPEND `    const other = seq(optPrio("DISTINCT"), fieldList, perm);` TO lt_js.
  APPEND `    const ret = seq("SELECT", altPrio(single, other));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_field_chain.ts` TO lt_js.
  APPEND `var SimpleFieldChain = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const chain = starPrio(seq(tok(Dash), ComponentName));` TO lt_js.
  APPEND `    const clas = seq(ClassName, tok(StaticArrow), AttributeName);` TO lt_js.
  APPEND `    const start = altPrio(clas, Field);` TO lt_js.
  APPEND `    const ret = seq(start, chain);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_field_chain2.ts` TO lt_js.
  APPEND `var SimpleFieldChain2 = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const attr = seq(tok(InstanceArrow), AttributeName);` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), ComponentName);` TO lt_js.
  APPEND `    const chain = star(altPrio(attr, comp));` TO lt_js.
  APPEND `    const clas = seq(ClassName, tok(StaticArrow), AttributeName);` TO lt_js.
  APPEND `    const start = altPrio(clas, SourceField, SourceFieldSymbol);` TO lt_js.
  APPEND `    const ret = seq(start, chain);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_name.ts` TO lt_js.
  APPEND `var SimpleName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^[\w$%]+$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_source1.ts` TO lt_js.
  APPEND `var SimpleSource1 = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const concat = seq("&&", StringTemplate2);` TO lt_js.
  APPEND `    const template = seq(StringTemplate2, star(concat));` TO lt_js.
  APPEND `    return alt(Constant, TextElement, MethodCallChain, template, FieldChain);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_source2.ts` TO lt_js.
  APPEND `var SimpleSource2 = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const concat = seq("&&", StringTemplate2);` TO lt_js.
  APPEND `    const template = seq(StringTemplate2, star(concat));` TO lt_js.
  APPEND `    return altPrio(Constant, TextElement, template, FieldChain);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_source4.ts` TO lt_js.
  APPEND `var SimpleSource4 = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return alt(Constant, TextElement, FieldChain, MethodCallChain);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/simple_target.ts` TO lt_js.
  APPEND `var SimpleTarget = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const attr = seq(tok(InstanceArrow), AttributeName);` TO lt_js.
  APPEND `    const comp = seq(tok(Dash), ComponentName);` TO lt_js.
  APPEND `    const something = starPrio(altPrio(Dereference, attr, comp, TableExpression));` TO lt_js.
  APPEND `    const cast = seq(altPrio(Cast, NewObject), Arrow, FieldAll);` TO lt_js.
  APPEND `    const clas = seq(ClassName, tok(StaticArrow), AttributeName);` TO lt_js.
  APPEND `    const start = altPrio(cast, clas, TargetField, TargetFieldSymbol);` TO lt_js.
  APPEND `    const fields = seq(optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    const optional = altPrio(TableBody, fields);` TO lt_js.
  APPEND `    return seq(start, something, optional);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/source_field_symbol_chain.ts` TO lt_js.
  APPEND `var SourceFieldSymbolChain = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const chain = seq(new ArrowOrDash(), ComponentName);` TO lt_js.
  APPEND `    return seq(FieldSymbol, starPrio(chain), optPrio(TableBody));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/source_field_symbol.ts` TO lt_js.
  APPEND `var SourceFieldSymbol = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return new FieldSymbol();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/source_field.ts` TO lt_js.
  APPEND `var SourceField = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return new Field();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_arithmetic_operator.ts` TO lt_js.
  APPEND `var SQLArithmeticOperator = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const operator = altPrio(tok(WPlusW), tok(WDashW), "*", "/");` TO lt_js.
  APPEND `    return operator;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_arithmetics.ts` TO lt_js.
  APPEND `var SQLArithmetics = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = alt(SQLFieldName, SQLFunction);` TO lt_js.
  APPEND `    return seq(field, starPrio(seq(SQLArithmeticOperator, field)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_as_name.ts` TO lt_js.
  APPEND `var SQLAsName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const field = regex(/^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?]*(~\w+)?$/);` TO lt_js.
  APPEND `    return seq(field, starPrio(seq(tok(Dash), field)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_bypassing_buffer.ts` TO lt_js.
  APPEND `var SQLBypassingBuffer = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return str("BYPASSING BUFFER");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_cds_parameters.ts` TO lt_js.
  APPEND `var SQLCDSParameters = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const param = seq(Field, "=", alt(seq(tok(WAt), FieldChain), Constant));` TO lt_js.
  APPEND `    return seq("(", param, starPrio(seq(",", param)), ")");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_source_simple.ts` TO lt_js.
  APPEND `var SQLSourceSimple = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));` TO lt_js.
  APPEND `    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), alt(SimpleSource3, paren)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return alt(SimpleSource3, at);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_client.ts` TO lt_js.
  APPEND `var SQLClient = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const client = alt(` TO lt_js.
  APPEND `      verNot("Cloud" /* Cloud */, "CLIENT SPECIFIED"),` TO lt_js.
  APPEND `      seq("USING", alt(` TO lt_js.
  APPEND `        ver("v740sp05" /* v740sp05 */, seq("CLIENT", SQLSourceSimple)),` TO lt_js.
  APPEND `        ver("v754" /* v754 */, seq("CLIENTS IN", alt(SQLSourceSimple, "T000"))),` TO lt_js.
  APPEND `        ver("v754" /* v754 */, "ALL CLIENTS")` TO lt_js.
  APPEND `      ))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return client;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_compare.ts` TO lt_js.
  APPEND `var SQLCompare = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const subSelect = seq("(", Select, ")");` TO lt_js.
  APPEND `    const subSelectDouble = seq("(", "(", Select, ")", ")");` TO lt_js.
  APPEND `    const between = seq("BETWEEN", SQLSource, "AND", SQLSource);` TO lt_js.
  APPEND `    const like = seq("LIKE", SQLSource, optPrio(seq("ESCAPE", SQLSource)));` TO lt_js.
  APPEND `    const nul = seq("IS", optPrio("NOT"), altPrio("NULL", ver("v753" /* v753 */, "INITIAL")));` TO lt_js.
  APPEND `    const source = new SQLSource();` TO lt_js.
  APPEND `    const sub2 = seq(optPrio(altPrio("ALL", "ANY", "SOME")), altPrio(subSelect, subSelectDouble));` TO lt_js.
  APPEND `    const arith = ver("v750" /* v750 */, plusPrio(seq(altPrio("+", "-", "*", "/"), SQLFieldName)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));` TO lt_js.
  APPEND `    const at = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleSource3, paren)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const rett = seq(` TO lt_js.
  APPEND `      altPrio(SQLAggregation, SQLFunction, ConstantString, seq(altPrio(SQLPath, SQLFieldName), optPrio(arith)), at),` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        seq(SQLCompareOperator, altPrio(sub2, source)),` TO lt_js.
  APPEND `        seq(optPrio("NOT"), altPrio(SQLIn, like, between)),` TO lt_js.
  APPEND `        nul` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const exists = seq("EXISTS", subSelect);` TO lt_js.
  APPEND `    return altPrio(exists, Dynamic, rett);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_field_and_value.ts` TO lt_js.
  APPEND `var SQLFieldAndValue = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const opt1 = seq(altPrio(Integer, SQLFieldName), SQLArithmeticOperator, SQLSource);` TO lt_js.
  APPEND `    const param = seq(SQLFieldName, "=", altPrio(opt1, SQLSource));` TO lt_js.
  APPEND `    return param;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_field_list.ts` TO lt_js.
  APPEND `var SQLFieldList = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const as = seq("AS", SQLAsName);` TO lt_js.
  APPEND `    const commaParenField = seq(tok(ParenLeftW), SQLFieldName, altPrio(tok(WParenRightW), tok(WParenRight)), optPrio(as));` TO lt_js.
  APPEND `    const nev = ver("v740sp05" /* v740sp05 */, starPrio(seq(",", altPrio(SQLField, commaParenField))), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const old = starPrio(SQLField);` TO lt_js.
  APPEND `    return altPrio(` TO lt_js.
  APPEND `      "*",` TO lt_js.
  APPEND `      Dynamic,` TO lt_js.
  APPEND `      seq(SQLField, alt(nev, old))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_field.ts` TO lt_js.
  APPEND `var SQLField = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const atParen = seq(tok(ParenLeftW), SimpleFieldChain2, tok(WParenRightW));` TO lt_js.
  APPEND `    const abap = ver("v740sp05" /* v740sp05 */, seq(tok(WAt), altPrio(SimpleFieldChain2, atParen)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const as = seq("AS", SQLAsName);` TO lt_js.
  APPEND `    const parenFieldName = seq(tok(WParenLeftW), SQLFieldName, altPrio(tok(WParenRightW), tok(WParenRight)));` TO lt_js.
  APPEND `    const fieldNoAgg = altPrio(` TO lt_js.
  APPEND `      SQLCase,` TO lt_js.
  APPEND `      SQLFunction,` TO lt_js.
  APPEND `      SQLPath,` TO lt_js.
  APPEND `      SQLFieldName,` TO lt_js.
  APPEND `      abap,` TO lt_js.
  APPEND `      Constant,` TO lt_js.
  APPEND `      parenFieldName` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const field = altPrio(SQLAggregation, fieldNoAgg);` TO lt_js.
  APPEND `    const parenField = seq(tok(WParenLeftW), field, tok(WParenRightW));` TO lt_js.
  APPEND `    const parenFieldNoAgg = seq(tok(WParenLeftW), fieldNoAgg, tok(WParenRightW));` TO lt_js.
  APPEND `    const subNoAgg = plusPrio(seq(altPrio("+", "-", "*", "/", "&&"), altPrio(parenFieldNoAgg, fieldNoAgg)));` TO lt_js.
  APPEND `    const arithNoAgg = ver("v740sp05" /* v740sp05 */, subNoAgg);` TO lt_js.
  APPEND `    const subWithAgg = plusPrio(seq(altPrio("+", "-", "*", "/", "&&"), altPrio(parenField, field)));` TO lt_js.
  APPEND `    const arithWithAgg = ver("v754" /* v754 */, subWithAgg);` TO lt_js.
  APPEND `    const arith = altPrio(arithWithAgg, arithNoAgg);` TO lt_js.
  APPEND `    const arithSequence = seq(field, optPrio(arith));` TO lt_js.
  APPEND `    const parenArithSequence = seq(tok(WParenLeftW), arithSequence, tok(WParenRightW));` TO lt_js.
  APPEND `    return seq(altPrio(parenArithSequence, arithSequence), optPrio(as));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_fields.ts` TO lt_js.
  APPEND `var SQLFields = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("FIELDS", opt("DISTINCT"), SQLFieldList);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_for_all_entries.ts` TO lt_js.
  APPEND `var SQLForAllEntries = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const forAll = seq("FOR ALL ENTRIES IN", SQLSource);` TO lt_js.
  APPEND `    return forAll;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/with_name.ts` TO lt_js.
  APPEND `var WithName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(tok(WPlus), regex(/^\w+$/));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_from_source.ts` TO lt_js.
  APPEND `var SQLFromSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const tab = ver("v752" /* v752 */, seq(tok(WAt), FieldChain));` TO lt_js.
  APPEND `    const aas = seq("AS", SQLAsName);` TO lt_js.
  APPEND `    const privileged = ver("v752" /* v752 */, seq("WITH", SQLPrivilegedAccess));` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      altPrio(WithName, seq(DatabaseTable, optPrio(SQLCDSParameters)), tab),` TO lt_js.
  APPEND `      optPrio(privileged),` TO lt_js.
  APPEND `      optPrio(aas)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_from.ts` TO lt_js.
  APPEND `var SQLFrom = class extends Expression {` TO lt_js.
  APPEND `  // todo: rewrite/refactor this method` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const joins = starPrio(seq(optPrio(tok(WParenRightW)), SQLJoin));` TO lt_js.
  APPEND `    const from0 = seq("FROM", SQLFromSource, joins);` TO lt_js.
  APPEND `    const from1 = seq("FROM", tok(WParenLeftW), SQLFromSource, joins, optPrio(tok(WParenRightW)));` TO lt_js.
  APPEND `    const from2 = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      SQLFromSource,` TO lt_js.
  APPEND `      joins,` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from3 = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      SQLFromSource,` TO lt_js.
  APPEND `      joins,` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from4 = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      SQLFromSource,` TO lt_js.
  APPEND `      joins,` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from5 = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      SQLFromSource,` TO lt_js.
  APPEND `      joins,` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from6 = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      SQLFromSource,` TO lt_js.
  APPEND `      joins,` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from7 = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      tok(WParenLeftW),` TO lt_js.
  APPEND `      SQLFromSource,` TO lt_js.
  APPEND `      joins,` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW)),` TO lt_js.
  APPEND `      optPrio(tok(WParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const source = altPrio(from7, from6, from5, from4, from3, from2, from1, from0);` TO lt_js.
  APPEND `    return source;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_in.ts` TO lt_js.
  APPEND `var SQLIn = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const val = new SQLSource();` TO lt_js.
  APPEND `    const short = new SQLSourceNoSpace();` TO lt_js.
  APPEND `    const listOld = seq(tok(WParenLeft), alt(ver("v740sp05" /* v740sp05 */, short, "open-abap" /* OpenABAP */), val), starPrio(seq(",", val)), altPrio(tok(Paren` &&
    `Right), tok(ParenRightW), tok(WParenRightW)));` TO lt_js.
  APPEND `    const listNew = seq(tok(WParenLeftW), val, starPrio(seq(",", altPrio(short, val))), altPrio(tok(WParenRight), tok(WParenRightW)));` TO lt_js.
  APPEND `    const listNeww = ver("v740sp02" /* v740sp02 */, listNew, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const subSelect = seq("(", Select, ")");` TO lt_js.
  APPEND `    const inn = seq("IN", altPrio(subSelect, listOld, listNeww, SQLSource));` TO lt_js.
  APPEND `    return inn;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_into_list.ts` TO lt_js.
  APPEND `var SQLIntoList = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const intoList = seq(` TO lt_js.
  APPEND `      altPrio(tok(WParenLeft), ver("v740sp02" /* v740sp02 */, tok(WParenLeftW), "open-abap" /* OpenABAP */)),` TO lt_js.
  APPEND `      starPrio(seq(SQLTarget, ",")),` TO lt_js.
  APPEND `      SQLTarget,` TO lt_js.
  APPEND `      ")"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("INTO", intoList);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_into_table.ts` TO lt_js.
  APPEND `var SQLIntoTable = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const into = seq(` TO lt_js.
  APPEND `      altPrio("INTO", "APPENDING"),` TO lt_js.
  APPEND `      optPrio("CORRESPONDING FIELDS OF"),` TO lt_js.
  APPEND `      "TABLE",` TO lt_js.
  APPEND `      SQLTarget` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return into;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_join.ts` TO lt_js.
  APPEND `var SQLJoin = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const joinType = seq(optPrio(altPrio("INNER", "LEFT OUTER", "LEFT", "RIGHT OUTER", "RIGHT")), "JOIN");` TO lt_js.
  APPEND `    const join = seq(joinType, SQLFromSource, "ON", SQLCond);` TO lt_js.
  APPEND `    return join;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_options.ts` TO lt_js.
  APPEND `var SQLOptions = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const usingClients = alt(` TO lt_js.
  APPEND `      seq("CLIENTS IN", alt(SQLSourceSimple, "T000")),` TO lt_js.
  APPEND `      "ALL CLIENTS",` TO lt_js.
  APPEND `      seq("CLIENT", SQLSourceSimple)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const privilegedAccess = ver("v758" /* v758 */, SQLPrivilegedAccess);` TO lt_js.
  APPEND `    const general = per(privilegedAccess, SQLBypassingBuffer, DatabaseConnection);` TO lt_js.
  APPEND `    const usingClause = seq("USING", usingClients, optPrio(general));` TO lt_js.
  APPEND `    return ver("v758" /* v758 */, seq("OPTIONS", alt(usingClause, general)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_privileged_access.ts` TO lt_js.
  APPEND `var SQLPrivilegedAccess = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const accessLevel = ver("Cloud" /* Cloud */, seq("LEVEL", SQLSourceSimple));` TO lt_js.
  APPEND `    return seq("PRIVILEGED ACCESS", optPrio(accessLevel));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_source_no_space.ts` TO lt_js.
  APPEND `var SQLSourceNoSpace = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const paren = seq(tok(ParenLeftW), Source, tok(WParenRightW));` TO lt_js.
  APPEND `    const at = ver("v740sp05" /* v740sp05 */, seq(tok(At), altPrio(SimpleSource3, paren)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return alt(SQLAliasField, SimpleSource3, at);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/sql_target.ts` TO lt_js.
  APPEND `var SQLTarget = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const n = ver("v754" /* v754 */, "NEW");` TO lt_js.
  APPEND `    const at = ver("v740sp05" /* v740sp05 */, seq(opt(n), altPrio(tok(WAt), tok(At)), Target), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return altPrio(at, Target);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/string_template_formatting.ts` TO lt_js.
  APPEND `var StringTemplateFormatting = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const alphaOptions = altPrio("OUT", "RAW", "IN", Source);` TO lt_js.
  APPEND `    const alignOptions = altPrio("LEFT", "RIGHT", "CENTER", Source, Dynamic);` TO lt_js.
  APPEND `    const dateTimeOptions = altPrio("RAW", "ISO", "USER", "ENVIRONMENT", Source, Dynamic);` TO lt_js.
  APPEND `    const timeStampOptions = altPrio("SPACE", "ISO", "USER", "ENVIRONMENT", Source, Dynamic);` TO lt_js.
  APPEND `    const numberOptions = altPrio("RAW", "USER", "ENVIRONMENT", Source, Dynamic);` TO lt_js.
  APPEND `    const signOptions = altPrio("LEFT", "LEFTPLUS", "LEFTSPACE", "RIGHT", "RIGHTPLUS", "RIGHTSPACE", Source);` TO lt_js.
  APPEND `    const caseOptions = altPrio("RAW", "UPPER", "LOWER", Source, Dynamic);` TO lt_js.
  APPEND `    const zeroXSDOptions = altPrio("YES", "NO", Source);` TO lt_js.
  APPEND `    const styleOptions = altPrio(` TO lt_js.
  APPEND `      "SIMPLE",` TO lt_js.
  APPEND `      "SIGN_AS_POSTFIX",` TO lt_js.
  APPEND `      "SCALE_PRESERVING",` TO lt_js.
  APPEND `      "SCIENTIFIC",` TO lt_js.
  APPEND `      "SCIENTIFIC_WITH_LEADING_ZERO",` TO lt_js.
  APPEND `      "SCALE_PRESERVING_SCIENTIFIC",` TO lt_js.
  APPEND `      "ENGINEERING",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const width = seq("WIDTH =", Source);` TO lt_js.
  APPEND `    const align = seq("ALIGN =", alignOptions);` TO lt_js.
  APPEND `    const timezone = seq("TIMEZONE =", Source);` TO lt_js.
  APPEND `    const timestamp = seq("TIMESTAMP =", timeStampOptions);` TO lt_js.
  APPEND `    const pad = seq("PAD =", Source);` TO lt_js.
  APPEND `    const number = seq("NUMBER =", numberOptions);` TO lt_js.
  APPEND `    const sign = seq("SIGN =", signOptions);` TO lt_js.
  APPEND `    const decimals = seq("DECIMALS =", Source);` TO lt_js.
  APPEND `    const alpha = ver("v740sp02" /* v740sp02 */, seq("ALPHA =", alphaOptions), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const xsd = ver("v740sp02" /* v740sp02 */, seq("XSD =", zeroXSDOptions));` TO lt_js.
  APPEND `    const country = seq("COUNTRY =", Source);` TO lt_js.
  APPEND `    const formatting = altPrio(` TO lt_js.
  APPEND `      seq("TIME =", dateTimeOptions),` TO lt_js.
  APPEND `      seq("DATE =", dateTimeOptions),` TO lt_js.
  APPEND `      seq("CASE =", caseOptions),` TO lt_js.
  APPEND `      seq("EXPONENT", Source),` TO lt_js.
  APPEND `      seq("ZERO =", zeroXSDOptions),` TO lt_js.
  APPEND `      xsd,` TO lt_js.
  APPEND `      seq("STYLE =", styleOptions),` TO lt_js.
  APPEND `      seq("CURRENCY =", Source),` TO lt_js.
  APPEND `      per(sign, number, decimals, width, pad, alpha, align, country),` TO lt_js.
  APPEND `      per(timezone, timestamp)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return formatting;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/string_template_source.ts` TO lt_js.
  APPEND `var StringTemplateSource = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(Source, optPrio(StringTemplateFormatting));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/string_template.ts` TO lt_js.
  APPEND `var StringTemplate2 = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const nest = seq(` TO lt_js.
  APPEND `      tok(StringTemplateBegin),` TO lt_js.
  APPEND `      StringTemplateSource,` TO lt_js.
  APPEND `      starPrio(seq(tok(StringTemplateMiddle), StringTemplateSource)),` TO lt_js.
  APPEND `      tok(StringTemplateEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v702" /* v702 */, altPrio(nest, tok(StringTemplate)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/super_class_name.ts` TO lt_js.
  APPEND `var SuperClassName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return new ClassName();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/switch_body.ts` TO lt_js.
  APPEND `var SwitchBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const or = seq("OR", Source);` TO lt_js.
  APPEND `    const swhen = seq("WHEN", Source, star(or), "THEN", alt(Source, Throw));` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      opt(Let),` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      plus(swhen),` TO lt_js.
  APPEND `      opt(seq("ELSE", alt(Source, Throw)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/table_expression.ts` TO lt_js.
  APPEND `var TableExpression = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const fields = plus(seq(altPrio(ComponentChainSimple, Dynamic), "=", Source));` TO lt_js.
  APPEND `    const key = seq("KEY", SimpleName);` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      tok(BracketLeftW),` TO lt_js.
  APPEND `      alt(Source, seq(optPrio(key), opt("COMPONENTS"), altPrio(fields, index))),` TO lt_js.
  APPEND `      altPrio(tok(WBracketRight), tok(WBracketRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v740sp02" /* v740sp02 */, ret, "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/target_field_symbol.ts` TO lt_js.
  APPEND `var TargetFieldSymbol = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq(FieldSymbol, optPrio(TableBody));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/target_field.ts` TO lt_js.
  APPEND `var TargetField = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return new Field();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/test_seam_name.ts` TO lt_js.
  APPEND `var TestSeamName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(regex(/^[\w%\$\*]+$/), starPrio(seq(tok(Dash), regex(/^[\w%\$\*]+$/))));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/text_element_key.ts` TO lt_js.
  APPEND `var TextElementKey = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return regex(/^\w{3}$/);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/text_element_string.ts` TO lt_js.
  APPEND `var TextElementString = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const text = seq(tok(ParenLeft), TextElementKey, tok(ParenRightW));` TO lt_js.
  APPEND `    const stri = seq(regex(/^('.*')|(``.*``)$/), text);` TO lt_js.
  APPEND `    return stri;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/throw.ts` TO lt_js.
  APPEND `var Throw = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const message = seq(` TO lt_js.
  APPEND `      "MESSAGE",` TO lt_js.
  APPEND `      MessageSource,` TO lt_js.
  APPEND `      opt(RaiseWith)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "THROW",` TO lt_js.
  APPEND `      opt("RESUMABLE"),` TO lt_js.
  APPEND `      ClassName,` TO lt_js.
  APPEND `      altPrio(tok(ParenLeftW), tok(ParenLeft)),` TO lt_js.
  APPEND `      opt(alt(Source, ParameterListS, message)),` TO lt_js.
  APPEND `      altPrio(tok(WParenRightW), tok(ParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/transporting_fields.ts` TO lt_js.
  APPEND `var TransportingFields = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const fields = plus(alt(seq("INTO", failStar()), FieldSub));` TO lt_js.
  APPEND `    return altPrio(Dynamic, fields);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type_name_or_infer.ts` TO lt_js.
  APPEND `var TypeNameOrInfer = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return altPrio("#", TypeName);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type_name.ts` TO lt_js.
  APPEND `var TypeName = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const name = regex(/^[\w~\/%$]+$/);` TO lt_js.
  APPEND `    const cla = seq(name, alt(tok(StaticArrow), tok(InstanceArrow)));` TO lt_js.
  APPEND `    const field = seq(tok(Dash), name);` TO lt_js.
  APPEND `    return seq(opt(cla), name, starPrio(field));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type_param.ts` TO lt_js.
  APPEND `var TypeParam = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const table = seq(` TO lt_js.
  APPEND `      altPrio("STANDARD", "HASHED", "INDEX", "SORTED", "ANY"),` TO lt_js.
  APPEND `      "TABLE"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const foo = seq(optPrio(seq(table, "OF")), optPrio("REF TO"));` TO lt_js.
  APPEND `    const typeLine = "LINE OF";` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      alt(foo, typeLine),` TO lt_js.
  APPEND `      TypeNameOrInfer,` TO lt_js.
  APPEND `      opt(Default)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const like = seq("LIKE", opt("LINE OF"), FieldChain, optPrio(Default));` TO lt_js.
  APPEND `    return alt(seq("TYPE", alt(table, ret)), like);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type_structure.ts` TO lt_js.
  APPEND `var TypeStructure = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const hier = seq("HIERARCHY", NamespaceSimpleName);` TO lt_js.
  APPEND `    const create = seq("CREATE", alt(NamespaceSimpleName, EntityAssociation));` TO lt_js.
  APPEND `    const update = seq("UPDATE", alt(NamespaceSimpleName, EntityAssociation));` TO lt_js.
  APPEND `    const readResult = seq("READ RESULT", alt(NamespaceSimpleName, EntityAssociation));` TO lt_js.
  APPEND `    const readLink = seq("READ LINK", EntityAssociation);` TO lt_js.
  APPEND `    const action = seq("ACTION IMPORT", Source);` TO lt_js.
  APPEND `    const permissionsRequest = seq("PERMISSIONS REQUEST", NamespaceSimpleName);` TO lt_js.
  APPEND `    const evt = seq("EVENT", EventName);` TO lt_js.
  APPEND `    const failedEarly = seq("FAILED EARLY", NamespaceSimpleName);` TO lt_js.
  APPEND `    const mappedEarly = seq("MAPPED EARLY", NamespaceSimpleName);` TO lt_js.
  APPEND `    const reportedEarly = seq("REPORTED EARLY", NamespaceSimpleName);` TO lt_js.
  APPEND `    const structure = seq("STRUCTURE FOR", altPrio(hier, evt, create, update, action, permissionsRequest, readLink, readResult));` TO lt_js.
  APPEND `    const response = seq("RESPONSE FOR", altPrio(failedEarly, mappedEarly, reportedEarly));` TO lt_js.
  APPEND `    const request = seq("REQUEST FOR CHANGE", NamespaceSimpleName);` TO lt_js.
  APPEND `    return seq("TYPE", altPrio(structure, response, request));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type_table_key.ts` TO lt_js.
  APPEND `var TypeTableKey = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const uniqueness = alt("NON-UNIQUE", "UNIQUE");` TO lt_js.
  APPEND `    const defaultKey = "DEFAULT KEY";` TO lt_js.
  APPEND `    const emptyKey = ver("v740sp02" /* v740sp02 */, "EMPTY KEY", "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const components = plus(alt(seq("WITH", failStar()), FieldSub));` TO lt_js.
  APPEND `    const further = seq(alt("WITHOUT", "WITH"), "FURTHER SECONDARY KEYS");` TO lt_js.
  APPEND `    const alias = seq("ALIAS", Field);` TO lt_js.
  APPEND `    const key = seq(` TO lt_js.
  APPEND `      "WITH",` TO lt_js.
  APPEND `      opt(uniqueness),` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        defaultKey,` TO lt_js.
  APPEND `        emptyKey,` TO lt_js.
  APPEND `        seq(` TO lt_js.
  APPEND `          opt(alt("SORTED", "HASHED")),` TO lt_js.
  APPEND `          "KEY",` TO lt_js.
  APPEND `          alt(` TO lt_js.
  APPEND `            seq(Field, opt(alias), "COMPONENTS", components),` TO lt_js.
  APPEND `            components` TO lt_js.
  APPEND `          )` TO lt_js.
  APPEND `        )` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      optPrio(further),` TO lt_js.
  APPEND `      optPrio("READ-ONLY")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return key;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type_table.ts` TO lt_js.
  APPEND `var TypeTable = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const header = "WITH HEADER LINE";` TO lt_js.
  APPEND `    const initial = seq("INITIAL SIZE", Constant);` TO lt_js.
  APPEND `    const generic = seq(opt(alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY")), "TABLE");` TO lt_js.
  APPEND `    const normal1 = seq(` TO lt_js.
  APPEND `      opt(alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY")),` TO lt_js.
  APPEND `      "TABLE OF",` TO lt_js.
  APPEND `      optPrio("REF TO"),` TO lt_js.
  APPEND `      TypeName` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const likeType = seq(` TO lt_js.
  APPEND `      opt(alt("STANDARD", "HASHED", "INDEX", "SORTED", "ANY")),` TO lt_js.
  APPEND `      "TABLE OF",` TO lt_js.
  APPEND `      optPrio("REF TO"),` TO lt_js.
  APPEND `      opt(FieldChain),` TO lt_js.
  APPEND `      opt(per(header, initial, plusPrio(TypeTableKey)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const rangeType = seq("RANGE OF", TypeName, optPrio(header), optPrio(initial), optPrio("VALUE IS INITIAL"));` TO lt_js.
  APPEND `    const rangeLike = seq("RANGE OF", FieldChain, optPrio(header), optPrio(initial), optPrio("VALUE IS INITIAL"));` TO lt_js.
  APPEND `    const typetable = alt(generic, seq(` TO lt_js.
  APPEND `      normal1,` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        opt(per(header, initial, plusPrio(TypeTableKey))),` TO lt_js.
  APPEND `        seq(plus(TypeTableKey), optPrio(initial))` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      optPrio("VALUE IS INITIAL")` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", altPrio(Integer, FieldChain));` TO lt_js.
  APPEND `    const derived = ver("v754" /* v754 */, seq("TABLE FOR", altPrio(` TO lt_js.
  APPEND `      "ACTION IMPORT",` TO lt_js.
  APPEND `      "ACTION RESULT",` TO lt_js.
  APPEND `      "CREATE",` TO lt_js.
  APPEND `      "EVENT",` TO lt_js.
  APPEND `      "REPORTED EARLY",` TO lt_js.
  APPEND `      "READ IMPORT",` TO lt_js.
  APPEND `      "FAILED EARLY",` TO lt_js.
  APPEND `      "FAILED",` TO lt_js.
  APPEND `      "LOCK",` TO lt_js.
  APPEND `      "DETERMINATION",` TO lt_js.
  APPEND `      "READ RESULT",` TO lt_js.
  APPEND `      "UPDATE",` TO lt_js.
  APPEND `      "DELETE"` TO lt_js.
  APPEND `    ), alt(TypeName, EntityAssociation)));` TO lt_js.
  APPEND `    const oldType = seq(opt("REF TO"), TypeName, alt(seq(occurs, opt(header)), header));` TO lt_js.
  APPEND `    const oldLike = seq(opt("REF TO"), FieldChain, alt(seq(occurs, opt(header)), header));` TO lt_js.
  APPEND `    const typeLine = seq("LINE OF", TypeName, occurs, header);` TO lt_js.
  APPEND `    const ret = altPrio(` TO lt_js.
  APPEND `      seq(occurs, opt(header)),` TO lt_js.
  APPEND `      seq("LIKE", alt(oldLike, likeType, rangeLike, typeLine)),` TO lt_js.
  APPEND `      seq("TYPE", alt(oldType, typetable, rangeType, typeLine, derived))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/type.ts` TO lt_js.
  APPEND `var Type = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const indicators = seq("WITH INDICATORS", ComponentName, optPrio(seq("TYPE", TypeName)));` TO lt_js.
  APPEND `    const typeType = seq(TypeName, optPrio(Default));` TO lt_js.
  APPEND `    const like = altPrio(` TO lt_js.
  APPEND `      seq("LINE OF", FieldChain),` TO lt_js.
  APPEND `      seq("REF TO", FieldChain),` TO lt_js.
  APPEND `      FieldChain` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const type = altPrio(` TO lt_js.
  APPEND `      seq("LINE OF", typeType),` TO lt_js.
  APPEND `      seq("REF TO", typeType),` TO lt_js.
  APPEND `      seq(typeType, optPrio(LOBHandle))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(altPrio(seq("LIKE", like), seq("TYPE", type)), optPrio(ver("v755" /* v755 */, indicators)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/value_base.ts` TO lt_js.
  APPEND `var ValueBase = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    return seq("BASE", Source);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/value_body_lines.ts` TO lt_js.
  APPEND `var ValueBodyLines = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const range = seq(optPrio(seq("FROM", Source)), optPrio(seq("TO", Source)));` TO lt_js.
  APPEND `    const lines = seq("LINES OF", Source, range);` TO lt_js.
  APPEND `    return lines;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/value_body_line.ts` TO lt_js.
  APPEND `var ValueBodyLine = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      altPrio(tok(WParenLeftW), tok(WParenLeft)),` TO lt_js.
  APPEND `      optPrio(altPrio(plusPrio(FieldAssignment), ValueBodyLines, Source)),` TO lt_js.
  APPEND `      altPrio(tok(WParenRightW), tok(ParenRightW))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/value_body.ts` TO lt_js.
  APPEND `var ValueBody = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const strucOrTab = seq(optPrio(Let), optPrio(ValueBase), star(For), plusPrio(altPrio(FieldAssignment, ValueBodyLine)));` TO lt_js.
  APPEND `    const tabdef = ver("v740sp08" /* v740sp08 */, altPrio("OPTIONAL", seq("DEFAULT", Source)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return optPrio(altPrio(strucOrTab, seq(Source, optPrio(tabdef))));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/value.ts` TO lt_js.
  APPEND `var Value = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const ret = seq("VALUE", alt(Constant, SimpleFieldChain, "IS INITIAL"));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expressions/write_offset_length.ts` TO lt_js.
  APPEND `var WriteOffsetLength = class extends Expression {` TO lt_js.
  APPEND `  getRunnable() {` TO lt_js.
  APPEND `    const post = seq(alt(SimpleFieldChain2, regex(/^[\d]+$/), regex(/^\*$/)), alt(tok(ParenRightW), tok(ParenRight)));` TO lt_js.
  APPEND `    const wlength = seq(tok(WParenLeft), post);` TO lt_js.
  APPEND `    const length = seq(alt(tok(WParenLeft), tok(ParenLeft)), post);` TO lt_js.
  APPEND `    const complex = alt(` TO lt_js.
  APPEND `      wlength,` TO lt_js.
  APPEND `      seq(alt(SimpleFieldChain2, regex(/^\/?[\w\d]+$/), "/"), opt(length))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const at = seq(opt("AT"), complex);` TO lt_js.
  APPEND `    return at;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/data.ts` TO lt_js.
  APPEND `var Data = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("DATA", DataDefinition, optPrio("%_PREDEFINED"));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/report.ts` TO lt_js.
  APPEND `var Report = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const more = seq(tok(ParenLeft), Integer, alt(tok(ParenRightW), tok(ParenRight)));` TO lt_js.
  APPEND `    const heading = str("NO STANDARD PAGE HEADING");` TO lt_js.
  APPEND `    const size = seq("LINE-SIZE", Integer);` TO lt_js.
  APPEND `    const count = seq("LINE-COUNT", Integer, opt(more));` TO lt_js.
  APPEND `    const message = seq("MESSAGE-ID", MessageClass);` TO lt_js.
  APPEND `    const database = seq("USING DATABASE", Field);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "REPORT",` TO lt_js.
  APPEND `      opt(ReportName),` TO lt_js.
  APPEND `      opt(per(heading, size, count, database, message))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/write.ts` TO lt_js.
  APPEND `var Write = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const mask = seq(` TO lt_js.
  APPEND `      "USING",` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        "NO EDIT MASK",` TO lt_js.
  APPEND `        seq("EDIT MASK", Source)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const onOff = alt(altPrio("ON", "OFF"), seq("=", FieldSub));` TO lt_js.
  APPEND `    const dateFormat = altPrio(` TO lt_js.
  APPEND `      "DD/MM/YY",` TO lt_js.
  APPEND `      "MM/DD/YY",` TO lt_js.
  APPEND `      "DD/MM/YYYY",` TO lt_js.
  APPEND `      "MM/DD/YYYY",` TO lt_js.
  APPEND `      "DDMMYY",` TO lt_js.
  APPEND `      "MMDDYY",` TO lt_js.
  APPEND `      "YYMMDD"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const as = seq("AS", altPrio("LINE", "ICON", "CHECKBOX", "SYMBOL"));` TO lt_js.
  APPEND `    const to = seq("TO", Target);` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      mask,` TO lt_js.
  APPEND `      to,` TO lt_js.
  APPEND `      seq("EXPONENT", Source),` TO lt_js.
  APPEND `      "NO-GROUPING",` TO lt_js.
  APPEND `      "NO-ZERO",` TO lt_js.
  APPEND `      "CENTERED",` TO lt_js.
  APPEND `      seq("INPUT", opt(onOff)),` TO lt_js.
  APPEND `      "NO-GAP",` TO lt_js.
  APPEND `      "LEFT-JUSTIFIED",` TO lt_js.
  APPEND `      as,` TO lt_js.
  APPEND `      seq("FRAMES", onOff),` TO lt_js.
  APPEND `      seq("HOTSPOT", opt(onOff)),` TO lt_js.
  APPEND `      "RIGHT-JUSTIFIED",` TO lt_js.
  APPEND `      seq("TIME ZONE", Source),` TO lt_js.
  APPEND `      seq("UNDER", Source),` TO lt_js.
  APPEND `      seq("STYLE", Source),` TO lt_js.
  APPEND `      seq("ROUND", Source),` TO lt_js.
  APPEND `      seq("QUICKINFO", Source),` TO lt_js.
  APPEND `      "ENVIRONMENT TIME FORMAT",` TO lt_js.
  APPEND `      dateFormat,` TO lt_js.
  APPEND `      seq("UNIT", Source),` TO lt_js.
  APPEND `      seq("INTENSIFIED", opt(onOff)),` TO lt_js.
  APPEND `      seq("INDEX", Source),` TO lt_js.
  APPEND `      seq("DECIMALS", Source),` TO lt_js.
  APPEND `      seq("INVERSE", opt(onOff)),` TO lt_js.
  APPEND `      Color,` TO lt_js.
  APPEND `      seq("CURRENCY", Source),` TO lt_js.
  APPEND `      "RESET",` TO lt_js.
  APPEND `      "NO-SIGN"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("WRITE", alt(` TO lt_js.
  APPEND `      seq("AT /", opt(Source), opt("NO-GAP")),` TO lt_js.
  APPEND `      seq(` TO lt_js.
  APPEND `        opt(WriteOffsetLength),` TO lt_js.
  APPEND `        alt(Source, Dynamic, "/"),` TO lt_js.
  APPEND `        opt(options)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endmethod.ts` TO lt_js.
  APPEND `var EndMethod = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDMETHOD");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/method_implementation.ts` TO lt_js.
  APPEND `var MethodImplementation = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const name = regex(/[\w~]+/);` TO lt_js.
  APPEND `    const kernel = seq(` TO lt_js.
  APPEND `      "KERNEL MODULE",` TO lt_js.
  APPEND `      plus(name),` TO lt_js.
  APPEND `      optPrio(altPrio("FAIL", "IGNORE"))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const using = seq("USING", plus(SimpleFieldChain));` TO lt_js.
  APPEND `    const database = seq(` TO lt_js.
  APPEND `      "DATABASE",` TO lt_js.
  APPEND `      alt("PROCEDURE", "FUNCTION", "GRAPH WORKSPACE"),` TO lt_js.
  APPEND `      "FOR HDB",` TO lt_js.
  APPEND `      Language,` TO lt_js.
  APPEND `      opt("OPTIONS READ-ONLY"),` TO lt_js.
  APPEND `      opt(using)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const by = seq("BY", alt(kernel, database));` TO lt_js.
  APPEND `    return seq("METHOD", MethodName, optPrio(by));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endform.ts` TO lt_js.
  APPEND `var EndForm = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("ENDFORM");` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/form.ts` TO lt_js.
  APPEND `var Form = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const parameters = seq(` TO lt_js.
  APPEND `      opt(FormTables),` TO lt_js.
  APPEND `      opt(FormUsing),` TO lt_js.
  APPEND `      opt(FormChanging),` TO lt_js.
  APPEND `      opt(FormRaising)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("FORM", FormName, alt("IMPLEMENTATION", parameters));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/import_nametab.ts` TO lt_js.
  APPEND `var ImportNametab = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "IMPORT NAMETAB",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "ID",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/check_select_options.ts` TO lt_js.
  APPEND `var CheckSelectOptions = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = "CHECK SELECT-OPTIONS";` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_badi.ts` TO lt_js.
  APPEND `var CallBadi = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const call = seq(` TO lt_js.
  APPEND `      "CALL BADI",` TO lt_js.
  APPEND `      MethodSource,` TO lt_js.
  APPEND `      MethodCallBody` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, call);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_data.ts` TO lt_js.
  APPEND `var ClassData = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("CLASS-DATA", DataDefinition);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_data_begin.ts` TO lt_js.
  APPEND `var ClassDataBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", Integer);` TO lt_js.
  APPEND `    const structure = seq(` TO lt_js.
  APPEND `      "BEGIN OF",` TO lt_js.
  APPEND `      optPrio("COMMON PART"),` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      optPrio("READ-ONLY"),` TO lt_js.
  APPEND `      optPrio(occurs)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("CLASS-DATA", structure);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_data_end.ts` TO lt_js.
  APPEND `var ClassDataEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const common = seq("COMMON PART", optPrio(NamespaceSimpleName));` TO lt_js.
  APPEND `    const structure = seq(` TO lt_js.
  APPEND `      "END OF",` TO lt_js.
  APPEND `      altPrio(common, NamespaceSimpleName)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("CLASS-DATA", structure);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/select_loop.ts` TO lt_js.
  APPEND `var SelectLoop2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return new SelectLoop();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/do.ts` TO lt_js.
  APPEND `var Do = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const range = seq("RANGE", Source);` TO lt_js.
  APPEND `    const vary = seq(` TO lt_js.
  APPEND `      "VARYING",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "NEXT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio(range)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const times = seq(Source, "TIMES");` TO lt_js.
  APPEND `    return seq("DO", optPrio(per(plus(vary), times)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/break_id.ts` TO lt_js.
  APPEND `var BreakId = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const id = seq("ID", Field);` TO lt_js.
  APPEND `    const ret = seq("BREAK-POINT", id);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/interface_deferred.ts` TO lt_js.
  APPEND `var InterfaceDeferred = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "INTERFACE",` TO lt_js.
  APPEND `      InterfaceName,` TO lt_js.
  APPEND `      "DEFERRED",` TO lt_js.
  APPEND `      opt("PUBLIC")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/while.ts` TO lt_js.
  APPEND `var While = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const vary = seq("VARY", Target, "FROM", Source, "NEXT", Source);` TO lt_js.
  APPEND `    return seq("WHILE", Cond, star(vary));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/loop_at_screen.ts` TO lt_js.
  APPEND `var LoopAtScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const l = seq("LOOP AT SCREEN", opt(seq("INTO", Target)));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, l);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/loop.ts` TO lt_js.
  APPEND `var Loop = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const where = seq("WHERE", alt(ComponentCond, Dynamic));` TO lt_js.
  APPEND `    const group = ver("v740sp08" /* v740sp08 */, seq("GROUP BY", LoopGroupBy), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const step = ver("v757" /* v757 */, seq("STEP", Source));` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const to = seq("TO", Source);` TO lt_js.
  APPEND `    const usingKey = seq("USING KEY", altPrio(SimpleName, Dynamic));` TO lt_js.
  APPEND `    const options = per(LoopTarget, from, to, where, usingKey, group, step);` TO lt_js.
  APPEND `    const at = seq(` TO lt_js.
  APPEND `      opt(seq("SCREEN", failCombinator())),` TO lt_js.
  APPEND `      opt(ver("v740sp08" /* v740sp08 */, "GROUP", "open-abap" /* OpenABAP */)),` TO lt_js.
  APPEND `      LoopSource,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("LOOP AT", at);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/check.ts` TO lt_js.
  APPEND `var Check = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("CHECK", altPrio(Cond, FieldSub));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endprovide.ts` TO lt_js.
  APPEND `var EndProvide = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("ENDPROVIDE");` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/if.ts` TO lt_js.
  APPEND `var If = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("IF", Cond);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/convert_text.ts` TO lt_js.
  APPEND `var ConvertText = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "CONVERT TEXT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO SORTABLE CODE",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/log_point.ts` TO lt_js.
  APPEND `var LogPoint = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const subkey = seq("SUBKEY", Source);` TO lt_js.
  APPEND `    const fields = seq("FIELDS", plus(Source));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "LOG-POINT ID",` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      opt(subkey),` TO lt_js.
  APPEND `      opt(fields)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/window.ts` TO lt_js.
  APPEND `var Window = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ending = seq("ENDING AT", Source, Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "WINDOW STARTING AT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(ending)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endif.ts` TO lt_js.
  APPEND `var EndIf = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDIF");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_enum.ts` TO lt_js.
  APPEND `var TypeEnum = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = ver("v751" /* v751 */, seq("TYPES", NamespaceSimpleName, Value), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_enum_begin.ts` TO lt_js.
  APPEND `var TypeEnumBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const structure = seq("STRUCTURE", NamespaceSimpleName);` TO lt_js.
  APPEND `    const base = seq("BASE TYPE", NamespaceSimpleName);` TO lt_js.
  APPEND `    const em = seq("ENUM", NamespaceSimpleName, opt(structure), opt(base));` TO lt_js.
  APPEND `    const ret = ver("v751" /* v751 */, seq("TYPES", "BEGIN OF", em), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_enum_end.ts` TO lt_js.
  APPEND `var TypeEnumEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const structure = seq("STRUCTURE", NamespaceSimpleName);` TO lt_js.
  APPEND `    const ret = ver("v751" /* v751 */, seq("TYPES", "END OF", "ENUM", NamespaceSimpleName, opt(structure)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_run_time.ts` TO lt_js.
  APPEND `var SetRunTime = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const clock = seq("CLOCK RESOLUTION", alt("LOW", "HIGH"));` TO lt_js.
  APPEND `    const analyzer = seq("ANALYZER", alt("ON", "OFF"));` TO lt_js.
  APPEND `    const ret = seq("SET RUN TIME", alt(clock, analyzer));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/field_group.ts` TO lt_js.
  APPEND `var FieldGroup = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("FIELD-GROUPS", plus(Field));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/print_control.ts` TO lt_js.
  APPEND `var PrintControl = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const index = seq("INDEX-LINE", Source);` TO lt_js.
  APPEND `    const func = seq("FUNCTION", Source);` TO lt_js.
  APPEND `    const line = seq("LINE", Source);` TO lt_js.
  APPEND `    const position = seq("POSITION", Source);` TO lt_js.
  APPEND `    const size = seq("SIZE", Source);` TO lt_js.
  APPEND `    const cpi = seq("CPI", Source);` TO lt_js.
  APPEND `    const lpi = seq("LPI", Source);` TO lt_js.
  APPEND `    const font = seq("FONT", Source);` TO lt_js.
  APPEND `    const ret = seq("PRINT-CONTROL", per(index, func, line, position, size, cpi, lpi, font));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/extract.ts` TO lt_js.
  APPEND `var Extract = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("EXTRACT", opt(Field));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/sum.ts` TO lt_js.
  APPEND `var Sum = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "SUM");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_of_page.ts` TO lt_js.
  APPEND `var EndOfPage = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "END-OF-PAGE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/generate_report.ts` TO lt_js.
  APPEND `var GenerateReport = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const without = str("WITHOUT SELECTION-SCREEN");` TO lt_js.
  APPEND `    const message = seq("MESSAGE", Target);` TO lt_js.
  APPEND `    const include = seq("INCLUDE", Target);` TO lt_js.
  APPEND `    const line = seq("LINE", Target);` TO lt_js.
  APPEND `    const word = seq("WORD", Target);` TO lt_js.
  APPEND `    const offset = seq("OFFSET", Target);` TO lt_js.
  APPEND `    const headers = str("WITH PRECOMPILED HEADERS");` TO lt_js.
  APPEND `    const test = str("WITH TEST CODE");` TO lt_js.
  APPEND `    const messageid = seq("MESSAGE-ID", Target);` TO lt_js.
  APPEND `    const trace = seq("TRACE-FILE", Target);` TO lt_js.
  APPEND `    const shortdumpid = seq("SHORTDUMP-ID", Target);` TO lt_js.
  APPEND `    const directory = seq("DIRECTORY ENTRY", Target);` TO lt_js.
  APPEND `    const options = per(without, message, include, trace, line, word, offset, headers, test, messageid, shortdumpid, directory);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GENERATE REPORT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/elseif.ts` TO lt_js.
  APPEND `var ElseIf = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("ELSEIF", Cond);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/else.ts` TO lt_js.
  APPEND `var Else = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ELSE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/perform.ts` TO lt_js.
  APPEND `var Perform = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const level = seq("LEVEL", Source);` TO lt_js.
  APPEND `    const commit = alt(` TO lt_js.
  APPEND `      seq("ON COMMIT", opt(level)),` TO lt_js.
  APPEND `      "ON ROLLBACK"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const short = verNot("Cloud" /* Cloud */, seq(` TO lt_js.
  APPEND `      FormName,` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      IncludeName,` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const program = seq("IN PROGRAM", opt(alt(Dynamic, IncludeName)));` TO lt_js.
  APPEND `    const found = str("IF FOUND");` TO lt_js.
  APPEND `    const full = seq(` TO lt_js.
  APPEND `      alt(FormName, Dynamic),` TO lt_js.
  APPEND `      opt(verNot("Cloud" /* Cloud */, program))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const normal = seq(` TO lt_js.
  APPEND `      opt(found),` TO lt_js.
  APPEND `      opt(PerformTables),` TO lt_js.
  APPEND `      opt(PerformUsing),` TO lt_js.
  APPEND `      opt(PerformChanging),` TO lt_js.
  APPEND `      opt(found),` TO lt_js.
  APPEND `      opt(commit)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const of = seq("OF", plus(FormName));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "PERFORM",` TO lt_js.
  APPEND `      alt(short, full),` TO lt_js.
  APPEND `      altPrio(of, normal)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/append.ts` TO lt_js.
  APPEND `var Append = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const assigning = seq("ASSIGNING", FSTarget);` TO lt_js.
  APPEND `    const reference = seq("REFERENCE INTO", Target);` TO lt_js.
  APPEND `    const sorted = seq("SORTED BY", Field);` TO lt_js.
  APPEND `    const fromIndex = seq("FROM", Source);` TO lt_js.
  APPEND `    const toIndex = seq("TO", Source);` TO lt_js.
  APPEND `    const toTarget = seq("TO", Target);` TO lt_js.
  APPEND `    const src = alt(SimpleSource4, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */));` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "APPEND",` TO lt_js.
  APPEND `      altPrio("INITIAL LINE", seq(optPrio("LINES OF"), src)),` TO lt_js.
  APPEND `      optPrio(fromIndex),` TO lt_js.
  APPEND `      opt(alt(seq(toIndex, toTarget), toTarget)),` TO lt_js.
  APPEND `      opt(altPrio(assigning, reference)),` TO lt_js.
  APPEND `      optPrio("CASTING"),` TO lt_js.
  APPEND `      optPrio(sorted)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/clear.ts` TO lt_js.
  APPEND `var Clear = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const wit = seq("WITH", Source);` TO lt_js.
  APPEND `    const mode = altPrio("IN CHARACTER MODE", "IN BYTE MODE");` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "CLEAR",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      optPrio(wit),` TO lt_js.
  APPEND `      optPrio(mode)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/concatenate.ts` TO lt_js.
  APPEND `var Concatenate = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const mode = seq("IN", altPrio("BYTE", "CHARACTER"), "MODE");` TO lt_js.
  APPEND `    const blanks = str("RESPECTING BLANKS");` TO lt_js.
  APPEND `    const sep = seq("SEPARATED BY", SimpleSource3);` TO lt_js.
  APPEND `    const options = per(mode, blanks, sep);` TO lt_js.
  APPEND `    const sourc = seq(SimpleSource3, plus(SimpleSource3));` TO lt_js.
  APPEND `    const lines = seq("LINES OF", Source);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "CONCATENATE",` TO lt_js.
  APPEND `      altPrio(lines, sourc),` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      optPrio(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/enddo.ts` TO lt_js.
  APPEND `var EndDo = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDDO");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endclass.ts` TO lt_js.
  APPEND `var EndClass = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDCLASS");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/try.ts` TO lt_js.
  APPEND `var Try = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("TRY");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endtry.ts` TO lt_js.
  APPEND `var EndTry = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDTRY");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/assert.ts` TO lt_js.
  APPEND `var Assert = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const fields = seq("FIELDS", plus(Source));` TO lt_js.
  APPEND `    const subkey = seq("SUBKEY", Source);` TO lt_js.
  APPEND `    const id = seq("ID", NamespaceSimpleName);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "ASSERT",` TO lt_js.
  APPEND `      optPrio(id),` TO lt_js.
  APPEND `      optPrio(subkey),` TO lt_js.
  APPEND `      opt(fields),` TO lt_js.
  APPEND `      optPrio("CONDITION"),` TO lt_js.
  APPEND `      Cond` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/return.ts` TO lt_js.
  APPEND `var Return = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(str("RETURN"), optPrio(ver("v758" /* v758 */, Source, "open-abap" /* OpenABAP */)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endwhile.ts` TO lt_js.
  APPEND `var EndWhile = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDWHILE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/constant.ts` TO lt_js.
  APPEND `var Constant2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const def = seq(` TO lt_js.
  APPEND `      DefinitionName,` TO lt_js.
  APPEND `      opt(ConstantFieldLength),` TO lt_js.
  APPEND `      per(Type, Value, Decimals, Length)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(alt("CONSTANT", "CONSTANTS"), def, optPrio("%_PREDEFINED"));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/catch.ts` TO lt_js.
  APPEND `var Catch = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "CATCH",` TO lt_js.
  APPEND `      optPrio("BEFORE UNWIND"),` TO lt_js.
  APPEND `      plus(ClassName),` TO lt_js.
  APPEND `      opt(seq("INTO", Target))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/infotypes.ts` TO lt_js.
  APPEND `var Infotypes = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", Constant);` TO lt_js.
  APPEND `    const name = seq("NAME", FieldSub);` TO lt_js.
  APPEND `    const mode = "MODE N";` TO lt_js.
  APPEND `    const valid = seq("VALID FROM", Source, "TO", Source);` TO lt_js.
  APPEND `    const ret = seq("INFOTYPES", regex(/^\d\d\d\d$/), optPrio(valid), optPrio(name), optPrio(occurs), optPrio(mode));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/message.ts` TO lt_js.
  APPEND `var Message = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const like = seq("DISPLAY LIKE", Source);` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    const raising = seq("RAISING", ExceptionName);` TO lt_js.
  APPEND `    const options = per(like, into, raising);` TO lt_js.
  APPEND `    const type = seq("TYPE", Source);` TO lt_js.
  APPEND `    const sou = altPrio(options, MessageSourceSource);` TO lt_js.
  APPEND `    const sourc = alt(` TO lt_js.
  APPEND `      sou,` TO lt_js.
  APPEND `      seq(MessageSourceSource, sou),` TO lt_js.
  APPEND `      seq(MessageSourceSource, MessageSourceSource, sou),` TO lt_js.
  APPEND `      seq(MessageSourceSource, MessageSourceSource, MessageSourceSource, options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const mwith = seq("WITH", MessageSourceSource, opt(sourc));` TO lt_js.
  APPEND `    const foo = seq(MessageSource, opt(options), opt(mwith));` TO lt_js.
  APPEND `    const text = seq(MessageSourceSource, type, optPrio(like), optPrio(raising));` TO lt_js.
  APPEND `    const cloud1 = seq(opt(seq("WITH", Source, opt(Source), opt(Source), opt(Source))), altPrio(into, raising));` TO lt_js.
  APPEND `    const cloud2 = seq(altPrio(into, raising), opt(seq("WITH", Source, opt(Source), opt(Source), opt(Source))));` TO lt_js.
  APPEND `    const cloud = seq(MessageSource, alt(cloud1, cloud2));` TO lt_js.
  APPEND `    const ret = seq("MESSAGE", altPrio(verNot("Cloud" /* Cloud */, foo), verNot("Cloud" /* Cloud */, text), ver("Cloud" /* Cloud */, cloud)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/read_table.ts` TO lt_js.
  APPEND `var ReadTable = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const comparing = seq("COMPARING", alt(plus(FieldSub), plus(Dynamic)));` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const components = seq(alt(Field, Dynamic), "COMPONENTS", ComponentCompareSimple);` TO lt_js.
  APPEND `    const key = seq(` TO lt_js.
  APPEND `      altPrio("WITH KEY", "WITH TABLE KEY"),` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        ComponentCompareSimple,` TO lt_js.
  APPEND `        components,` TO lt_js.
  APPEND `        seq(optPrio("="), Source)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const using = seq("USING KEY", alt(Field, Dynamic));` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const transporting = seq("TRANSPORTING", altPrio("ALL FIELDS", "NO FIELDS", TransportingFields));` TO lt_js.
  APPEND `    const common = [ReadTableTarget, comparing, "CASTING", transporting, "BINARY SEARCH"];` TO lt_js.
  APPEND `    const perm = alt(` TO lt_js.
  APPEND `      per(alt(index, from), using, ...common),` TO lt_js.
  APPEND `      per(key, ...common),` TO lt_js.
  APPEND `      per(...common)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "READ TABLE",` TO lt_js.
  APPEND `      alt(SimpleSource2, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */)),` TO lt_js.
  APPEND `      opt(perm)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endloop.ts` TO lt_js.
  APPEND `var EndLoop = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDLOOP");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/case.ts` TO lt_js.
  APPEND `var Case = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("CASE", Source);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/create_object.ts` TO lt_js.
  APPEND `var CreateObject = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", ParameterListS);` TO lt_js.
  APPEND `    const exceptions = seq("EXCEPTIONS", ParameterListExceptions);` TO lt_js.
  APPEND `    const ptable = seq("PARAMETER-TABLE", Source);` TO lt_js.
  APPEND `    const etable = seq("EXCEPTION-TABLE", Source);` TO lt_js.
  APPEND `    const area = seq("AREA HANDLE", Source);` TO lt_js.
  APPEND `    const type = seq("TYPE", altPrio(ClassName, Dynamic));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CREATE OBJECT",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      optPrio(per(type, verNot("Cloud" /* Cloud */, area))),` TO lt_js.
  APPEND `      optPrio(altPrio(exporting, ptable)),` TO lt_js.
  APPEND `      optPrio(altPrio(exceptions, etable))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/select.ts` TO lt_js.
  APPEND `var Select2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const union = ver("v750" /* v750 */, seq("UNION", optPrio(altPrio("DISTINCT", "ALL")), Select), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return seq(Select, starPrio(union));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call.ts` TO lt_js.
  APPEND `var Call = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const call = seq("CALL METHOD", MethodSource, MethodCallBody);` TO lt_js.
  APPEND `    return altPrio(call, MethodCallChain);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_local_friends.ts` TO lt_js.
  APPEND `var ClassLocalFriends = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("CLASS", ClassName, "DEFINITION LOCAL FRIENDS", plusPrio(ClassName));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_deferred.ts` TO lt_js.
  APPEND `var ClassDeferred = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("CLASS", ClassName, "DEFINITION DEFERRED", optPrio("PUBLIC"));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/fieldsymbol.ts` TO lt_js.
  APPEND `var FieldSymbol2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const stru = seq("STRUCTURE", TypeName, "DEFAULT", Field);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "FIELD-SYMBOLS",` TO lt_js.
  APPEND `      FieldSymbol,` TO lt_js.
  APPEND `      opt(alt(Type, TypeTable, stru))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_definition.ts` TO lt_js.
  APPEND `var ClassDefinition = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const create = seq("CREATE", altPrio("PUBLIC", "PROTECTED", "PRIVATE"));` TO lt_js.
  APPEND `    const level = altPrio("CRITICAL", "HARMLESS", "DANGEROUS");` TO lt_js.
  APPEND `    const risk = seq("RISK LEVEL", level);` TO lt_js.
  APPEND `    const time = altPrio("LONG", "MEDIUM", "SHORT");` TO lt_js.
  APPEND `    const duration = seq("DURATION", time);` TO lt_js.
  APPEND `    const blah = per(` TO lt_js.
  APPEND `      ClassGlobal,` TO lt_js.
  APPEND `      ClassFinal,` TO lt_js.
  APPEND `      "ABSTRACT",` TO lt_js.
  APPEND `      seq("INHERITING FROM", SuperClassName),` TO lt_js.
  APPEND `      create,` TO lt_js.
  APPEND `      "FOR TESTING",` TO lt_js.
  APPEND `      risk,` TO lt_js.
  APPEND `      "SHARED MEMORY ENABLED",` TO lt_js.
  APPEND `      duration,` TO lt_js.
  APPEND `      ver("v754" /* v754 */, seq("FOR BEHAVIOR OF", BehaviorDefinitionName)),` TO lt_js.
  APPEND `      ClassFriends` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const def = seq("DEFINITION", optPrio(blah));` TO lt_js.
  APPEND `    return seq("CLASS", ClassName, def);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_implementation.ts` TO lt_js.
  APPEND `var ClassImplementation = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("CLASS", ClassName, "IMPLEMENTATION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/translate.ts` TO lt_js.
  APPEND `var Translate = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const cas = seq(` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      altPrio("UPPER", "LOWER"),` TO lt_js.
  APPEND `      "CASE"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const using = seq("USING", Source);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "TRANSLATE",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      altPrio(cas, using)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/exit.ts` TO lt_js.
  APPEND `var Exit = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("EXIT", opt(alt("FROM SQL", "FROM STEP-LOOP")));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endcase.ts` TO lt_js.
  APPEND `var EndCase = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDCASE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/constant_begin.ts` TO lt_js.
  APPEND `var ConstantBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("CONSTANTS BEGIN OF", DefinitionName, optPrio("%_PREDEFINED"));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/constant_end.ts` TO lt_js.
  APPEND `var ConstantEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("CONSTANTS", "END", "OF", DefinitionName);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/when_others.ts` TO lt_js.
  APPEND `var WhenOthers = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("WHEN OTHERS");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/when.ts` TO lt_js.
  APPEND `var When = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const sourc = seq(Source, starPrio(Or));` TO lt_js.
  APPEND `    return seq("WHEN", sourc);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/continue.ts` TO lt_js.
  APPEND `var Continue = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("CONTINUE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/assign.ts` TO lt_js.
  APPEND `var Assign = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const type = seq("TYPE", altPrio(Dynamic, TypeName));` TO lt_js.
  APPEND `    const like = seq("LIKE", altPrio(Dynamic, Source));` TO lt_js.
  APPEND `    const handle = seq("TYPE HANDLE", Source);` TO lt_js.
  APPEND `    const range = seq("RANGE", Source);` TO lt_js.
  APPEND `    const decimals = seq("DECIMALS", Source);` TO lt_js.
  APPEND `    const casting = seq("CASTING", opt(alt(like, handle, per(type, decimals))));` TO lt_js.
  APPEND `    const obsoleteType = seq("TYPE", Source, optPrio(decimals));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "ASSIGN",` TO lt_js.
  APPEND `      opt(seq(Target, "INCREMENT")),` TO lt_js.
  APPEND `      AssignSource,` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      FSTarget,` TO lt_js.
  APPEND `      opt(altPrio(casting, obsoleteType, decimals)),` TO lt_js.
  APPEND `      opt(range),` TO lt_js.
  APPEND `      opt(ver("v757" /* v757 */, "ELSE UNASSIGN"))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_badi.ts` TO lt_js.
  APPEND `var GetBadi = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const filters = seq("FILTERS", ParameterListS);` TO lt_js.
  APPEND `    const context = seq("CONTEXT", Source);` TO lt_js.
  APPEND `    const type = seq("TYPE", Dynamic);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET BADI",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(type),` TO lt_js.
  APPEND `      opt(filters),` TO lt_js.
  APPEND `      opt(context)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/suppress_dialog.ts` TO lt_js.
  APPEND `var SuppressDialog = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("SUPPRESS DIALOG");` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type.ts` TO lt_js.
  APPEND `var Type2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const simple = per(Type, Decimals, Length);` TO lt_js.
  APPEND `    const def = seq(` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      opt(ConstantFieldLength),` TO lt_js.
  APPEND `      opt(alt(simple, TypeTable, TypeStructure))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const boxed = ver("v702" /* v702 */, "BOXED");` TO lt_js.
  APPEND `    const ret = seq("TYPES", def, opt(boxed));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/hide.ts` TO lt_js.
  APPEND `var Hide = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("HIDE", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_locale.ts` TO lt_js.
  APPEND `var GetLocale = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const country = seq("COUNTRY", Target);` TO lt_js.
  APPEND `    const modifier = seq("MODIFIER", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET LOCALE LANGUAGE",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      country,` TO lt_js.
  APPEND `      modifier` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_locale.ts` TO lt_js.
  APPEND `var SetLocale = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const country = seq("COUNTRY", Source);` TO lt_js.
  APPEND `    const modifier = seq("MODIFIER", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET LOCALE LANGUAGE",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(country),` TO lt_js.
  APPEND `      opt(modifier)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/commit.ts` TO lt_js.
  APPEND `var Commit = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const work = seq("WORK", opt("AND WAIT"));` TO lt_js.
  APPEND `    return seq("COMMIT", alt(work, DatabaseConnection));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/modify_screen.ts` TO lt_js.
  APPEND `var ModifyScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("MODIFY SCREEN", opt(seq("FROM", Source)));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/commit_entities.ts` TO lt_js.
  APPEND `var CommitEntities = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const failed = seq("FAILED", Target);` TO lt_js.
  APPEND `    const reported = seq("REPORTED", Target);` TO lt_js.
  APPEND `    const responses = seq("RESPONSES", failed, reported);` TO lt_js.
  APPEND `    const s = seq(` TO lt_js.
  APPEND `      "COMMIT ENTITIES",` TO lt_js.
  APPEND `      optPrio("IN SIMULATION MODE"),` TO lt_js.
  APPEND `      opt(responses),` TO lt_js.
  APPEND `      opt(seq("RESPONSE OF", NamespaceSimpleName, per(failed, reported)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v754" /* v754 */, s);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/modify_entities.ts` TO lt_js.
  APPEND `var ModifyEntities = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const withh = seq("WITH", Source);` TO lt_js.
  APPEND `    const fieldsWith = seq("FIELDS (", plus(SimpleName), ")", withh);` TO lt_js.
  APPEND `    const by = seq("BY", AssociationName);` TO lt_js.
  APPEND `    const relating = seq("RELATING TO", NamespaceSimpleName, "BY", NamespaceSimpleName);` TO lt_js.
  APPEND `    const execute = seq("EXECUTE", NamespaceSimpleName, "FROM", Source);` TO lt_js.
  APPEND `    const create = seq("CREATE", opt(by), "FROM", Source, opt(relating));` TO lt_js.
  APPEND `    const updateFrom = seq("UPDATE FROM", Source, opt(relating));` TO lt_js.
  APPEND `    const deleteFrom = seq("DELETE FROM", Source);` TO lt_js.
  APPEND `    const updateFields = seq("UPDATE", fieldsWith);` TO lt_js.
  APPEND `    const updateSetFields = seq("UPDATE SET FIELDS WITH", Source);` TO lt_js.
  APPEND `    const operation = alt(` TO lt_js.
  APPEND `      updateSetFields,` TO lt_js.
  APPEND `      seq("CREATE SET FIELDS WITH", Source),` TO lt_js.
  APPEND `      updateFields,` TO lt_js.
  APPEND `      deleteFrom,` TO lt_js.
  APPEND `      updateFrom,` TO lt_js.
  APPEND `      create,` TO lt_js.
  APPEND `      execute,` TO lt_js.
  APPEND `      seq("CREATE", opt(by), optPrio("AUTO FILL CID"), altPrio(withh, fieldsWith))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const failed = seq("FAILED", Target);` TO lt_js.
  APPEND `    const result = seq("RESULT", Target);` TO lt_js.
  APPEND `    const mapped = seq("MAPPED", Target);` TO lt_js.
  APPEND `    const reported = seq("REPORTED", Target);` TO lt_js.
  APPEND `    const end = optPrio(per(` TO lt_js.
  APPEND `      failed,` TO lt_js.
  APPEND `      result,` TO lt_js.
  APPEND `      mapped,` TO lt_js.
  APPEND `      reported` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    const entities = seq(` TO lt_js.
  APPEND `      optPrio("AUGMENTING"),` TO lt_js.
  APPEND `      "ENTITIES OF",` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      opt("IN LOCAL MODE"),` TO lt_js.
  APPEND `      plusPrio(seq("ENTITY", NamespaceSimpleName, plus(operation)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const create2 = seq("CREATE", fieldsWith, opt(seq("CREATE BY", AssociationName, fieldsWith)));` TO lt_js.
  APPEND `    const create3 = seq("CREATE BY", AssociationName, fieldsWith);` TO lt_js.
  APPEND `    const create4 = seq("CREATE FROM", Source, plus(seq("CREATE BY", AssociationName, "FROM", Source)));` TO lt_js.
  APPEND `    const entity = seq(` TO lt_js.
  APPEND `      "ENTITY",` TO lt_js.
  APPEND `      opt("IN LOCAL MODE"),` TO lt_js.
  APPEND `      alt(NamespaceSimpleName, EntityAssociation),` TO lt_js.
  APPEND `      alt(execute, create, updateFields, deleteFrom, updateSetFields, updateFrom, create2, create3, create4)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v754" /* v754 */, seq("MODIFY", alt(entities, entity), end));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/read_entities.ts` TO lt_js.
  APPEND `var ReadEntities = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const fields = seq("FIELDS", tok(WParenLeftW), plus(SimpleName), tok(WParenRightW), "WITH", Source);` TO lt_js.
  APPEND `    const all = seq("ALL FIELDS WITH", Source);` TO lt_js.
  APPEND `    const result = seq("RESULT", Target);` TO lt_js.
  APPEND `    const failed = seq("FAILED", Target);` TO lt_js.
  APPEND `    const reported = seq("REPORTED", Target);` TO lt_js.
  APPEND `    const foo = seq(` TO lt_js.
  APPEND `      opt(seq("BY", AssociationName)),` TO lt_js.
  APPEND `      alt(fields, from, all),` TO lt_js.
  APPEND `      optPrio(result)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const entity = seq(` TO lt_js.
  APPEND `      "ENTITY",` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      plus(foo)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const s = seq(` TO lt_js.
  APPEND `      "ENTITIES OF",` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      opt("IN LOCAL MODE"),` TO lt_js.
  APPEND `      plus(entity),` TO lt_js.
  APPEND `      optPrio(seq("LINK", Target)),` TO lt_js.
  APPEND `      optPrio(per(failed, reported))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const byall = seq("BY", AssociationName, all);` TO lt_js.
  APPEND `    const by = seq("BY", AssociationName, fields);` TO lt_js.
  APPEND `    const sub2 = seq(alt(all, fields, from, by, byall), result);` TO lt_js.
  APPEND `    const single = seq("ENTITY", opt("IN LOCAL MODE"), alt(NamespaceSimpleName, EntityAssociation), plus(sub2), optPrio(failed), optPrio(reported));` TO lt_js.
  APPEND `    return ver("v754" /* v754 */, seq("READ", alt(s, single)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/rollback_entities.ts` TO lt_js.
  APPEND `var RollbackEntities = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const s = "ROLLBACK ENTITIES";` TO lt_js.
  APPEND `    return ver("v754" /* v754 */, s);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/summary.ts` TO lt_js.
  APPEND `var Summary = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "SUMMARY");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/input.ts` TO lt_js.
  APPEND `var Input = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "INPUT");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/on_change.ts` TO lt_js.
  APPEND `var OnChange = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const or = seq("OR", Target);` TO lt_js.
  APPEND `    const ret = seq("ON CHANGE OF", Target, star(or));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at_user_command.ts` TO lt_js.
  APPEND `var AtUserCommand = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "AT USER-COMMAND");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/position.ts` TO lt_js.
  APPEND `var Position2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("POSITION", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/resume.ts` TO lt_js.
  APPEND `var Resume = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("RESUME");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/stop.ts` TO lt_js.
  APPEND `var Stop = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "STOP");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_pf_status.ts` TO lt_js.
  APPEND `var GetPFStatus = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const program = seq("PROGRAM", Source);` TO lt_js.
  APPEND `    const excl = seq("EXCLUDING", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET PF-STATUS",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(program),` TO lt_js.
  APPEND `      opt(excl)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_report.ts` TO lt_js.
  APPEND `var DeleteReport = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const state = seq("STATE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "DELETE REPORT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio(state)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/controls.ts` TO lt_js.
  APPEND `var Controls = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const tableview = seq("TABLEVIEW USING SCREEN", Source);` TO lt_js.
  APPEND `    const type = seq("TYPE", alt(tableview, "TABSTRIP"));` TO lt_js.
  APPEND `    const ret = seq("CONTROLS", NamespaceSimpleName, type);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at_line_selection.ts` TO lt_js.
  APPEND `var AtLineSelection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "AT LINE-SELECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/new_page.ts` TO lt_js.
  APPEND `var NewPage = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const line = seq("LINE-SIZE", Source);` TO lt_js.
  APPEND `    const print = seq("PRINT", alt("OFF", "ON"));` TO lt_js.
  APPEND `    const parameters = seq("PARAMETERS", Source);` TO lt_js.
  APPEND `    const destination = seq("DESTINATION", Source);` TO lt_js.
  APPEND `    const archive = seq("ARCHIVE PARAMETERS", Source);` TO lt_js.
  APPEND `    const lineCount = seq("LINE-COUNT", Source);` TO lt_js.
  APPEND `    const coverText = seq("COVER TEXT", Source);` TO lt_js.
  APPEND `    const coverPage = seq("SAP COVER PAGE", Source);` TO lt_js.
  APPEND `    const immediately = seq("IMMEDIATELY", Source);` TO lt_js.
  APPEND `    const copies = seq("COPIES", Source);` TO lt_js.
  APPEND `    const keep = seq("KEEP IN SPOOL", Source);` TO lt_js.
  APPEND `    const layout = seq("LAYOUT", Source);` TO lt_js.
  APPEND `    const listAuth = seq("LIST AUTHORITY", Source);` TO lt_js.
  APPEND `    const department = seq("DEPARTMENT", Source);` TO lt_js.
  APPEND `    const receiver = seq("RECEIVER", Source);` TO lt_js.
  APPEND `    const dataset = seq("LIST DATASET", Source);` TO lt_js.
  APPEND `    const name = seq("LIST NAME", Source);` TO lt_js.
  APPEND `    const newList = seq("NEW LIST IDENTIFICATION", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "NEW-PAGE",` TO lt_js.
  APPEND `      opt(per(` TO lt_js.
  APPEND `        print,` TO lt_js.
  APPEND `        alt("NO-TITLE", "WITH-TITLE"),` TO lt_js.
  APPEND `        alt("NO-HEADING", "WITH-HEADING"),` TO lt_js.
  APPEND `        "NO DIALOG",` TO lt_js.
  APPEND `        "NO-TOPOFPAGE",` TO lt_js.
  APPEND `        parameters,` TO lt_js.
  APPEND `        listAuth,` TO lt_js.
  APPEND `        immediately,` TO lt_js.
  APPEND `        dataset,` TO lt_js.
  APPEND `        coverPage,` TO lt_js.
  APPEND `        newList,` TO lt_js.
  APPEND `        keep,` TO lt_js.
  APPEND `        department,` TO lt_js.
  APPEND `        name,` TO lt_js.
  APPEND `        layout,` TO lt_js.
  APPEND `        destination,` TO lt_js.
  APPEND `        receiver,` TO lt_js.
  APPEND `        copies,` TO lt_js.
  APPEND `        coverText,` TO lt_js.
  APPEND `        archive,` TO lt_js.
  APPEND `        "NEW-SECTION",` TO lt_js.
  APPEND `        lineCount,` TO lt_js.
  APPEND `        line` TO lt_js.
  APPEND `      ))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_dataset.ts` TO lt_js.
  APPEND `var SetDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("SET DATASET", Source, "POSITION", alt(Source, "END OF FILE"));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_property.ts` TO lt_js.
  APPEND `var GetProperty = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET PROPERTY OF",` TO lt_js.
  APPEND `      FieldSub,` TO lt_js.
  APPEND `      alt(Source, ConstantString),` TO lt_js.
  APPEND `      "=",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt("NO FLUSH"),` TO lt_js.
  APPEND `      opt(alt("QUEUE-ONLY", "QUEUEONLY")),` TO lt_js.
  APPEND `      opt(OLEExporting)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/scroll_list.ts` TO lt_js.
  APPEND `var ScrollList = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const line = seq("LINE", Source);` TO lt_js.
  APPEND `    const column = seq("TO COLUMN", Source);` TO lt_js.
  APPEND `    const to = seq(` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        "FIRST PAGE",` TO lt_js.
  APPEND `        "LAST PAGE",` TO lt_js.
  APPEND `        seq("PAGE", Source)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const pages = seq(Source, "PAGES");` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SCROLL LIST",` TO lt_js.
  APPEND `      per(` TO lt_js.
  APPEND `        index,` TO lt_js.
  APPEND `        seq(alt(to, "BACKWARD", "FORWARD"), opt(pages)),` TO lt_js.
  APPEND `        seq(alt("LEFT", "RIGHT"), opt(seq("BY", Source, "PLACES"))),` TO lt_js.
  APPEND `        column,` TO lt_js.
  APPEND `        line` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/load_of_program.ts` TO lt_js.
  APPEND `var LoadOfProgram = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("LOAD-OF-PROGRAM");` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/top_of_page.ts` TO lt_js.
  APPEND `var TopOfPage = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("TOP-OF-PAGE", opt("DURING LINE-SELECTION"));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/truncate_dataset.ts` TO lt_js.
  APPEND `var TruncateDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, seq("TRUNCATE DATASET", Source, "AT CURRENT POSITION"));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_update_task.ts` TO lt_js.
  APPEND `var SetUpdateTask = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "SET UPDATE TASK LOCAL");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_user_command.ts` TO lt_js.
  APPEND `var SetUserCommand = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("SET USER-COMMAND", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/rollback.ts` TO lt_js.
  APPEND `var Rollback = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("ROLLBACK", altPrio("WORK", DatabaseConnection));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_internal.ts` TO lt_js.
  APPEND `var DeleteInternal = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const keyName = altPrio(SimpleName, Dynamic);` TO lt_js.
  APPEND `    const using = seq("USING KEY", keyName);` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const fromTo = seq(` TO lt_js.
  APPEND `      optPrio(from),` TO lt_js.
  APPEND `      optPrio(seq("TO", Source))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const where = seq("WHERE", alt(ComponentCond, Dynamic));` TO lt_js.
  APPEND `    const key = seq(` TO lt_js.
  APPEND `      "WITH TABLE KEY",` TO lt_js.
  APPEND `      opt(seq(keyName, "COMPONENTS")),` TO lt_js.
  APPEND `      plus(ComponentCompare)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const table = seq(` TO lt_js.
  APPEND `      "TABLE",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      alt(per(index, using), seq(optPrio(from), optPrio(using)), key)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const other = seq(` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      alt(per(index, using), fromTo, key),` TO lt_js.
  APPEND `      opt(where)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const f = seq(SimpleFieldChain2, optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    const adjacent = seq(` TO lt_js.
  APPEND `      "ADJACENT DUPLICATES FROM",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      optPrio(using),` TO lt_js.
  APPEND `      opt(seq("COMPARING", altPrio("ALL FIELDS", plus(altPrio(f, Dynamic))))),` TO lt_js.
  APPEND `      optPrio(using)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("DELETE", alt(table, adjacent, other));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_database.ts` TO lt_js.
  APPEND `var DeleteDatabase = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const where = seq("WHERE", altPrio(SQLCond, Dynamic));` TO lt_js.
  APPEND `    const from = seq("FROM", DatabaseTable, optPrio(SQLClient), optPrio(DatabaseConnection), opt(where));` TO lt_js.
  APPEND `    const fromSomething = seq("FROM", opt("TABLE"), SQLSourceSimple);` TO lt_js.
  APPEND `    const table = seq(` TO lt_js.
  APPEND `      DatabaseTable,` TO lt_js.
  APPEND `      optPrio(SQLClient),` TO lt_js.
  APPEND `      optPrio(DatabaseConnection),` TO lt_js.
  APPEND `      optPrio(fromSomething)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("DELETE", altPrio(from, table));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_dataset.ts` TO lt_js.
  APPEND `var DeleteDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("DELETE DATASET", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/free_memory.ts` TO lt_js.
  APPEND `var FreeMemory = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("FREE MEMORY", optPrio(seq("ID", Source)));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/catch_system_exceptions.ts` TO lt_js.
  APPEND `var CatchSystemExceptions = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CATCH SYSTEM-EXCEPTIONS",` TO lt_js.
  APPEND `      plus(seq(Field, "=", Source))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endcatch.ts` TO lt_js.
  APPEND `var EndCatch = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "ENDCATCH");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/assign_local_copy.ts` TO lt_js.
  APPEND `var AssignLocalCopy = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const init = seq("INITIAL", alt(Source, Dynamic));` TO lt_js.
  APPEND `    const iline = seq("INITIAL LINE OF", alt(Source, Dynamic));` TO lt_js.
  APPEND `    const main2 = seq("MAIN TABLE FIELD", Dynamic);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "ASSIGN LOCAL COPY OF",` TO lt_js.
  APPEND `      alt(init, iline, main2, Source),` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      TargetFieldSymbol` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_extended_check.ts` TO lt_js.
  APPEND `var SetExtendedCheck = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("SET EXTENDED CHECK", alt("OFF", "ON"));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/split.ts` TO lt_js.
  APPEND `var Split = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const mode = seq("IN", alt("CHARACTER", "BYTE"), "MODE");` TO lt_js.
  APPEND `    const into = altPrio(seq("TABLE", Target, opt(mode)), seq(plus(Target), opt(mode)));` TO lt_js.
  APPEND `    const ret = seq("SPLIT", Source, "AT", Source, "INTO", into);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/new_line.ts` TO lt_js.
  APPEND `var NewLine = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "NEW-LINE",` TO lt_js.
  APPEND `      opt(alt("SCROLLING", "NO-SCROLLING"))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/free_object.ts` TO lt_js.
  APPEND `var FreeObject = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("FREE OBJECT", Target, opt("NO FLUSH"));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/sort.ts` TO lt_js.
  APPEND `var Sort = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const order = altPrio("ASCENDING", "DESCENDING");` TO lt_js.
  APPEND `    const sel = alt(ComponentChain, Dynamic, SourceFieldSymbol);` TO lt_js.
  APPEND `    const text = "AS TEXT";` TO lt_js.
  APPEND `    const fields = plus(seq(sel, optPrio(text), optPrio(order), optPrio(text)));` TO lt_js.
  APPEND `    const by = seq("BY", fields);` TO lt_js.
  APPEND `    const normal = seq(Target, opt(per(order, by, "STABLE", text)));` TO lt_js.
  APPEND `    return seq("SORT", normal);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/replace.ts` TO lt_js.
  APPEND `var Replace = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const length = seq("LENGTH", Source);` TO lt_js.
  APPEND `    const offset = seq("OFFSET", Source);` TO lt_js.
  APPEND `    const section = seq(` TO lt_js.
  APPEND `      opt("IN"),` TO lt_js.
  APPEND `      "SECTION",` TO lt_js.
  APPEND `      per(offset, length),` TO lt_js.
  APPEND `      "OF",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const source = seq(opt("OF"), FindType, Source);` TO lt_js.
  APPEND `    const cas = altPrio("IGNORING CASE", "RESPECTING CASE");` TO lt_js.
  APPEND `    const repl = seq("REPLACEMENT COUNT", Target);` TO lt_js.
  APPEND `    const replo = seq("REPLACEMENT OFFSET", Target);` TO lt_js.
  APPEND `    const repll = seq("REPLACEMENT LENGTH", Target);` TO lt_js.
  APPEND `    const repli = seq("REPLACEMENT LINE", Target);` TO lt_js.
  APPEND `    const occ = altPrio(` TO lt_js.
  APPEND `      "ALL OCCURRENCES",` TO lt_js.
  APPEND `      "ALL OCCURENCES",` TO lt_js.
  APPEND `      "FIRST OCCURENCE",` TO lt_js.
  APPEND `      "FIRST OCCURRENCE"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const mode = alt(` TO lt_js.
  APPEND `      "IN CHARACTER MODE",` TO lt_js.
  APPEND `      "IN BYTE MODE"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const wit = seq("WITH", Source);` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "REPLACE",` TO lt_js.
  APPEND `      per(section, seq(opt(occ), source)),` TO lt_js.
  APPEND `      opt(seq("IN", opt("TABLE"), Target)),` TO lt_js.
  APPEND `      opt(per(wit, into, cas, mode, repl, replo, repll, repli, length))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/with_loop.ts` TO lt_js.
  APPEND `var WithLoop = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const as = seq(WithName, "AS", tok(WParenLeftW), SelectLoop, tok(WParenRightW));` TO lt_js.
  APPEND `    return ver("v751" /* v751 */, seq("WITH", plus(as), SelectLoop));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/with.ts` TO lt_js.
  APPEND `var With = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const as = seq(WithName, "AS", tok(WParenLeftW), SelectLoop, tok(WParenRightW));` TO lt_js.
  APPEND `    return ver("v751" /* v751 */, seq("WITH", plus(as), Select));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endwith.ts` TO lt_js.
  APPEND `var EndWith = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return ver("v751" /* v751 */, "ENDWITH");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/condense.ts` TO lt_js.
  APPEND `var Condense = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "CONDENSE",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt("NO-GAPS")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/insert_internal.ts` TO lt_js.
  APPEND `var InsertInternal = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const target = altPrio(Source, Dynamic);` TO lt_js.
  APPEND `    const assigning = seq("ASSIGNING", FSTarget);` TO lt_js.
  APPEND `    const ref = seq("REFERENCE INTO", Target);` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const initial = str("INITIAL LINE");` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    const intoTable = seq("INTO TABLE", Target, opt(alt(ref, assigning)));` TO lt_js.
  APPEND `    const to = seq("TO", Source);` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const fromTo = opt(per(from, to));` TO lt_js.
  APPEND `    const foo = alt(` TO lt_js.
  APPEND `      intoTable,` TO lt_js.
  APPEND `      seq(into, opt(per(index, alt(ref, assigning)))),` TO lt_js.
  APPEND `      per(index, alt(ref, assigning))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const lines = seq(` TO lt_js.
  APPEND `      "LINES OF",` TO lt_js.
  APPEND `      target,` TO lt_js.
  APPEND `      opt(fromTo)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const src = alt(SimpleSource4, ver("v740sp02" /* v740sp02 */, Source, "open-abap" /* OpenABAP */));` TO lt_js.
  APPEND `    const tab = seq("TABLE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "INSERT",` TO lt_js.
  APPEND `      altPrio(tab, seq(altPrio(initial, lines, src), foo))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/insert_database.ts` TO lt_js.
  APPEND `var InsertDatabase = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const sub2 = seq(tok(WParenLeftW), Select, tok(WParenRightW));` TO lt_js.
  APPEND `    const f = seq(` TO lt_js.
  APPEND `      opt(SQLClient),` TO lt_js.
  APPEND `      opt(DatabaseConnection),` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      opt("TABLE"),` TO lt_js.
  APPEND `      alt(SQLSource, sub2),` TO lt_js.
  APPEND `      opt("ACCEPTING DUPLICATE KEYS")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from = seq(` TO lt_js.
  APPEND `      DatabaseTable,` TO lt_js.
  APPEND `      opt(alt(f, SQLClient, DatabaseConnection))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const into = seq(` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      DatabaseTable,` TO lt_js.
  APPEND `      opt(SQLClient),` TO lt_js.
  APPEND `      opt(DatabaseConnection),` TO lt_js.
  APPEND `      "VALUES",` TO lt_js.
  APPEND `      SQLSource` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("INSERT", alt(from, into));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/insert_field_group.ts` TO lt_js.
  APPEND `var InsertFieldGroup = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    const src = alt(ver("v740sp02" /* v740sp02 */, plus(Source)), plus(SimpleSource1));` TO lt_js.
  APPEND `    const ret = seq("INSERT", src, into);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/update_database.ts` TO lt_js.
  APPEND `var UpdateDatabase = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const parameters = seq(SQLFieldAndValue, star(seq(opt(","), SQLFieldAndValue)));` TO lt_js.
  APPEND `    const set = seq(` TO lt_js.
  APPEND `      "SET",` TO lt_js.
  APPEND `      alt(parameters, Dynamic),` TO lt_js.
  APPEND `      opt(seq("WHERE", SQLCond))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const indicators = seq("INDICATORS SET STRUCTURE", ComponentName);` TO lt_js.
  APPEND `    const fromTable = seq(` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      opt("TABLE"),` TO lt_js.
  APPEND `      SQLSource,` TO lt_js.
  APPEND `      opt(ver("v755" /* v755 */, indicators))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "UPDATE",` TO lt_js.
  APPEND `      DatabaseTable,` TO lt_js.
  APPEND `      opt(SQLClient),` TO lt_js.
  APPEND `      opt(DatabaseConnection),` TO lt_js.
  APPEND `      opt(alt(fromTable, set))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/modify_database.ts` TO lt_js.
  APPEND `var ModifyDatabase = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const from = seq("FROM", opt("TABLE"), SQLSource);` TO lt_js.
  APPEND `    const options = per(DatabaseConnection, from, SQLClient);` TO lt_js.
  APPEND `    return seq("MODIFY", DatabaseTable, options);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/modify_internal.ts` TO lt_js.
  APPEND `var ModifyInternal = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const transporting = seq("TRANSPORTING", plus(alt(ComponentChainSimple, Dynamic)));` TO lt_js.
  APPEND `    const where = seq("WHERE", ComponentCond);` TO lt_js.
  APPEND `    const assigning = seq("ASSIGNING", FSTarget);` TO lt_js.
  APPEND `    const using = seq("USING KEY", SimpleName);` TO lt_js.
  APPEND `    const additions = per(where, assigning, using);` TO lt_js.
  APPEND `    const target = alt(Target, Dynamic);` TO lt_js.
  APPEND `    const options = alt(` TO lt_js.
  APPEND `      per(index, transporting),` TO lt_js.
  APPEND `      seq(from, opt(per(index, transporting, using))),` TO lt_js.
  APPEND `      seq(per(index, transporting), from, opt(per(index, transporting)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const long = seq("MODIFY", opt("TABLE"), target, opt(options), opt(additions));` TO lt_js.
  APPEND `    const simple = seq("MODIFY TABLE", target, per(from, using));` TO lt_js.
  APPEND `    return alt(long, simple);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/raise.ts` TO lt_js.
  APPEND `var Raise = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const mess = seq(` TO lt_js.
  APPEND `      "MESSAGE",` TO lt_js.
  APPEND `      MessageSource,` TO lt_js.
  APPEND `      opt(RaiseWith)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const messid = seq(` TO lt_js.
  APPEND `      "MESSAGE ID",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "NUMBER",` TO lt_js.
  APPEND `      altPrio(MessageNumber, Source),` TO lt_js.
  APPEND `      optPrio(RaiseWith)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", ParameterListS);` TO lt_js.
  APPEND `    const from = seq(` TO lt_js.
  APPEND `      "TYPE",` TO lt_js.
  APPEND `      ClassName,` TO lt_js.
  APPEND `      opt(alt(ver("v750" /* v750 */, alt(mess, messid), "open-abap" /* OpenABAP */), ver("v752" /* v752 */, "USING MESSAGE"))),` TO lt_js.
  APPEND `      optPrio(exporting)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const pre = altPrio(seq(optPrio("RESUMABLE"), "EXCEPTION"), "SHORTDUMP");` TO lt_js.
  APPEND `    const clas = seq(` TO lt_js.
  APPEND `      pre,` TO lt_js.
  APPEND `      altPrio(from, ver("v752" /* v752 */, Source, "open-abap" /* OpenABAP */), SimpleSource2)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("RAISE", altPrio(clas, ExceptionName));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/define.ts` TO lt_js.
  APPEND `var Define = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("DEFINE", MacroName);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/enddefine.ts` TO lt_js.
  APPEND `var EndOfDefinition = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "END-OF-DEFINITION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/find.ts` TO lt_js.
  APPEND `var Find = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      "IGNORING CASE",` TO lt_js.
  APPEND `      "RESPECTING CASE",` TO lt_js.
  APPEND `      "IN BYTE MODE",` TO lt_js.
  APPEND `      "IN CHARACTER MODE",` TO lt_js.
  APPEND `      seq("OF", Source),` TO lt_js.
  APPEND `      seq("FROM", Source),` TO lt_js.
  APPEND `      seq("TO", Source),` TO lt_js.
  APPEND `      seq("MATCH OFFSET", Target),` TO lt_js.
  APPEND `      seq("MATCH LINE", Target),` TO lt_js.
  APPEND `      seq("MATCH COUNT", Target),` TO lt_js.
  APPEND `      seq("MATCH LENGTH", Target),` TO lt_js.
  APPEND `      seq("LENGTH", Source),` TO lt_js.
  APPEND `      seq("RESULTS", Target),` TO lt_js.
  APPEND `      seq("SUBMATCHES", Target),` TO lt_js.
  APPEND `      seq("SUBMATCHES", Target, Target),` TO lt_js.
  APPEND `      seq("SUBMATCHES", plus(Target))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const sectionLength = seq("SECTION LENGTH", Source, "OF");` TO lt_js.
  APPEND `    const before = seq(` TO lt_js.
  APPEND `      optPrio(altPrio("TABLE", "SECTION OFFSET", sectionLength)),` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "FIND",` TO lt_js.
  APPEND `      opt(altPrio("FIRST OCCURRENCE OF", "ALL OCCURRENCES OF")),` TO lt_js.
  APPEND `      FindType,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "IN",` TO lt_js.
  APPEND `      before,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/move.ts` TO lt_js.
  APPEND `var Move = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const mov = verNot("Cloud" /* Cloud */, "MOVE");` TO lt_js.
  APPEND `    const move = seq(` TO lt_js.
  APPEND `      mov,` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        seq("EXACT", Source, "TO", Target),` TO lt_js.
  APPEND `        seq(Source, altPrio("?TO", "TO"), Target)` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      opt(seq("PERCENTAGE", Source, opt(alt("LEFT", "RIGHT"))))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const calcAssign = ver(` TO lt_js.
  APPEND `      "v754" /* v754 */,` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        seq(tok(WPlus), "="),` TO lt_js.
  APPEND `        seq(tok(WDash), "="),` TO lt_js.
  APPEND `        "/=",` TO lt_js.
  APPEND `        "*=",` TO lt_js.
  APPEND `        "&&="` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      "open-abap" /* OpenABAP */` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const chained = seq("=", star(seq(Target, "=")));` TO lt_js.
  APPEND `    const equals = altPrio(altPrio(chained, "?="), calcAssign);` TO lt_js.
  APPEND `    const eq = seq(Target, equals, Source);` TO lt_js.
  APPEND `    return alt(move, eq);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/move_corresponding.ts` TO lt_js.
  APPEND `var MoveCorresponding = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const keeping = ver("v740sp05" /* v740sp05 */, "KEEPING TARGET LINES", "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const expanding = ver("v740sp05" /* v740sp05 */, "EXPANDING NESTED TABLES", "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const move = seq(` TO lt_js.
  APPEND `      "MOVE-CORRESPONDING",` TO lt_js.
  APPEND `      optPrio("EXACT"),` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      // inline defintions not possible in this position,` TO lt_js.
  APPEND `      SimpleTarget,` TO lt_js.
  APPEND `      optPrio(expanding),` TO lt_js.
  APPEND `      optPrio(keeping)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return move;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_time.ts` TO lt_js.
  APPEND `var GetTime = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const options = seq(alt("STAMP FIELD", "FIELD"), Target);` TO lt_js.
  APPEND `    return seq("GET TIME", opt(options));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/enhancement_point.ts` TO lt_js.
  APPEND `var EnhancementPoint = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "ENHANCEMENT-POINT",` TO lt_js.
  APPEND `      FieldSub,` TO lt_js.
  APPEND `      "SPOTS",` TO lt_js.
  APPEND `      Field,` TO lt_js.
  APPEND `      opt("STATIC"),` TO lt_js.
  APPEND `      opt("INCLUDE BOUND")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/enhancement_section.ts` TO lt_js.
  APPEND `var EnhancementSection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "ENHANCEMENT-SECTION",` TO lt_js.
  APPEND `      seq(Field, starPrio(seq(tok(Dash), Field))),` TO lt_js.
  APPEND `      "SPOTS",` TO lt_js.
  APPEND `      Field,` TO lt_js.
  APPEND `      opt("STATIC"),` TO lt_js.
  APPEND `      opt("INCLUDE BOUND")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_enhancement_section.ts` TO lt_js.
  APPEND `var EndEnhancementSection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("END-ENHANCEMENT-SECTION");` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_handler.ts` TO lt_js.
  APPEND `var SetHandler = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const activation = seq("ACTIVATION", Source);` TO lt_js.
  APPEND `    const fo = seq("FOR", altPrio("ALL INSTANCES", Source));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET HANDLER",` TO lt_js.
  APPEND `      plus(MethodSource),` TO lt_js.
  APPEND `      optPrio(fo),` TO lt_js.
  APPEND `      optPrio(activation)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_left.ts` TO lt_js.
  APPEND `var SetLeft = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const column = seq("COLUMN", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, seq("SET LEFT SCROLL-BOUNDARY", opt(column)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/pack.ts` TO lt_js.
  APPEND `var Pack = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("PACK", Source, "TO", Target);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/case_type.ts` TO lt_js.
  APPEND `var CaseType = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return ver("v750" /* v750 */, seq("CASE TYPE OF", Source), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/when_type.ts` TO lt_js.
  APPEND `var WhenType = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    const type = seq(ClassName, optPrio(into));` TO lt_js.
  APPEND `    return ver("v750" /* v750 */, seq("WHEN TYPE", type), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/exec_sql.ts` TO lt_js.
  APPEND `var ExecSQL = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const performing = seq("PERFORMING", SimpleName);` TO lt_js.
  APPEND `    const ret = seq("EXEC SQL", opt(performing));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/open_cursor.ts` TO lt_js.
  APPEND `var OpenCursor = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const privileged = ver("v752" /* v752 */, seq("WITH", SQLPrivilegedAccess));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "OPEN CURSOR",` TO lt_js.
  APPEND `      optPrio("WITH HOLD"),` TO lt_js.
  APPEND `      SQLTarget,` TO lt_js.
  APPEND `      "FOR",` TO lt_js.
  APPEND `      Select,` TO lt_js.
  APPEND `      optPrio(privileged),` TO lt_js.
  APPEND `      optPrio(SQLOptions)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/communication.ts` TO lt_js.
  APPEND `var Communication = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const length = seq("LENGTH", Target);` TO lt_js.
  APPEND `    const returncode = seq("RETURNCODE", Source);` TO lt_js.
  APPEND `    const buffer = seq("BUFFER", Target);` TO lt_js.
  APPEND `    const init = seq("INIT ID", Source, "DESTINATION", Target);` TO lt_js.
  APPEND `    const allocate = seq("ALLOCATE ID", Source, opt(returncode));` TO lt_js.
  APPEND `    const send = seq("SEND ID", Source, opt(per(buffer, length)), opt(returncode));` TO lt_js.
  APPEND `    const deallocate = seq("DEALLOCATE ID", Source, opt(returncode));` TO lt_js.
  APPEND `    const accept = seq("ACCEPT ID", Source);` TO lt_js.
  APPEND `    const receive = seq(` TO lt_js.
  APPEND `      "RECEIVE ID",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "BUFFER",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(length),` TO lt_js.
  APPEND `      "DATAINFO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "STATUSINFO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "RECEIVED",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "COMMUNICATION",` TO lt_js.
  APPEND `      alt(init, allocate, send, deallocate, receive, accept)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/generate_subroutine.ts` TO lt_js.
  APPEND `var GenerateSubroutine = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const name = seq("NAME", Source);` TO lt_js.
  APPEND `    const message = seq("MESSAGE", Target);` TO lt_js.
  APPEND `    const messageid = seq("MESSAGE-ID", Target);` TO lt_js.
  APPEND `    const line = seq("LINE", Target);` TO lt_js.
  APPEND `    const word = seq("WORD", Target);` TO lt_js.
  APPEND `    const offset = seq("OFFSET", Target);` TO lt_js.
  APPEND `    const short = seq("SHORTDUMP-ID", Target);` TO lt_js.
  APPEND `    const include = seq("INCLUDE", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GENERATE SUBROUTINE POOL",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(name, message, line, word, include, offset, messageid, short)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/reject.ts` TO lt_js.
  APPEND `var Reject = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("REJECT", opt(Source));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/load_report.ts` TO lt_js.
  APPEND `var LoadReport = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "LOAD REPORT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "PART",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/private.ts` TO lt_js.
  APPEND `var Private = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("PRIVATE SECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/system_call.ts` TO lt_js.
  APPEND `var SystemCall = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const anyy = regex(/^.+$/);` TO lt_js.
  APPEND `    const objmgr = seq("OBJMGR CLONE", Source, "TO", Target);` TO lt_js.
  APPEND `    const did = seq(anyy, "DID", Source, "PARAMETERS", plus(Source));` TO lt_js.
  APPEND `    const ret = seq("SYSTEM-CALL", altPrio(objmgr, did, plus(anyy)));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_language.ts` TO lt_js.
  APPEND `var SetLanguage = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("SET LANGUAGE", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_dialog.ts` TO lt_js.
  APPEND `var CallDialog = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const from = seq(FieldSub, optPrio(seq("FROM", Source)));` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", plus(from));` TO lt_js.
  APPEND `    const to = seq(Field, optPrio(seq("TO", Field)));` TO lt_js.
  APPEND `    const importing = seq("IMPORTING", plus(to));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CALL DIALOG",` TO lt_js.
  APPEND `      alt(Constant, FieldSub),` TO lt_js.
  APPEND `      opt(exporting),` TO lt_js.
  APPEND `      opt(importing)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/protected.ts` TO lt_js.
  APPEND `var Protected = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("PROTECTED SECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/public.ts` TO lt_js.
  APPEND `var Public = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("PUBLIC SECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/nodes.ts` TO lt_js.
  APPEND `var Nodes = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("NODES", Field);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/demand.ts` TO lt_js.
  APPEND `var Demand = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const field = seq(Field, "=", Target);` TO lt_js.
  APPEND `    const messages = seq("MESSAGES INTO", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "DEMAND",` TO lt_js.
  APPEND `      plus(field),` TO lt_js.
  APPEND `      "FROM CONTEXT",` TO lt_js.
  APPEND `      Field,` TO lt_js.
  APPEND `      opt(messages)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/supply.ts` TO lt_js.
  APPEND `var Supply = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const field = seq(Field, "=", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SUPPLY",` TO lt_js.
  APPEND `      plus(field),` TO lt_js.
  APPEND `      "TO CONTEXT",` TO lt_js.
  APPEND `      Field` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/fields.ts` TO lt_js.
  APPEND `var Fields = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("FIELDS", FieldSub);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_cluster.ts` TO lt_js.
  APPEND `var DeleteCluster = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const client = seq("CLIENT", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "DELETE FROM DATABASE",` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      SimpleName,` TO lt_js.
  APPEND `      tok(ParenRightW),` TO lt_js.
  APPEND `      opt(client),` TO lt_js.
  APPEND `      "ID",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_margin.ts` TO lt_js.
  APPEND `var SetMargin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET MARGIN",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(Source)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_database.ts` TO lt_js.
  APPEND `var CallDatabase = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", ParameterListS);` TO lt_js.
  APPEND `    const importing = seq("IMPORTING", ParameterListT);` TO lt_js.
  APPEND `    const expl = seq(opt(exporting), opt(importing));` TO lt_js.
  APPEND `    const tab = seq("PARAMETER-TABLE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CALL DATABASE PROCEDURE",` TO lt_js.
  APPEND `      Dynamic,` TO lt_js.
  APPEND `      opt(DatabaseConnection),` TO lt_js.
  APPEND `      alt(expl, tab)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/contexts.ts` TO lt_js.
  APPEND `var Contexts = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CONTEXTS",` TO lt_js.
  APPEND `      Field` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/interface.ts` TO lt_js.
  APPEND `var Interface = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "INTERFACE",` TO lt_js.
  APPEND `      InterfaceName,` TO lt_js.
  APPEND `      opt(ClassGlobal)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endinterface.ts` TO lt_js.
  APPEND `var EndInterface = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDINTERFACE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/parameter.ts` TO lt_js.
  APPEND `var Parameter = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const para = altPrio("PARAMETER", "PARAMETERS");` TO lt_js.
  APPEND `    const def = seq("DEFAULT", altPrio(Constant, FieldChain));` TO lt_js.
  APPEND `    const radio = seq("RADIOBUTTON GROUP", RadioGroupName);` TO lt_js.
  APPEND `    const type = seq(altPrio("TYPE", "LIKE"), altPrio(TypeName, Dynamic), optPrio(FieldOffset), optPrio(FieldLength));` TO lt_js.
  APPEND `    const memory = seq("MEMORY ID", SimpleSource1);` TO lt_js.
  APPEND `    const listbox = str("AS LISTBOX");` TO lt_js.
  APPEND `    const cmd = seq("USER-COMMAND", regex(/^[\w\?\/]+$/));` TO lt_js.
  APPEND `    const modif = seq("MODIF ID", Modif);` TO lt_js.
  APPEND `    const visible = seq("VISIBLE LENGTH", Constant);` TO lt_js.
  APPEND `    const length = seq("LENGTH", Constant);` TO lt_js.
  APPEND `    const match = seq("MATCHCODE OBJECT", Field);` TO lt_js.
  APPEND `    const decimals = seq("DECIMALS", Source);` TO lt_js.
  APPEND `    const forTable = seq("FOR TABLE", DatabaseTable, opt("VALUE-REQUEST"));` TO lt_js.
  APPEND `    const perm = per(` TO lt_js.
  APPEND `      type,` TO lt_js.
  APPEND `      def,` TO lt_js.
  APPEND `      "OBLIGATORY",` TO lt_js.
  APPEND `      match,` TO lt_js.
  APPEND `      cmd,` TO lt_js.
  APPEND `      length,` TO lt_js.
  APPEND `      decimals,` TO lt_js.
  APPEND `      radio,` TO lt_js.
  APPEND `      memory,` TO lt_js.
  APPEND `      modif,` TO lt_js.
  APPEND `      listbox,` TO lt_js.
  APPEND `      visible,` TO lt_js.
  APPEND `      forTable,` TO lt_js.
  APPEND `      "VALUE CHECK",` TO lt_js.
  APPEND `      "NO-DISPLAY",` TO lt_js.
  APPEND `      "AS CHECKBOX",` TO lt_js.
  APPEND `      "LOWER CASE"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      para,` TO lt_js.
  APPEND `      FieldSub,` TO lt_js.
  APPEND `      opt(ConstantFieldLength),` TO lt_js.
  APPEND `      opt(perm)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/include.ts` TO lt_js.
  APPEND `var Include = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("INCLUDE", IncludeName, opt("IF FOUND"));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/collect.ts` TO lt_js.
  APPEND `var Collect = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    const assigning = seq("ASSIGNING", FSTarget);` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "COLLECT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(into),` TO lt_js.
  APPEND `      opt(assigning)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/ranges.ts` TO lt_js.
  APPEND `var Ranges = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "RANGES",` TO lt_js.
  APPEND `      DefinitionName,` TO lt_js.
  APPEND `      "FOR",` TO lt_js.
  APPEND `      SimpleFieldChain2,` TO lt_js.
  APPEND `      optPrio(occurs),` TO lt_js.
  APPEND `      optPrio(FieldLength)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/events.ts` TO lt_js.
  APPEND `var Events = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", plus(MethodParamOptional));` TO lt_js.
  APPEND `    return seq(altPrio("CLASS-EVENTS", "EVENTS"), EventName, optPrio(exporting));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/receive.ts` TO lt_js.
  APPEND `var Receive = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "RECEIVE RESULTS FROM FUNCTION",` TO lt_js.
  APPEND `      FunctionName,` TO lt_js.
  APPEND `      opt("KEEPING TASK"),` TO lt_js.
  APPEND `      ReceiveParameters` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/back.ts` TO lt_js.
  APPEND `var Back = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "BACK");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/add_corresponding.ts` TO lt_js.
  APPEND `var AddCorresponding = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "ADD-CORRESPONDING",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/subtract_corresponding.ts` TO lt_js.
  APPEND `var SubtractCorresponding = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SUBTRACT-CORRESPONDING",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/static_begin.ts` TO lt_js.
  APPEND `var StaticBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", Integer);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      alt("STATIC", "STATICS"),` TO lt_js.
  APPEND `      "BEGIN OF",` TO lt_js.
  APPEND `      DefinitionName,` TO lt_js.
  APPEND `      opt(occurs)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/static_end.ts` TO lt_js.
  APPEND `var StaticEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      alt("STATIC", "STATICS"),` TO lt_js.
  APPEND `      "END OF",` TO lt_js.
  APPEND `      DefinitionName` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_dataset.ts` TO lt_js.
  APPEND `var GetDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const position = seq("POSITION", Target);` TO lt_js.
  APPEND `    const attr = seq("ATTRIBUTES", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET DATASET",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(per(position, attr))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/tables.ts` TO lt_js.
  APPEND `var Tables = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("TABLES", Field);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/local.ts` TO lt_js.
  APPEND `var Local = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("LOCAL", FieldSub, opt(TableBody));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/add.ts` TO lt_js.
  APPEND `var Add = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const to = seq("TO", Target);` TO lt_js.
  APPEND `    const accordingTo = seq("ACCORDING TO", Source);` TO lt_js.
  APPEND `    const giving = seq("GIVING", Source);` TO lt_js.
  APPEND `    const then = seq("THEN", Source, "UNTIL", Source, opt(per(giving, accordingTo)), opt(to));` TO lt_js.
  APPEND `    const ret = seq("ADD", Source, altPrio(to, then));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/describe.ts` TO lt_js.
  APPEND `var Describe = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const tlines = seq("LINES", Target);` TO lt_js.
  APPEND `    const kind = seq("KIND", Target);` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", Target);` TO lt_js.
  APPEND `    const table = seq(` TO lt_js.
  APPEND `      "TABLE",` TO lt_js.
  APPEND `      FieldChain,` TO lt_js.
  APPEND `      opt(per(tlines, kind, occurs))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const mode = seq("IN", alt("BYTE", "CHARACTER"), "MODE");` TO lt_js.
  APPEND `    const field = seq(` TO lt_js.
  APPEND `      "FIELD",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(` TO lt_js.
  APPEND `        seq("TYPE", Target),` TO lt_js.
  APPEND `        seq("COMPONENTS", Target),` TO lt_js.
  APPEND `        seq("LENGTH", Target, opt(mode)),` TO lt_js.
  APPEND `        seq("DECIMALS", Target),` TO lt_js.
  APPEND `        seq("HELP-ID", Target),` TO lt_js.
  APPEND `        seq("OUTPUT-LENGTH", Target),` TO lt_js.
  APPEND `        seq("EDIT MASK", Target),` TO lt_js.
  APPEND `        seq("INTO", Target)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const distance = seq(` TO lt_js.
  APPEND `      "DISTANCE BETWEEN",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "AND",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(mode)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const lines = seq("NUMBER OF LINES", Target);` TO lt_js.
  APPEND `    const pages = seq("NUMBER OF PAGES", Target);` TO lt_js.
  APPEND `    const line = seq("LINE", Source);` TO lt_js.
  APPEND `    const page = seq("PAGE", Source);` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const top = seq("TOP-LINES", Target);` TO lt_js.
  APPEND `    const lineSize = seq("LINE-SIZE", Target);` TO lt_js.
  APPEND `    const lineCount = seq("LINE-COUNT", Target);` TO lt_js.
  APPEND `    const first = seq("FIRST-LINE", Target);` TO lt_js.
  APPEND `    const list = seq("LIST", per(lines, pages, index, line, page, top, first, tlines, lineSize, lineCount));` TO lt_js.
  APPEND `    const ret = seq("DESCRIBE", altPrio(table, field, distance, list));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/submit.ts` TO lt_js.
  APPEND `var Submit = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const sign = seq("SIGN", Source);` TO lt_js.
  APPEND `    const eq = alt("=", "EQ", "IN", "NE", "CP", "GE", "LE", "INCL", "GT", "LT");` TO lt_js.
  APPEND `    const compare = seq(eq, Source);` TO lt_js.
  APPEND `    const between = seq("BETWEEN", Source, "AND", Source);` TO lt_js.
  APPEND `    const selectionTable = seq("WITH SELECTION-TABLE", Source);` TO lt_js.
  APPEND `    const awith = seq("WITH", FieldSub, alt(compare, between), optPrio(sign));` TO lt_js.
  APPEND `    const prog = altPrio(IncludeName, Dynamic);` TO lt_js.
  APPEND `    const job = seq("VIA JOB", Source, "NUMBER", Source);` TO lt_js.
  APPEND `    const exporting = str("EXPORTING LIST TO MEMORY");` TO lt_js.
  APPEND `    const spool = seq("SPOOL PARAMETERS", Source);` TO lt_js.
  APPEND `    const archive = seq("ARCHIVE PARAMETERS", Source);` TO lt_js.
  APPEND `    const archiveMode = seq("ARCHIVE MODE", Source);` TO lt_js.
  APPEND `    const receiver = seq("RECEIVER", Source);` TO lt_js.
  APPEND `    const lineSize = seq("LINE-SIZE", Source);` TO lt_js.
  APPEND `    const lineCount = seq("LINE-COUNT", Source);` TO lt_js.
  APPEND `    const user = seq("USER", Source);` TO lt_js.
  APPEND `    const sset = seq("USING SELECTION-SET", Source);` TO lt_js.
  APPEND `    const ssetp = seq("USING SELECTION-SETS OF PROGRAM", Source);` TO lt_js.
  APPEND `    const uss = seq("USING SELECTION-SCREEN", Source);` TO lt_js.
  APPEND `    const free = seq("WITH FREE SELECTIONS", Source);` TO lt_js.
  APPEND `    const newList = seq("NEW LIST IDENTIFICATION", Source);` TO lt_js.
  APPEND `    const layout = seq("LAYOUT", Source);` TO lt_js.
  APPEND `    const cover = seq("SAP COVER PAGE", Source);` TO lt_js.
  APPEND `    const copies = seq("COPIES", Source);` TO lt_js.
  APPEND `    const datasetExpiration = seq("DATASET EXPIRATION", Source);` TO lt_js.
  APPEND `    const coverText = seq("COVER TEXT", Source);` TO lt_js.
  APPEND `    const listName = seq("LIST NAME", Source);` TO lt_js.
  APPEND `    const keep = seq("KEEP IN SPOOL", Source);` TO lt_js.
  APPEND `    const imm = seq("IMMEDIATELY", Source);` TO lt_js.
  APPEND `    const dest = seq("DESTINATION", Source);` TO lt_js.
  APPEND `    const language = seq("LANGUAGE", Source);` TO lt_js.
  APPEND `    const perm = per(` TO lt_js.
  APPEND `      plusPrio(awith),` TO lt_js.
  APPEND `      selectionTable,` TO lt_js.
  APPEND `      plusPrio(awith),` TO lt_js.
  APPEND `      plusPrio(awith),` TO lt_js.
  APPEND `      spool,` TO lt_js.
  APPEND `      lineSize,` TO lt_js.
  APPEND `      lineCount,` TO lt_js.
  APPEND `      archive,` TO lt_js.
  APPEND `      archiveMode,` TO lt_js.
  APPEND `      receiver,` TO lt_js.
  APPEND `      user,` TO lt_js.
  APPEND `      sset,` TO lt_js.
  APPEND `      ssetp,` TO lt_js.
  APPEND `      keep,` TO lt_js.
  APPEND `      cover,` TO lt_js.
  APPEND `      imm,` TO lt_js.
  APPEND `      layout,` TO lt_js.
  APPEND `      dest,` TO lt_js.
  APPEND `      coverText,` TO lt_js.
  APPEND `      listName,` TO lt_js.
  APPEND `      language,` TO lt_js.
  APPEND `      free,` TO lt_js.
  APPEND `      newList,` TO lt_js.
  APPEND `      uss,` TO lt_js.
  APPEND `      copies,` TO lt_js.
  APPEND `      datasetExpiration,` TO lt_js.
  APPEND `      "TO SAP-SPOOL",` TO lt_js.
  APPEND `      "WITHOUT SPOOL DYNPRO",` TO lt_js.
  APPEND `      "VIA SELECTION-SCREEN",` TO lt_js.
  APPEND `      exporting,` TO lt_js.
  APPEND `      AndReturn,` TO lt_js.
  APPEND `      job` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("SUBMIT", prog, opt(perm));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/scan.ts` TO lt_js.
  APPEND `var Scan = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const tokens = seq("TOKENS INTO", Target);` TO lt_js.
  APPEND `    const word = seq("WORD INTO", Target);` TO lt_js.
  APPEND `    const line = seq("LINE INTO", Target);` TO lt_js.
  APPEND `    const statements = seq("STATEMENTS INTO", Target);` TO lt_js.
  APPEND `    const levels = seq("LEVELS INTO", Target);` TO lt_js.
  APPEND `    const structures = seq("STRUCTURES INTO", Target);` TO lt_js.
  APPEND `    const include = seq("INCLUDE INTO", Target);` TO lt_js.
  APPEND `    const offset = seq("OFFSET INTO", Target);` TO lt_js.
  APPEND `    const enh = seq("ENHANCEMENTS INTO", Target);` TO lt_js.
  APPEND `    const enhO = seq("ENHANCEMENT OPTIONS INTO", Target);` TO lt_js.
  APPEND `    const keywords = seq("KEYWORDS FROM", Source);` TO lt_js.
  APPEND `    const pragmas = seq("WITH PRAGMAS", Source);` TO lt_js.
  APPEND `    const overflow = seq("OVERFLOW INTO", Target);` TO lt_js.
  APPEND `    const message = seq("MESSAGE INTO", Target);` TO lt_js.
  APPEND `    const includeProgram = seq("INCLUDE PROGRAM FROM", Source);` TO lt_js.
  APPEND `    const frame = seq("FRAME PROGRAM FROM", Source);` TO lt_js.
  APPEND `    const program = seq("PROGRAM FROM", Source);` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const to = seq("TO", Source);` TO lt_js.
  APPEND `    const replacing = seq("REPLACING", Source);` TO lt_js.
  APPEND `    const id = seq("ID", Source, "TABLE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SCAN ABAP-SOURCE",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(` TO lt_js.
  APPEND `        tokens,` TO lt_js.
  APPEND `        levels,` TO lt_js.
  APPEND `        from,` TO lt_js.
  APPEND `        to,` TO lt_js.
  APPEND `        statements,` TO lt_js.
  APPEND `        structures,` TO lt_js.
  APPEND `        keywords,` TO lt_js.
  APPEND `        word,` TO lt_js.
  APPEND `        line,` TO lt_js.
  APPEND `        offset,` TO lt_js.
  APPEND `        overflow,` TO lt_js.
  APPEND `        message,` TO lt_js.
  APPEND `        includeProgram,` TO lt_js.
  APPEND `        include,` TO lt_js.
  APPEND `        frame,` TO lt_js.
  APPEND `        enhO,` TO lt_js.
  APPEND `        enh,` TO lt_js.
  APPEND `        program,` TO lt_js.
  APPEND `        replacing,` TO lt_js.
  APPEND `        "WITH ANALYSIS",` TO lt_js.
  APPEND `        "WITH COMMENTS",` TO lt_js.
  APPEND `        "WITH TYPE-POOLS",` TO lt_js.
  APPEND `        "WITH INCLUDES",` TO lt_js.
  APPEND `        "WITHOUT TRMAC",` TO lt_js.
  APPEND `        "WITH DECLARATIONS",` TO lt_js.
  APPEND `        "WITH BLOCKS",` TO lt_js.
  APPEND `        "PRESERVING IDENTIFIER ESCAPING",` TO lt_js.
  APPEND `        "WITH LIST TOKENIZATION",` TO lt_js.
  APPEND `        "WITH EXPLICIT ENHANCEMENTS",` TO lt_js.
  APPEND `        "WITH IMPLICIT ENHANCEMENTS",` TO lt_js.
  APPEND `        "WITH INACTIVE ENHANCEMENTS",` TO lt_js.
  APPEND `        pragmas,` TO lt_js.
  APPEND `        id` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/export.ts` TO lt_js.
  APPEND `var Export = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const from = seq(altPrio("FROM", "="), Source);` TO lt_js.
  APPEND `    const client = seq("CLIENT", Source);` TO lt_js.
  APPEND `    const id = seq("ID", Source);` TO lt_js.
  APPEND `    const using = seq("USING", Source);` TO lt_js.
  APPEND `    const cluster = seq(` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      regex(/^[\w$%\^~]{2}$/),` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const buffer = seq("DATA BUFFER", Target);` TO lt_js.
  APPEND `    const memory = seq("MEMORY", opt(seq("ID", Source)));` TO lt_js.
  APPEND `    const table = seq("INTERNAL TABLE", Target);` TO lt_js.
  APPEND `    const shared = seq(alt("SHARED MEMORY", "SHARED BUFFER"), cluster, per(from, client, id));` TO lt_js.
  APPEND `    const database = seq("DATABASE", cluster, per(from, client, id, using));` TO lt_js.
  APPEND `    const target = alt(buffer, memory, database, table, shared);` TO lt_js.
  APPEND `    const left = alt(FieldSub, FieldSymbol);` TO lt_js.
  APPEND `    const source = alt(` TO lt_js.
  APPEND `      plus(altPrio(seq(left, from), left)),` TO lt_js.
  APPEND `      Dynamic,` TO lt_js.
  APPEND `      Constant` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const compression = seq("COMPRESSION", alt("ON", "OFF"));` TO lt_js.
  APPEND `    const hint = seq("CODE PAGE HINT", Source);` TO lt_js.
  APPEND `    return seq("EXPORT", source, "TO", target, opt(compression), opt(hint));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/import.ts` TO lt_js.
  APPEND `var Import = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const dto = seq("TO", Target);` TO lt_js.
  APPEND `    const client = seq("CLIENT", Source);` TO lt_js.
  APPEND `    const id = seq("ID", Source);` TO lt_js.
  APPEND `    const using = seq("USING", Source);` TO lt_js.
  APPEND `    const cluster = seq(` TO lt_js.
  APPEND `      NamespaceSimpleName,` TO lt_js.
  APPEND `      tok(ParenLeft),` TO lt_js.
  APPEND `      regex(/^[\w$%\^]{2}$/),` TO lt_js.
  APPEND `      tok(ParenRightW)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const buffer = seq("DATA BUFFER", Source);` TO lt_js.
  APPEND `    const memory = seq("MEMORY", opt(seq("ID", Source)));` TO lt_js.
  APPEND `    const table = seq("INTERNAL TABLE", Source);` TO lt_js.
  APPEND `    const shared = seq(alt("SHARED MEMORY", "SHARED BUFFER"), cluster, per(dto, client, id));` TO lt_js.
  APPEND `    const database = seq("DATABASE", cluster, per(dto, client, id, using));` TO lt_js.
  APPEND `    const logfile = seq("LOGFILE ID", Source);` TO lt_js.
  APPEND `    const source = alt(buffer, memory, database, table, shared, logfile);` TO lt_js.
  APPEND `    const to = plus(seq(ComponentChainSimple, alt("TO", "INTO"), Target));` TO lt_js.
  APPEND `    const toeq = plus(seq(alt(ComponentChainSimple, FieldSymbol), "=", Target));` TO lt_js.
  APPEND `    const target = alt(` TO lt_js.
  APPEND `      toeq,` TO lt_js.
  APPEND `      to,` TO lt_js.
  APPEND `      Dynamic,` TO lt_js.
  APPEND `      plus(Target)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      "ACCEPTING PADDING",` TO lt_js.
  APPEND `      "IGNORING CONVERSION ERRORS",` TO lt_js.
  APPEND `      "IN CHAR-TO-HEX MODE",` TO lt_js.
  APPEND `      "IGNORING STRUCTURE BOUNDARIES",` TO lt_js.
  APPEND `      "ACCEPTING TRUNCATION",` TO lt_js.
  APPEND `      seq("REPLACEMENT CHARACTER", Source),` TO lt_js.
  APPEND `      seq("CODE PAGE INTO", Source),` TO lt_js.
  APPEND `      seq("ENDIAN INTO", Source)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("IMPORT", target, "FROM", source, opt(options));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at_first.ts` TO lt_js.
  APPEND `var AtFirst = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("AT FIRST");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at_last.ts` TO lt_js.
  APPEND `var AtLast = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("AT LAST");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at_pf.ts` TO lt_js.
  APPEND `var AtPF = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, seq("AT", regex(/^PF\d\d?$/i)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at.ts` TO lt_js.
  APPEND `var At2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const field = alt(` TO lt_js.
  APPEND `      seq(FieldSub, opt(FieldOffset), opt(FieldLength)),` TO lt_js.
  APPEND `      Dynamic,` TO lt_js.
  APPEND `      SourceFieldSymbol` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const atNew = seq("NEW", field);` TO lt_js.
  APPEND `    const atEnd = seq("END OF", field);` TO lt_js.
  APPEND `    const group = regex(/^[%\w]+$/);` TO lt_js.
  APPEND `    const ret = seq("AT", altPrio(atNew, atEnd, group));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/put.ts` TO lt_js.
  APPEND `var Put = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("PUT", Field);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endat.ts` TO lt_js.
  APPEND `var EndAt = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("ENDAT");` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endselect.ts` TO lt_js.
  APPEND `var EndSelect = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDSELECT");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/refresh.ts` TO lt_js.
  APPEND `var Refresh = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const from = seq("FROM TABLE", DatabaseTable);` TO lt_js.
  APPEND `    const ret = seq("REFRESH", Target, optPrio(from));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/shift.ts` TO lt_js.
  APPEND `var Shift = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const deleting = seq("DELETING", altPrio("LEADING", "TRAILING"), Source);` TO lt_js.
  APPEND `    const up = seq("UP TO", Source);` TO lt_js.
  APPEND `    const mode = seq("IN", altPrio("CHARACTER", "BYTE"), "MODE");` TO lt_js.
  APPEND `    const dir = altPrio("LEFT", "RIGHT");` TO lt_js.
  APPEND `    const by = seq("BY", Source, optPrio("PLACES"));` TO lt_js.
  APPEND `    const options = per(deleting, up, mode, dir, by, "CIRCULAR");` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "SHIFT",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_mesh.ts` TO lt_js.
  APPEND `var TypeMesh = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const on = seq("ON", NamespaceSimpleName, "=", NamespaceSimpleName, star(seq("AND", NamespaceSimpleName, "=", NamespaceSimpleName)));` TO lt_js.
  APPEND `    const using = seq("USING KEY", NamespaceSimpleName);` TO lt_js.
  APPEND `    const association = seq("ASSOCIATION", NamespaceSimpleName, "TO", NamespaceSimpleName, plus(on));` TO lt_js.
  APPEND `    const ret = ver("v751" /* v751 */, seq("TYPES", NamespaceSimpleName, "TYPE", opt("REF TO"), TypeName, plus(association), opt(using)));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/transfer.ts` TO lt_js.
  APPEND `var Transfer = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const length = seq("LENGTH", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "TRANSFER",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(length),` TO lt_js.
  APPEND `      opt("NO END OF LINE")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/subtract.ts` TO lt_js.
  APPEND `var Subtract = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SUBTRACT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/unassign.ts` TO lt_js.
  APPEND `var Unassign = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("UNASSIGN", TargetFieldSymbol);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/open_dataset.ts` TO lt_js.
  APPEND `var OpenDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const mode = seq(` TO lt_js.
  APPEND `      "IN",` TO lt_js.
  APPEND `      opt("LEGACY"),` TO lt_js.
  APPEND `      altPrio("BINARY MODE", "TEXT MODE")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const code = seq("CODE PAGE", Source);` TO lt_js.
  APPEND `    const direction = seq("FOR", altPrio("OUTPUT", "INPUT", "UPDATE", "APPENDING"));` TO lt_js.
  APPEND `    const encoding = seq("ENCODING", altPrio("DEFAULT", "UTF-8", "NON-UNICODE"));` TO lt_js.
  APPEND `    const pos = seq("AT POSITION", Source);` TO lt_js.
  APPEND `    const message = seq("MESSAGE", Target);` TO lt_js.
  APPEND `    const ignoring = str("IGNORING CONVERSION ERRORS");` TO lt_js.
  APPEND `    const replacement = seq("REPLACEMENT CHARACTER", Source);` TO lt_js.
  APPEND `    const bom = str("SKIPPING BYTE-ORDER MARK");` TO lt_js.
  APPEND `    const wbom = str("WITH BYTE-ORDER MARK");` TO lt_js.
  APPEND `    const type = seq("TYPE", Source);` TO lt_js.
  APPEND `    const filter = seq("FILTER", Source);` TO lt_js.
  APPEND `    const linetype = altPrio("SMART", "NATIVE", "UNIX");` TO lt_js.
  APPEND `    const feed = seq("WITH", linetype, "LINEFEED");` TO lt_js.
  APPEND `    const windows = str("WITH WINDOWS LINEFEED");` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "OPEN DATASET",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(per(direction, type, mode, wbom, replacement, filter, encoding, pos, message, ignoring, bom, code, feed, windows))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/close_dataset.ts` TO lt_js.
  APPEND `var CloseDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("CLOSE DATASET", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/interface_load.ts` TO lt_js.
  APPEND `var InterfaceLoad = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "INTERFACE",` TO lt_js.
  APPEND `      InterfaceName,` TO lt_js.
  APPEND `      "LOAD"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/close_cursor.ts` TO lt_js.
  APPEND `var CloseCursor = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("CLOSE CURSOR", SQLSourceSimple);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/leave.ts` TO lt_js.
  APPEND `var Leave = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const retu = seq(AndReturn, "TO SCREEN", Source);` TO lt_js.
  APPEND `    const transaction = seq(` TO lt_js.
  APPEND `      "TO TRANSACTION",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt("AND SKIP FIRST SCREEN")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "LEAVE",` TO lt_js.
  APPEND `      opt(alt(` TO lt_js.
  APPEND `        seq("TO CURRENT TRANSACTION", opt("AND SKIP FIRST SCREEN")),` TO lt_js.
  APPEND `        seq(opt("TO"), "LIST-PROCESSING", opt(retu)),` TO lt_js.
  APPEND `        "LIST-PROCESSING",` TO lt_js.
  APPEND `        "SCREEN",` TO lt_js.
  APPEND `        transaction,` TO lt_js.
  APPEND `        "PROGRAM",` TO lt_js.
  APPEND `        seq("TO SCREEN", Source)` TO lt_js.
  APPEND `      ))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/class_definition_load.ts` TO lt_js.
  APPEND `var ClassDefinitionLoad = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("CLASS", ClassName, "DEFINITION LOAD");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/initialization.ts` TO lt_js.
  APPEND `var Initialization = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "INITIALIZATION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/start_of_selection.ts` TO lt_js.
  APPEND `var StartOfSelection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "START-OF-SELECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_blank.ts` TO lt_js.
  APPEND `var SetBlank = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const onOff = alt("ON", "OFF");` TO lt_js.
  APPEND `    const ret = seq("SET BLANK LINES", onOff);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/export_dynpro.ts` TO lt_js.
  APPEND `var ExportDynpro = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "EXPORT DYNPRO",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "ID",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_of_selection.ts` TO lt_js.
  APPEND `var EndOfSelection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "END-OF-SELECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/search.ts` TO lt_js.
  APPEND `var Search = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const starting = seq("STARTING AT", Source);` TO lt_js.
  APPEND `    const ending = seq("ENDING AT", Source);` TO lt_js.
  APPEND `    const mark = str("AND MARK");` TO lt_js.
  APPEND `    const mode = altPrio("IN BYTE MODE", "IN CHARACTER MODE");` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SEARCH",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FOR",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(per(mode, starting, ending, mark))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/modify_line.ts` TO lt_js.
  APPEND `var ModifyLine = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const onOff = alt("ON", "OFF");` TO lt_js.
  APPEND `    const eq = seq("=", Source);` TO lt_js.
  APPEND `    const form = seq(alt("INVERSE", "INPUT", "COLOR", "HOTSPOT"), opt(alt(eq, onOff)));` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const value = seq("FIELD VALUE", plus(seq(Source, optPrio(from))));` TO lt_js.
  APPEND `    const format = seq("FIELD FORMAT", Source, opt(form));` TO lt_js.
  APPEND `    const lineValue = seq("LINE VALUE FROM", Source);` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const page = seq("OF PAGE", Source);` TO lt_js.
  APPEND `    const ocp = str("OF CURRENT PAGE");` TO lt_js.
  APPEND `    const intensified = seq("INTENSIFIED", onOff);` TO lt_js.
  APPEND `    const intensifiedOpt = seq("INTENSIFIED", opt(onOff));` TO lt_js.
  APPEND `    const lineFormat = seq(` TO lt_js.
  APPEND `      "LINE FORMAT",` TO lt_js.
  APPEND `      per("INPUT OFF", "INVERSE", "RESET", intensifiedOpt, Color)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const options = per(index, value, format, page, lineFormat, lineValue, ocp, intensified, Color);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "MODIFY",` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        "CURRENT LINE",` TO lt_js.
  APPEND `        seq("LINE", Source)` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/selectionscreen.ts` TO lt_js.
  APPEND `var SelectionScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const text = altPrio(TextElement, InlineField);` TO lt_js.
  APPEND `    const beginBlock = seq(` TO lt_js.
  APPEND `      "BEGIN OF BLOCK",` TO lt_js.
  APPEND `      BlockName,` TO lt_js.
  APPEND `      optPrio("WITH FRAME"),` TO lt_js.
  APPEND `      optPrio(seq("TITLE", text)),` TO lt_js.
  APPEND `      optPrio("NO INTERVALS")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const endBlock = seq("END OF BLOCK", BlockName);` TO lt_js.
  APPEND `    const nesting = seq("NESTING LEVEL", Source);` TO lt_js.
  APPEND `    const scrOptions = per(` TO lt_js.
  APPEND `      seq("AS", alt("WINDOW", "SUBSCREEN")),` TO lt_js.
  APPEND `      seq("TITLE", text),` TO lt_js.
  APPEND `      "NO INTERVALS",` TO lt_js.
  APPEND `      nesting` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const beginScreen = seq(` TO lt_js.
  APPEND `      "BEGIN OF SCREEN",` TO lt_js.
  APPEND `      Integer,` TO lt_js.
  APPEND `      opt(scrOptions)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const endScreen = seq("END OF SCREEN", Integer);` TO lt_js.
  APPEND `    const beginLine = str("BEGIN OF LINE");` TO lt_js.
  APPEND `    const endLine = str("END OF LINE");` TO lt_js.
  APPEND `    const modif = seq("MODIF ID", Modif);` TO lt_js.
  APPEND `    const visible = seq("VISIBLE LENGTH", regex(/^\d+$/));` TO lt_js.
  APPEND `    const ldbId = seq("ID", regex(/^\w+$/));` TO lt_js.
  APPEND `    const ldb = seq("FOR FIELD", FieldSub, optPrio(ldbId));` TO lt_js.
  APPEND `    const commentOpt = per(ldb, modif, visible);` TO lt_js.
  APPEND `    const position = seq(` TO lt_js.
  APPEND `      opt(regex(/^\/?[\d\w]+$/)),` TO lt_js.
  APPEND `      altPrio(tok(ParenLeft), tok(WParenLeft)),` TO lt_js.
  APPEND `      Integer,` TO lt_js.
  APPEND `      altPrio(tok(ParenRightW), tok(ParenRight))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const comment = seq(` TO lt_js.
  APPEND `      "COMMENT",` TO lt_js.
  APPEND `      position,` TO lt_js.
  APPEND `      opt(text),` TO lt_js.
  APPEND `      opt(commentOpt)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const command = seq("USER-COMMAND", alt(Field, Constant));` TO lt_js.
  APPEND `    const push = seq(` TO lt_js.
  APPEND `      "PUSHBUTTON",` TO lt_js.
  APPEND `      position,` TO lt_js.
  APPEND `      text,` TO lt_js.
  APPEND `      command,` TO lt_js.
  APPEND `      opt(modif),` TO lt_js.
  APPEND `      opt(visible)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const prog = seq("PROGRAM", Field);` TO lt_js.
  APPEND `    const def = seq("DEFAULT", opt(prog), "SCREEN", Integer);` TO lt_js.
  APPEND `    const tab = seq(` TO lt_js.
  APPEND `      "TAB",` TO lt_js.
  APPEND `      tok(WParenLeft),` TO lt_js.
  APPEND `      Integer,` TO lt_js.
  APPEND `      tok(ParenRightW),` TO lt_js.
  APPEND `      text,` TO lt_js.
  APPEND `      command,` TO lt_js.
  APPEND `      opt(def),` TO lt_js.
  APPEND `      opt(modif)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const func = seq("FUNCTION KEY", Integer);` TO lt_js.
  APPEND `    const skip = seq("SKIP", opt(Integer));` TO lt_js.
  APPEND `    const posSymbols = altPrio("POS_LOW", "POS_HIGH");` TO lt_js.
  APPEND `    const posIntegers = regex(/^(0?[1-9]|[1234567][0-9]|8[0-3])$/);` TO lt_js.
  APPEND `    const pos = seq(` TO lt_js.
  APPEND `      "POSITION",` TO lt_js.
  APPEND `      altPrio(posIntegers, posSymbols),` TO lt_js.
  APPEND `      opt(seq("FOR TABLE", Field))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const incl = seq("INCLUDE BLOCKS", BlockName);` TO lt_js.
  APPEND `    const tabbed = seq(` TO lt_js.
  APPEND `      "BEGIN OF TABBED BLOCK",` TO lt_js.
  APPEND `      BlockName,` TO lt_js.
  APPEND `      "FOR",` TO lt_js.
  APPEND `      Integer,` TO lt_js.
  APPEND `      "LINES",` TO lt_js.
  APPEND `      optPrio("NO INTERVALS")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const uline = seq("ULINE", opt(position), opt(modif));` TO lt_js.
  APPEND `    const param = seq("INCLUDE PARAMETERS", Field);` TO lt_js.
  APPEND `    const iso = seq("INCLUDE SELECT-OPTIONS", Field);` TO lt_js.
  APPEND `    const exclude = seq("EXCLUDE", alt("IDS", "PARAMETERS"), regex(/^\w+$/));` TO lt_js.
  APPEND `    const beginVersion = seq("BEGIN OF VERSION", regex(/^\w+$/), TextElement);` TO lt_js.
  APPEND `    const endVersion = seq("END OF VERSION", regex(/^\w+$/));` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SELECTION-SCREEN",` TO lt_js.
  APPEND `      altPrio(` TO lt_js.
  APPEND `        comment,` TO lt_js.
  APPEND `        func,` TO lt_js.
  APPEND `        skip,` TO lt_js.
  APPEND `        pos,` TO lt_js.
  APPEND `        incl,` TO lt_js.
  APPEND `        iso,` TO lt_js.
  APPEND `        push,` TO lt_js.
  APPEND `        tab,` TO lt_js.
  APPEND `        uline,` TO lt_js.
  APPEND `        beginBlock,` TO lt_js.
  APPEND `        tabbed,` TO lt_js.
  APPEND `        endBlock,` TO lt_js.
  APPEND `        beginLine,` TO lt_js.
  APPEND `        endLine,` TO lt_js.
  APPEND `        param,` TO lt_js.
  APPEND `        beginScreen,` TO lt_js.
  APPEND `        endScreen,` TO lt_js.
  APPEND `        exclude,` TO lt_js.
  APPEND `        beginVersion,` TO lt_js.
  APPEND `        endVersion,` TO lt_js.
  APPEND `        def` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/free.ts` TO lt_js.
  APPEND `var Free = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("FREE", Target);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endon.ts` TO lt_js.
  APPEND `var EndOn = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = str("ENDON");` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/fetch_next_cursor.ts` TO lt_js.
  APPEND `var FetchNextCursor = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const size = seq("PACKAGE SIZE", SQLSourceSimple);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "FETCH NEXT CURSOR",` TO lt_js.
  APPEND `      SQLSourceSimple,` TO lt_js.
  APPEND `      alt(SQLIntoStructure, SQLIntoTable, SQLIntoList),` TO lt_js.
  APPEND `      optPrio(size)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/reserve.ts` TO lt_js.
  APPEND `var Reserve = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("RESERVE", Source, "LINES");` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/raise_entity_event.ts` TO lt_js.
  APPEND `var RaiseEntityEvent = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("RAISE ENTITY EVENT", EventName, "FROM", Source);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/refresh_control.ts` TO lt_js.
  APPEND `var RefreshControl = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "REFRESH CONTROL",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FROM SCREEN",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_dynpro.ts` TO lt_js.
  APPEND `var DeleteDynpro = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("DELETE DYNPRO", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/generate_dynpro.ts` TO lt_js.
  APPEND `var GenerateDynpro = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const line = seq("LINE", Target);` TO lt_js.
  APPEND `    const word = seq("WORD", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GENERATE DYNPRO",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "ID",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "MESSAGE",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      per(line, word)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/process_on_help_request.ts` TO lt_js.
  APPEND `var ProcessOnHelpRequest = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "PROCESS ON HELP-REQUEST");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/detail.ts` TO lt_js.
  APPEND `var Detail = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "DETAIL");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/editor_call.ts` TO lt_js.
  APPEND `var EditorCall = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const title = seq("TITLE", SimpleSource3);` TO lt_js.
  APPEND `    const options = per("DISPLAY-MODE", title);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "EDITOR-CALL FOR",` TO lt_js.
  APPEND `      optPrio("REPORT"),` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/break.ts` TO lt_js.
  APPEND `var Break = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const next = str("AT NEXT APPLICATION STATEMENT");` TO lt_js.
  APPEND `    const ret = altPrio(` TO lt_js.
  APPEND `      seq("BREAK-POINT", optPrio(altPrio(next, Source))),` TO lt_js.
  APPEND `      seq("BREAK", starPrio(regex(/.*/)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_textpool.ts` TO lt_js.
  APPEND `var DeleteTextpool = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const language = seq("LANGUAGE", Source);` TO lt_js.
  APPEND `    const state = seq("STATE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "DELETE TEXTPOOL",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(language),` TO lt_js.
  APPEND `      opt(state)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get.ts` TO lt_js.
  APPEND `var Get = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const fields = seq("FIELDS", plus(Field));` TO lt_js.
  APPEND `    const options = per("LATE", fields);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/loop_extract.ts` TO lt_js.
  APPEND `var LoopExtract = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("LOOP");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/selectoption.ts` TO lt_js.
  APPEND `var SelectOption = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const sourc = alt(Constant, FieldChain);` TO lt_js.
  APPEND `    const to = seq("TO", sourc);` TO lt_js.
  APPEND `    const def = seq(` TO lt_js.
  APPEND `      "DEFAULT",` TO lt_js.
  APPEND `      sourc,` TO lt_js.
  APPEND `      opt(to)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const option = seq("OPTION", alt("CP", Field));` TO lt_js.
  APPEND `    const sign = seq("SIGN", Field);` TO lt_js.
  APPEND `    const memory = seq("MEMORY ID", SimpleSource1);` TO lt_js.
  APPEND `    const match = seq("MATCHCODE OBJECT", SimpleFieldChain);` TO lt_js.
  APPEND `    const modif = seq("MODIF ID", Modif);` TO lt_js.
  APPEND `    const visible = seq("VISIBLE LENGTH", Source);` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      def,` TO lt_js.
  APPEND `      option,` TO lt_js.
  APPEND `      sign,` TO lt_js.
  APPEND `      memory,` TO lt_js.
  APPEND `      match,` TO lt_js.
  APPEND `      visible,` TO lt_js.
  APPEND `      modif,` TO lt_js.
  APPEND `      "NO DATABASE SELECTION",` TO lt_js.
  APPEND `      "LOWER CASE",` TO lt_js.
  APPEND `      "NO-EXTENSION",` TO lt_js.
  APPEND `      "NO INTERVALS",` TO lt_js.
  APPEND `      "NO-DISPLAY",` TO lt_js.
  APPEND `      "OBLIGATORY"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SELECT-OPTIONS",` TO lt_js.
  APPEND `      FieldSub,` TO lt_js.
  APPEND `      "FOR",` TO lt_js.
  APPEND `      alt(FieldChain, Dynamic),` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/convert.ts` TO lt_js.
  APPEND `var Convert = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const intoTime = seq("TIME", Target);` TO lt_js.
  APPEND `    const intoDate = seq("DATE", Target);` TO lt_js.
  APPEND `    const into = seq("INTO", per(intoTime, intoDate));` TO lt_js.
  APPEND `    const daylightSource = seq("DAYLIGHT SAVING TIME", Source);` TO lt_js.
  APPEND `    const daylightTarget = seq("DAYLIGHT SAVING TIME", Target);` TO lt_js.
  APPEND `    const zone = seq("TIME ZONE", Source);` TO lt_js.
  APPEND `    const time = seq(` TO lt_js.
  APPEND `      "TIME STAMP",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(zone, into, daylightTarget)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const dat = seq("DATE", Source);` TO lt_js.
  APPEND `    const tim = seq("TIME", Source);` TO lt_js.
  APPEND `    const stamp = seq("INTO TIME STAMP", Target);` TO lt_js.
  APPEND `    const intoutc = ver("v754" /* v754 */, seq("INTO UTCLONG", Target));` TO lt_js.
  APPEND `    const invert = seq("INTO INVERTED-DATE", Target);` TO lt_js.
  APPEND `    const date = seq(` TO lt_js.
  APPEND `      per(dat, tim),` TO lt_js.
  APPEND `      per(daylightSource, stamp, zone, invert, intoutc)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const inv = seq("INVERTED-DATE", Source, "INTO DATE", Target);` TO lt_js.
  APPEND `    const utclong = ver("v754" /* v754 */, seq("UTCLONG", Source, per(zone, into, daylightSource)), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    return seq("CONVERT", alt(time, date, inv, utclong));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/static.ts` TO lt_js.
  APPEND `var Static = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const p = opt(per(Type, Value, Length, Decimals));` TO lt_js.
  APPEND `    const type = seq(opt(ConstantFieldLength), p);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      alt("STATIC", "STATICS"),` TO lt_js.
  APPEND `      DefinitionName,` TO lt_js.
  APPEND `      optPrio(ConstantFieldLength),` TO lt_js.
  APPEND `      alt(type, TypeTable)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/compute.ts` TO lt_js.
  APPEND `var Compute = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "COMPUTE",` TO lt_js.
  APPEND `      opt("EXACT"),` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "=",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/multiply.ts` TO lt_js.
  APPEND `var Multiply = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "MULTIPLY",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "BY",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/divide.ts` TO lt_js.
  APPEND `var Divide = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "DIVIDE",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "BY",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/format.ts` TO lt_js.
  APPEND `var Format = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const eq = seq("=", Source);` TO lt_js.
  APPEND `    const value = altPrio(eq, "ON", "OFF");` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      "RESET",` TO lt_js.
  APPEND `      seq("INTENSIFIED", opt(value)),` TO lt_js.
  APPEND `      seq("INVERSE", opt(value)),` TO lt_js.
  APPEND `      seq("HOTSPOT", opt(value)),` TO lt_js.
  APPEND `      seq("FRAMES", value),` TO lt_js.
  APPEND `      seq("INPUT", opt(value)),` TO lt_js.
  APPEND `      Color` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("FORMAT", options);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/syntax_check.ts` TO lt_js.
  APPEND `var SyntaxCheck = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const program = seq("PROGRAM", Source);` TO lt_js.
  APPEND `    const offset = seq("OFFSET", Target);` TO lt_js.
  APPEND `    const frame = seq("FRAME ENTRY", Target);` TO lt_js.
  APPEND `    const include = seq("INCLUDE", Target);` TO lt_js.
  APPEND `    const trace = seq("TRACE-TABLE", Target);` TO lt_js.
  APPEND `    const line = seq("LINE", Target);` TO lt_js.
  APPEND `    const word = seq("WORD", Target);` TO lt_js.
  APPEND `    const messageId = seq("MESSAGE-ID", Target);` TO lt_js.
  APPEND `    const message = seq("MESSAGE", Target);` TO lt_js.
  APPEND `    const id = seq("ID", Source, "TABLE", Target);` TO lt_js.
  APPEND `    const replacing = seq("REPLACING", Target);` TO lt_js.
  APPEND `    const directory = seq("DIRECTORY ENTRY", Source);` TO lt_js.
  APPEND `    const dump = seq("SHORTDUMP-ID", Source);` TO lt_js.
  APPEND `    const filter = seq("FILTER", Source);` TO lt_js.
  APPEND `    const syntax = seq(` TO lt_js.
  APPEND `      optPrio("PROGRAM"),` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(` TO lt_js.
  APPEND `        message,` TO lt_js.
  APPEND `        line,` TO lt_js.
  APPEND `        word,` TO lt_js.
  APPEND `        offset,` TO lt_js.
  APPEND `        program,` TO lt_js.
  APPEND `        replacing,` TO lt_js.
  APPEND `        directory,` TO lt_js.
  APPEND `        frame,` TO lt_js.
  APPEND `        include,` TO lt_js.
  APPEND `        messageId,` TO lt_js.
  APPEND `        trace,` TO lt_js.
  APPEND `        dump,` TO lt_js.
  APPEND `        filter,` TO lt_js.
  APPEND `        plus(id)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const dynpro = seq(` TO lt_js.
  APPEND `      "DYNPRO",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(message, line, word, offset, messageId, trace)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq("SYNTAX-CHECK FOR", alt(syntax, dynpro));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/aliases.ts` TO lt_js.
  APPEND `var Aliases = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "ALIASES",` TO lt_js.
  APPEND `      SimpleName,` TO lt_js.
  APPEND `      "FOR",` TO lt_js.
  APPEND `      Field` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/method_def.ts` TO lt_js.
  APPEND `var MethodDef = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const def = ver("v740sp08" /* v740sp08 */, seq("DEFAULT", altPrio("FAIL", "IGNORE")), "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const parameters = seq(` TO lt_js.
  APPEND `      optPrio(altPrio("FINAL", def, Abstract)),` TO lt_js.
  APPEND `      optPrio(MethodDefImporting),` TO lt_js.
  APPEND `      optPrio(MethodDefExporting),` TO lt_js.
  APPEND `      optPrio(MethodDefChanging),` TO lt_js.
  APPEND `      optPrio(MethodDefReturning),` TO lt_js.
  APPEND `      optPrio(altPrio(MethodDefRaising, MethodDefExceptions))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const testing = seq(optPrio(Abstract), "FOR TESTING", optPrio(altPrio(MethodDefRaising, MethodDefExceptions)));` TO lt_js.
  APPEND `    const result = seq("RESULT", MethodParamName);` TO lt_js.
  APPEND `    const link = seq("LINK", MethodParamName);` TO lt_js.
  APPEND `    const full = seq("FULL", MethodParamName);` TO lt_js.
  APPEND `    const modify = alt(` TO lt_js.
  APPEND `      seq("FOR ACTION", TypeName, optPrio(result)),` TO lt_js.
  APPEND `      seq("FOR CREATE", alt(TypeName, EntityAssociation)),` TO lt_js.
  APPEND `      seq("FOR DELETE", TypeName),` TO lt_js.
  APPEND `      seq("FOR UPDATE", TypeName)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const forRead = seq("FOR READ", alt(TypeName, EntityAssociation), optPrio(full), result, optPrio(link));` TO lt_js.
  APPEND `    const forfunction = seq("FOR FUNCTION", TypeName, result);` TO lt_js.
  APPEND `    const behavior = altPrio(` TO lt_js.
  APPEND `      "DDL OBJECT OPTIONS CDS SESSION CLIENT REQUIRED",` TO lt_js.
  APPEND `      // todo, this is only from version something` TO lt_js.
  APPEND `      seq("TABLE FUNCTION", NamespaceSimpleName),` TO lt_js.
  APPEND `      // todo, this is only from version something` TO lt_js.
  APPEND `      seq("VALIDATE ON SAVE IMPORTING", MethodParamName, "FOR", TypeName),` TO lt_js.
  APPEND `      seq("MODIFY", opt("IMPORTING"), plus(seq(MethodParamName, modify))),` TO lt_js.
  APPEND `      seq("PRECHECK IMPORTING", MethodParamName, modify),` TO lt_js.
  APPEND `      seq("DETERMINATION", TypeName, "IMPORTING", MethodParamName, "FOR", TypeName),` TO lt_js.
  APPEND `      seq("VALIDATION", TypeName, "IMPORTING", MethodParamName, "FOR", TypeName),` TO lt_js.
  APPEND `      seq("NUMBERING IMPORTING", MethodParamName, modify),` TO lt_js.
  APPEND `      seq("READ IMPORTING", MethodParamName, altPrio(forRead, forfunction)),` TO lt_js.
  APPEND `      seq("FEATURES IMPORTING", MethodParamName, "REQUEST", NamespaceSimpleName, "FOR", NamespaceSimpleName, result),` TO lt_js.
  APPEND `      seq("BEHAVIOR IMPORTING", MethodParamName, "FOR CREATE", TypeName, MethodParamName, "FOR UPDATE", TypeName, MethodParamName, "FOR DELETE", TypeName),` TO lt_js.
  APPEND `      seq("BEHAVIOR IMPORTING", MethodParamName, "FOR READ", TypeName, result),` TO lt_js.
  APPEND `      seq("BEHAVIOR IMPORTING", MethodParamName, "FOR UPDATE", TypeName),` TO lt_js.
  APPEND `      seq(alt("BEHAVIOR", "LOCK"), "IMPORTING", MethodParamName, "FOR LOCK", TypeName),` TO lt_js.
  APPEND `      seq("DETERMINE", alt("ON MODIFY", "ON SAVE"), "IMPORTING", MethodParamName, "FOR", TypeName),` TO lt_js.
  APPEND `      seq("GLOBAL AUTHORIZATION IMPORTING REQUEST", MethodParamName, "FOR", TypeName, result),` TO lt_js.
  APPEND `      seq("GLOBAL FEATURES IMPORTING REQUEST", MethodParamName, "FOR", TypeName, result),` TO lt_js.
  APPEND `      seq(seq(opt("INSTANCE"), "AUTHORIZATION IMPORTING"), MethodParamName, "REQUEST", MethodParamName, "FOR", TypeName, result),` TO lt_js.
  APPEND `      seq("INSTANCE FEATURES IMPORTING", MethodParamName, "REQUEST", MethodParamName, "FOR", TypeName, result)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const amdp = seq(` TO lt_js.
  APPEND `      "AMDP OPTIONS",` TO lt_js.
  APPEND `      optPrio("READ-ONLY"),` TO lt_js.
  APPEND `      "CDS SESSION CLIENT",` TO lt_js.
  APPEND `      alt("CURRENT", "DEPENDENT"),` TO lt_js.
  APPEND `      optPrio(MethodDefImporting),` TO lt_js.
  APPEND `      optPrio(MethodDefExporting),` TO lt_js.
  APPEND `      optPrio(MethodDefRaising)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      altPrio("CLASS-METHODS", "METHODS"),` TO lt_js.
  APPEND `      MethodName,` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        seq(optPrio(Abstract), optPrio(def), EventHandler),` TO lt_js.
  APPEND `        parameters,` TO lt_js.
  APPEND `        testing,` TO lt_js.
  APPEND `        seq("FOR", behavior),` TO lt_js.
  APPEND `        amdp,` TO lt_js.
  APPEND `        "NOT AT END OF MODE",` TO lt_js.
  APPEND `        optPrio(Redefinition)` TO lt_js.
  APPEND `      )` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_mesh_begin.ts` TO lt_js.
  APPEND `var TypeMeshBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = ver("v740sp05" /* v740sp05 */, seq("TYPES", "BEGIN OF MESH", NamespaceSimpleName));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_mesh_end.ts` TO lt_js.
  APPEND `var TypeMeshEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = ver("v740sp05" /* v740sp05 */, seq("TYPES", "END OF MESH", NamespaceSimpleName));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/interface_def.ts` TO lt_js.
  APPEND `var InterfaceDef = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const val = seq(AttributeName, "=", Source);` TO lt_js.
  APPEND `    const dataValues = seq("DATA VALUES", plus(val));` TO lt_js.
  APPEND `    const options = alt(` TO lt_js.
  APPEND `      seq(AbstractMethods, opt(FinalMethods)),` TO lt_js.
  APPEND `      FinalMethods,` TO lt_js.
  APPEND `      "ALL METHODS ABSTRACT",` TO lt_js.
  APPEND `      "ALL METHODS FINAL",` TO lt_js.
  APPEND `      ver("v740sp02" /* v740sp02 */, "PARTIALLY IMPLEMENTED", "open-abap" /* OpenABAP */)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "INTERFACES",` TO lt_js.
  APPEND `      InterfaceName,` TO lt_js.
  APPEND `      opt(options),` TO lt_js.
  APPEND `      opt(dataValues)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/at_selection_screen.ts` TO lt_js.
  APPEND `var AtSelectionScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const output = "OUTPUT";` TO lt_js.
  APPEND `    const value = seq("ON VALUE-REQUEST FOR", FieldSub);` TO lt_js.
  APPEND `    const exit = "ON EXIT-COMMAND";` TO lt_js.
  APPEND `    const field = seq("ON", FieldSub);` TO lt_js.
  APPEND `    const end = seq("ON END OF", Field);` TO lt_js.
  APPEND `    const radio = seq("ON RADIOBUTTON GROUP", Field);` TO lt_js.
  APPEND `    const block = seq("ON BLOCK", BlockName);` TO lt_js.
  APPEND `    const help = seq("ON HELP-REQUEST FOR", FieldSub);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "AT SELECTION-SCREEN",` TO lt_js.
  APPEND `      opt(alt(output, value, radio, exit, field, end, help, block))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/include_type.ts` TO lt_js.
  APPEND `var IncludeType = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const tas = seq("AS", Field);` TO lt_js.
  APPEND `    const renaming = seq("RENAMING WITH SUFFIX", ComponentName);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "INCLUDE",` TO lt_js.
  APPEND `      alt("TYPE", "STRUCTURE"),` TO lt_js.
  APPEND `      TypeName,` TO lt_js.
  APPEND `      opt(tas),` TO lt_js.
  APPEND `      opt(renaming)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/import_dynpro.ts` TO lt_js.
  APPEND `var ImportDynpro = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "IMPORT DYNPRO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "ID",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_function.ts` TO lt_js.
  APPEND `var CallFunction = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const starting = verNot("Cloud" /* Cloud */, seq("STARTING NEW TASK", SimpleSource2));` TO lt_js.
  APPEND `    const update = verNot("Cloud" /* Cloud */, str("IN UPDATE TASK"));` TO lt_js.
  APPEND `    const unit = seq("UNIT", Source);` TO lt_js.
  APPEND `    const background = verNot("Cloud" /* Cloud */, seq("IN BACKGROUND", altPrio("TASK", unit)));` TO lt_js.
  APPEND `    const calling = seq("CALLING", MethodSource, "ON END OF TASK");` TO lt_js.
  APPEND `    const performing = seq("PERFORMING", FormName, "ON END OF TASK");` TO lt_js.
  APPEND `    const separate = str("AS SEPARATE UNIT");` TO lt_js.
  APPEND `    const keeping = str("KEEPING LOGICAL UNIT OF WORK");` TO lt_js.
  APPEND `    const options = per(starting, update, background, Destination, calling, performing, separate, keeping);` TO lt_js.
  APPEND `    const ex = seq("EXCEPTION-TABLE", Source);` TO lt_js.
  APPEND `    const dynamic = alt(seq("PARAMETER-TABLE", Source, opt(ex)), ex);` TO lt_js.
  APPEND `    const call = seq(` TO lt_js.
  APPEND `      "CALL",` TO lt_js.
  APPEND `      altPrio("FUNCTION", verNot("Cloud" /* Cloud */, "CUSTOMER-FUNCTION")),` TO lt_js.
  APPEND `      FunctionName,` TO lt_js.
  APPEND `      opt(options),` TO lt_js.
  APPEND `      alt(FunctionParameters, dynamic)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return call;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_selection_screen.ts` TO lt_js.
  APPEND `var CallSelectionScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ending = seq("ENDING AT", Source, Source);` TO lt_js.
  APPEND `    const starting = seq("STARTING AT", Source, Source);` TO lt_js.
  APPEND `    const using = seq("USING SELECTION-SET", Source);` TO lt_js.
  APPEND `    const at = seq(starting, opt(ending));` TO lt_js.
  APPEND `    const ret = seq("CALL SELECTION-SCREEN", Source, opt(at), opt(using));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_transformation.ts` TO lt_js.
  APPEND `var CallTransformation = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const options = seq("OPTIONS", CallTransformationOptions);` TO lt_js.
  APPEND `    const parameters = seq("PARAMETERS", CallTransformationParameters);` TO lt_js.
  APPEND `    const objects = seq("OBJECTS", CallTransformationParameters);` TO lt_js.
  APPEND `    const source2 = seq("XML", SimpleSource3);` TO lt_js.
  APPEND `    const source = seq("SOURCE", alt(CallTransformationParameters, source2));` TO lt_js.
  APPEND `    const result2 = seq("XML", Target);` TO lt_js.
  APPEND `    const result = seq("RESULT", alt(CallTransformationParameters, result2));` TO lt_js.
  APPEND `    const call = seq(` TO lt_js.
  APPEND `      "CALL TRANSFORMATION",` TO lt_js.
  APPEND `      alt(NamespaceSimpleName, Dynamic),` TO lt_js.
  APPEND `      per(options, parameters, objects, source, result)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return call;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/read_line.ts` TO lt_js.
  APPEND `var ReadLine = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const val = seq("LINE VALUE INTO", Target);` TO lt_js.
  APPEND `    const fields = seq(Target, opt(seq("INTO", Target)));` TO lt_js.
  APPEND `    const field = seq("FIELD VALUE", plus(fields));` TO lt_js.
  APPEND `    const index = seq("INDEX", Source);` TO lt_js.
  APPEND `    const page = seq("OF PAGE", Source);` TO lt_js.
  APPEND `    const current = str("OF CURRENT PAGE");` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "READ",` TO lt_js.
  APPEND `      alt("CURRENT LINE", seq("LINE", Source)),` TO lt_js.
  APPEND `      opt(per(val, index, field, page, current))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/read_textpool.ts` TO lt_js.
  APPEND `var ReadTextpool = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const language = seq("LANGUAGE", Source);` TO lt_js.
  APPEND `    const into = seq("INTO", SimpleTarget);` TO lt_js.
  APPEND `    const state = seq("STATE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "READ TEXTPOOL",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(into, language, state)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/read_report.ts` TO lt_js.
  APPEND `var ReadReport = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const state = seq("STATE", Source);` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    const maximum = seq("MAXIMUM WIDTH INTO", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "READ REPORT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      per(state, into, maximum)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/read_dataset.ts` TO lt_js.
  APPEND `var ReadDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "READ DATASET",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(per(` TO lt_js.
  APPEND `        seq("MAXIMUM LENGTH", Source),` TO lt_js.
  APPEND `        seq("ACTUAL LENGTH", Target),` TO lt_js.
  APPEND `        seq("LENGTH", Target)` TO lt_js.
  APPEND `      ))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_bit.ts` TO lt_js.
  APPEND `var GetBit = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET BIT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "OF",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_reference.ts` TO lt_js.
  APPEND `var GetReference = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET REFERENCE OF",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/insert_report.ts` TO lt_js.
  APPEND `var InsertReport = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      seq("STATE", Source),` TO lt_js.
  APPEND `      seq("EXTENSION TYPE", Source),` TO lt_js.
  APPEND `      seq("DIRECTORY ENTRY", Source),` TO lt_js.
  APPEND `      seq("UNICODE ENABLING", Source),` TO lt_js.
  APPEND `      seq("PROGRAM TYPE", Source),` TO lt_js.
  APPEND `      ver("v750" /* v750 */, seq("VERSION", Source)),` TO lt_js.
  APPEND `      seq("FIXED-POINT ARITHMETIC", Source),` TO lt_js.
  APPEND `      "KEEPING DIRECTORY ENTRY"` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "INSERT REPORT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/insert_textpool.ts` TO lt_js.
  APPEND `var InsertTextpool = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const state = seq("STATE", Source);` TO lt_js.
  APPEND `    const language = seq("LANGUAGE", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "INSERT TEXTPOOL",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(language),` TO lt_js.
  APPEND `      opt(state)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_bit.ts` TO lt_js.
  APPEND `var SetBit = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET BIT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "OF",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(seq("TO", Source))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_run_time.ts` TO lt_js.
  APPEND `var GetRunTime = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("GET RUN TIME FIELD", Target);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_parameter.ts` TO lt_js.
  APPEND `var GetParameter = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET PARAMETER ID",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FIELD",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/create_data.ts` TO lt_js.
  APPEND `var CreateData = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const areaHandle = seq("AREA HANDLE", Source);` TO lt_js.
  APPEND `    const typeHandle = seq("TYPE HANDLE", Source);` TO lt_js.
  APPEND `    const type = seq(` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        "TYPE",` TO lt_js.
  APPEND `        "TYPE REF TO",` TO lt_js.
  APPEND `        "TYPE TABLE OF",` TO lt_js.
  APPEND `        "TYPE TABLE OF REF TO",` TO lt_js.
  APPEND `        "TYPE SORTED TABLE OF",` TO lt_js.
  APPEND `        "TYPE HASHED TABLE OF",` TO lt_js.
  APPEND `        "TYPE STANDARD TABLE OF",` TO lt_js.
  APPEND `        "TYPE LINE OF"` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      alt(TypeName, Dynamic)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const like = seq(` TO lt_js.
  APPEND `      alt(` TO lt_js.
  APPEND `        "LIKE",` TO lt_js.
  APPEND `        "LIKE HASHED TABLE OF",` TO lt_js.
  APPEND `        "LIKE LINE OF",` TO lt_js.
  APPEND `        "LIKE STANDARD TABLE OF",` TO lt_js.
  APPEND `        "LIKE SORTED TABLE OF",` TO lt_js.
  APPEND `        "LIKE TABLE OF"` TO lt_js.
  APPEND `      ),` TO lt_js.
  APPEND `      alt(Source, Dynamic)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const length = seq("LENGTH", Source);` TO lt_js.
  APPEND `    const initial = seq("INITIAL SIZE", Source);` TO lt_js.
  APPEND `    const decimals = seq("DECIMALS", Source);` TO lt_js.
  APPEND `    const uniq = alt("UNIQUE", "NON-UNIQUE");` TO lt_js.
  APPEND `    const emptyKey = ver("v740sp02" /* v740sp02 */, "EMPTY KEY");` TO lt_js.
  APPEND `    const def = seq(opt(uniq), alt("DEFAULT KEY", emptyKey));` TO lt_js.
  APPEND `    const kdef = seq(opt(uniq), "KEY", alt(plus(Field), Dynamic));` TO lt_js.
  APPEND `    const key = seq("WITH", alt(def, kdef));` TO lt_js.
  APPEND `    const specified = seq(` TO lt_js.
  APPEND `      alt(type, like),` TO lt_js.
  APPEND `      opt(key),` TO lt_js.
  APPEND `      opt(initial),` TO lt_js.
  APPEND `      opt(length),` TO lt_js.
  APPEND `      opt(decimals)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CREATE DATA",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      opt(alt(typeHandle, seq(opt(areaHandle), specified)))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_country.ts` TO lt_js.
  APPEND `var SetCountry = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("SET COUNTRY", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/function_module.ts` TO lt_js.
  APPEND `var FunctionModule = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("FUNCTION", Field);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/dynpro_loop.ts` TO lt_js.
  APPEND `var DynproLoop = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const into = seq("INTO", SimpleSource2);` TO lt_js.
  APPEND `    const cursor = seq("CURSOR", SimpleSource2);` TO lt_js.
  APPEND `    const withControl = seq("WITH CONTROL", SimpleSource2);` TO lt_js.
  APPEND `    const from = seq("FROM", SimpleSource2);` TO lt_js.
  APPEND `    const to = seq("TO", SimpleSource2);` TO lt_js.
  APPEND `    const at = seq(` TO lt_js.
  APPEND `      "AT",` TO lt_js.
  APPEND `      SimpleSource2,` TO lt_js.
  APPEND `      per(into, withControl, cursor, from, to)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("LOOP", altPrio(at, withControl));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_pools.ts` TO lt_js.
  APPEND `var TypePools = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const fieldName = regex(/^\w+$/);` TO lt_js.
  APPEND `    const ret = seq("TYPE-POOLS", fieldName);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_pool.ts` TO lt_js.
  APPEND `var TypePool = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const fieldName = regex(/^\w+$/);` TO lt_js.
  APPEND `    const ret = seq("TYPE-POOL", fieldName);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/wait.ts` TO lt_js.
  APPEND `var Wait = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const up = seq("UP TO", Source, "SECONDS");` TO lt_js.
  APPEND `    const channels = "MESSAGING CHANNELS";` TO lt_js.
  APPEND `    const push = ver("v750" /* v750 */, "PUSH CHANNELS", "open-abap" /* OpenABAP */);` TO lt_js.
  APPEND `    const tasks = "ASYNCHRONOUS TASKS";` TO lt_js.
  APPEND `    const type = seq("FOR", per(channels, push, tasks));` TO lt_js.
  APPEND `    const until = seq(opt(type), "UNTIL", Cond, opt(up));` TO lt_js.
  APPEND `    const ret = seq("WAIT", alt(until, up));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/overlay.ts` TO lt_js.
  APPEND `var Overlay = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const only = seq("ONLY", Source);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "OVERLAY",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "WITH",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(only)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_screen.ts` TO lt_js.
  APPEND `var SetScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("SET SCREEN", Source);` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_cursor.ts` TO lt_js.
  APPEND `var SetCursor = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const line = seq("LINE", Source);` TO lt_js.
  APPEND `    const offset = seq("OFFSET", Source);` TO lt_js.
  APPEND `    const field = seq("FIELD", Source);` TO lt_js.
  APPEND `    const pos = seq(Source, Source);` TO lt_js.
  APPEND `    const ret = seq("SET CURSOR", altPrio(per(field, offset, line), pos));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_screen.ts` TO lt_js.
  APPEND `var CallScreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const starting = seq("STARTING AT", Source, Source);` TO lt_js.
  APPEND `    const ending = seq("ENDING AT", Source, Source);` TO lt_js.
  APPEND `    const ret = seq("CALL SCREEN", Source, optPrio(seq(starting, optPrio(ending))));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_pf_status.ts` TO lt_js.
  APPEND `var SetPFStatus = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const program = seq("OF PROGRAM", Source);` TO lt_js.
  APPEND `    const options = per(` TO lt_js.
  APPEND `      program,` TO lt_js.
  APPEND `      "IMMEDIATELY",` TO lt_js.
  APPEND `      seq("EXCLUDING", Source)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET PF-STATUS",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(options)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_titlebar.ts` TO lt_js.
  APPEND `var SetTitlebar = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const wit = seq("WITH", plus(Source));` TO lt_js.
  APPEND `    const program = seq("OF PROGRAM", Source);` TO lt_js.
  APPEND `    const ret = seq("SET TITLEBAR", Source, opt(program), opt(wit));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/program.ts` TO lt_js.
  APPEND `var Program = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const message = seq("MESSAGE-ID", MessageClass);` TO lt_js.
  APPEND `    const size = seq("LINE-SIZE", Source);` TO lt_js.
  APPEND `    const heading = str("NO STANDARD PAGE HEADING");` TO lt_js.
  APPEND `    const line = seq("LINE-COUNT", Source, opt(FieldLength));` TO lt_js.
  APPEND `    const options = per(message, size, heading, line);` TO lt_js.
  APPEND `    const ret = seq("PROGRAM", opt(ReportName), opt(options));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/function_pool.ts` TO lt_js.
  APPEND `var FunctionPool = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const message = seq("MESSAGE-ID", MessageClass);` TO lt_js.
  APPEND `    const line = seq("LINE-SIZE", Integer);` TO lt_js.
  APPEND `    const no = str("NO STANDARD PAGE HEADING");` TO lt_js.
  APPEND `    return seq(` TO lt_js.
  APPEND `      "FUNCTION-POOL",` TO lt_js.
  APPEND `      IncludeName,` TO lt_js.
  APPEND `      opt(per(message, line, no))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/module.ts` TO lt_js.
  APPEND `var Module = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const sw = seq("SWITCH", NamespaceSimpleName);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "MODULE",` TO lt_js.
  APPEND `      FormName,` TO lt_js.
  APPEND `      opt(alt("INPUT", "OUTPUT", "ON CHAIN-REQUEST", "ON CHAIN-INPUT", "AT EXIT-COMMAND", sw))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endmodule.ts` TO lt_js.
  APPEND `var EndModule = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "ENDMODULE");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endfunction.ts` TO lt_js.
  APPEND `var EndFunction = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("ENDFUNCTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/retry.ts` TO lt_js.
  APPEND `var Retry = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return ver("v702" /* v702 */, "RETRY");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/authority_check.ts` TO lt_js.
  APPEND `var AuthorityCheck = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const field = seq("FIELD", Source);` TO lt_js.
  APPEND `    const id = seq(` TO lt_js.
  APPEND `      "ID",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      alt(field, "DUMMY")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "AUTHORITY-CHECK OBJECT",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(seq("FOR USER", Source)),` TO lt_js.
  APPEND `      plus(id)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_parameter.ts` TO lt_js.
  APPEND `var SetParameter = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET PARAMETER ID",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FIELD",` TO lt_js.
  APPEND `      Source` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/field.ts` TO lt_js.
  APPEND `var Field2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const moduleOptions = alt("ON INPUT", "ON REQUEST", "ON CHAIN-REQUEST", "ON CHAIN-INPUT", "AT CURSOR-SELECTION");` TO lt_js.
  APPEND `    const module = seq("MODULE", FormName, opt(moduleOptions));` TO lt_js.
  APPEND `    const moduleStrange = seq(moduleOptions, "MODULE", FormName);` TO lt_js.
  APPEND `    const values = seq("VALUES", tok(WParenLeft), "BETWEEN", Constant, "AND", Constant, tok(ParenRightW));` TO lt_js.
  APPEND `    const wit = seq("WITH", altPrio(FieldChain, Constant));` TO lt_js.
  APPEND `    const cond = seq(FieldChain, "=", FieldChain);` TO lt_js.
  APPEND `    const where = seq(cond, starPrio(seq("AND", cond)));` TO lt_js.
  APPEND `    const into = seq("INTO", FieldChain);` TO lt_js.
  APPEND `    const select = seq("SELECT * FROM", FieldChain, "WHERE", where, opt(into), opt("WHENEVER NOT FOUND SEND ERRORMESSAGE"));` TO lt_js.
  APPEND `    const ret = seq("FIELD", FieldChain, opt(altPrio(module, moduleStrange, values, wit, select)));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_cursor.ts` TO lt_js.
  APPEND `var GetCursor = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const line = seq("LINE", Target);` TO lt_js.
  APPEND `    const field = seq("FIELD", Target);` TO lt_js.
  APPEND `    const offset = seq("OFFSET", Target);` TO lt_js.
  APPEND `    const value = seq("VALUE", Target);` TO lt_js.
  APPEND `    const length = seq("LENGTH", Target);` TO lt_js.
  APPEND `    const area = seq("AREA", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "GET CURSOR",` TO lt_js.
  APPEND `      per(line, opt("DISPLAY"), field, offset, value, length, area)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_kernel.ts` TO lt_js.
  APPEND `var CallKernel = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CALL",` TO lt_js.
  APPEND `      altPrio(Constant, Field),` TO lt_js.
  APPEND `      starPrio(KernelId)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_transaction.ts` TO lt_js.
  APPEND `var CallTransaction = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const options = seq("OPTIONS FROM", Source);` TO lt_js.
  APPEND `    const messages = seq("MESSAGES INTO", Target);` TO lt_js.
  APPEND `    const auth = seq(altPrio("WITH", "WITHOUT"), "AUTHORITY-CHECK");` TO lt_js.
  APPEND `    const perm = per(` TO lt_js.
  APPEND `      seq("UPDATE", Source),` TO lt_js.
  APPEND `      "AND SKIP FIRST SCREEN",` TO lt_js.
  APPEND `      options,` TO lt_js.
  APPEND `      messages,` TO lt_js.
  APPEND `      seq("MODE", Source)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CALL TRANSACTION",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio(auth),` TO lt_js.
  APPEND `      optPrio(seq("USING", Source)),` TO lt_js.
  APPEND `      opt(perm)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/unpack.ts` TO lt_js.
  APPEND `var Unpack = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "UNPACK",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "TO",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/skip.ts` TO lt_js.
  APPEND `var Skip = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SKIP",` TO lt_js.
  APPEND `      opt("TO LINE"),` TO lt_js.
  APPEND `      opt(Source)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/uline.ts` TO lt_js.
  APPEND `var Uline = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("ULINE", optPrio(WriteOffsetLength), optPrio("NO-GAP"));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/data_begin.ts` TO lt_js.
  APPEND `var DataBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const occurs = seq("OCCURS", altPrio(Integer, FieldChain));` TO lt_js.
  APPEND `    const common = seq("COMMON PART", optPrio(DefinitionName));` TO lt_js.
  APPEND `    const structure = seq(` TO lt_js.
  APPEND `      "BEGIN OF",` TO lt_js.
  APPEND `      altPrio(common, seq(` TO lt_js.
  APPEND `        DefinitionName,` TO lt_js.
  APPEND `        optPrio("READ-ONLY"),` TO lt_js.
  APPEND `        optPrio(occurs)` TO lt_js.
  APPEND `      ))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return seq("DATA", structure);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/data_end.ts` TO lt_js.
  APPEND `var DataEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const common = seq("COMMON PART", optPrio(DefinitionName));` TO lt_js.
  APPEND `    const structure = seq(` TO lt_js.
  APPEND `      "END OF",` TO lt_js.
  APPEND `      altPrio(common, DefinitionName)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const valid = seq("VALID BETWEEN", ComponentName, "AND", ComponentName);` TO lt_js.
  APPEND `    return seq("DATA", structure, optPrio(valid));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_begin.ts` TO lt_js.
  APPEND `var TypeBegin = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("TYPES", "BEGIN OF", NamespaceSimpleName, optPrio(verNot("Cloud" /* Cloud */, "%_FINAL")));` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/process_after_input.ts` TO lt_js.
  APPEND `var ProcessAfterInput = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "PROCESS AFTER INPUT");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/process_before_output.ts` TO lt_js.
  APPEND `var ProcessBeforeOutput = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "PROCESS BEFORE OUTPUT");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/process_on_value_request.ts` TO lt_js.
  APPEND `var ProcessOnValueRequest = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "PROCESS ON VALUE-REQUEST");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/type_end.ts` TO lt_js.
  APPEND `var TypeEnd = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("TYPES", "END OF", NamespaceSimpleName);` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/raise_event.ts` TO lt_js.
  APPEND `var RaiseEvent = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const exporting = seq("EXPORTING", ParameterListS);` TO lt_js.
  APPEND `    return seq("RAISE EVENT", EventName, opt(exporting));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/cleanup.ts` TO lt_js.
  APPEND `var Cleanup = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const into = seq("INTO", Target);` TO lt_js.
  APPEND `    return seq("CLEANUP", opt(into));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/create_ole.ts` TO lt_js.
  APPEND `var CreateOLE = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CREATE OBJECT",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt("NO FLUSH"),` TO lt_js.
  APPEND `      opt("QUEUE-ONLY")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_ole.ts` TO lt_js.
  APPEND `var CallOLE = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const rc = seq("=", Target);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "CALL METHOD OF",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      opt(rc),` TO lt_js.
  APPEND `      opt("NO FLUSH"),` TO lt_js.
  APPEND `      opt(alt("QUEUE-ONLY", "QUEUEONLY")),` TO lt_js.
  APPEND `      opt(OLEExporting)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_property.ts` TO lt_js.
  APPEND `var SetProperty = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "SET PROPERTY OF",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      alt(Constant, Field),` TO lt_js.
  APPEND `      "=",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      optPrio("NO FLUSH"),` TO lt_js.
  APPEND `      opt(OLEExporting),` TO lt_js.
  APPEND `      opt("QUEUEONLY")` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/test_injection.ts` TO lt_js.
  APPEND `var TestInjection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq("TEST-INJECTION", TestSeamName);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_test_injection.ts` TO lt_js.
  APPEND `var EndTestInjection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return str("END-TEST-INJECTION");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/test_seam.ts` TO lt_js.
  APPEND `var TestSeam = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return ver("v750" /* v750 */, seq("TEST-SEAM", TestSeamName));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_test_seam.ts` TO lt_js.
  APPEND `var EndTestSeam = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return ver("v750" /* v750 */, str("END-TEST-SEAM"));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/delete_memory.ts` TO lt_js.
  APPEND `var DeleteMemory = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const memory = seq("MEMORY ID", Source);` TO lt_js.
  APPEND `    const id = seq("ID", Source);` TO lt_js.
  APPEND `    const client = seq("CLIENT", Source);` TO lt_js.
  APPEND `    const shared = seq("SHARED", altPrio("MEMORY", "BUFFER"), Field, "(", regex(/^[\w%]+$/), ")", optPrio(client), id);` TO lt_js.
  APPEND `    const ret = seq("DELETE FROM", alt(memory, shared));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/provide.ts` TO lt_js.
  APPEND `var Provide = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const list = plusPrio(altPrio("*", ProvideFieldName));` TO lt_js.
  APPEND `    const fields = seq(` TO lt_js.
  APPEND `      "FIELDS",` TO lt_js.
  APPEND `      list,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "INTO",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "VALID",` TO lt_js.
  APPEND `      Field,` TO lt_js.
  APPEND `      "BOUNDS",` TO lt_js.
  APPEND `      Field,` TO lt_js.
  APPEND `      "AND",` TO lt_js.
  APPEND `      Field` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const fieldList = seq(plus(list), from);` TO lt_js.
  APPEND `    const where = seq("WHERE", Cond);` TO lt_js.
  APPEND `    const between = seq("BETWEEN", SimpleSource3, "AND", SimpleSource3);` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "PROVIDE",` TO lt_js.
  APPEND `      altPrio(plusPrio(fields), plusPrio(fieldList)),` TO lt_js.
  APPEND `      opt(per(between, where))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/endexec.ts` TO lt_js.
  APPEND `var EndExec = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "ENDEXEC");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/chain.ts` TO lt_js.
  APPEND `var Chain = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "CHAIN");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_chain.ts` TO lt_js.
  APPEND `var EndChain = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "ENDCHAIN");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/call_subscreen.ts` TO lt_js.
  APPEND `var CallSubscreen = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const including = seq("INCLUDING", Source, Source);` TO lt_js.
  APPEND `    const ret = seq("CALL SUBSCREEN", Source, optPrio(including));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/sort_dataset.ts` TO lt_js.
  APPEND `var SortDataset = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const order = alt("ASCENDING", "DESCENDING");` TO lt_js.
  APPEND `    const sel = alt(ComponentChain, SourceFieldSymbol, Dynamic);` TO lt_js.
  APPEND `    const fields = plus(seq(sel, optPrio(order)));` TO lt_js.
  APPEND `    const by = seq("BY", fields);` TO lt_js.
  APPEND `    const ret = seq("SORT", opt("AS TEXT"), opt(by));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/get_permissions.ts` TO lt_js.
  APPEND `var GetPermissions = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const type = altPrio("GLOBAL AUTHORIZATION", "INSTANCE");` TO lt_js.
  APPEND `    const from = seq("FROM", Source);` TO lt_js.
  APPEND `    const s = seq(` TO lt_js.
  APPEND `      "GET PERMISSIONS ONLY",` TO lt_js.
  APPEND `      type,` TO lt_js.
  APPEND `      "ENTITY",` TO lt_js.
  APPEND `      SimpleName,` TO lt_js.
  APPEND `      optPrio(from),` TO lt_js.
  APPEND `      "REQUEST",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "RESULT",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "FAILED",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "REPORTED",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v754" /* v754 */, s);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/set_locks.ts` TO lt_js.
  APPEND `var SetLocks = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const s = seq(` TO lt_js.
  APPEND `      "SET LOCKS OF",` TO lt_js.
  APPEND `      SimpleName,` TO lt_js.
  APPEND `      "ENTITY",` TO lt_js.
  APPEND `      SimpleName,` TO lt_js.
  APPEND `      "FROM",` TO lt_js.
  APPEND `      Source,` TO lt_js.
  APPEND `      "FAILED",` TO lt_js.
  APPEND `      Target,` TO lt_js.
  APPEND `      "REPORTED",` TO lt_js.
  APPEND `      Target` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ver("v754" /* v754 */, s);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/enhancement.ts` TO lt_js.
  APPEND `var Enhancement = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq("ENHANCEMENT", plus(NamespaceSimpleName));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/end_enhancement.ts` TO lt_js.
  APPEND `var EndEnhancement = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, "ENDENHANCEMENT");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/form_definition.ts` TO lt_js.
  APPEND `var FormDefinition = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const ret = seq(` TO lt_js.
  APPEND `      "FORM",` TO lt_js.
  APPEND `      FormName,` TO lt_js.
  APPEND `      "DEFINITION",` TO lt_js.
  APPEND `      opt(FormTables),` TO lt_js.
  APPEND `      opt(FormUsing),` TO lt_js.
  APPEND `      opt(FormChanging),` TO lt_js.
  APPEND `      opt(FormRaising)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/verification_message.ts` TO lt_js.
  APPEND `var VerificationMessage = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const priority = seq("PRIORITY", Source);` TO lt_js.
  APPEND `    const ret = seq("VERIFICATION-MESSAGE", Source, Source, opt(priority));` TO lt_js.
  APPEND `    return verNot("Cloud" /* Cloud */, ret);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/index.ts` TO lt_js.
  APPEND `var structures_exports = {};` TO lt_js.
  APPEND `__export(structures_exports, {` TO lt_js.
  APPEND `  Any: () => Any,` TO lt_js.
  APPEND `  At: () => At3,` TO lt_js.
  APPEND `  AtFirst: () => AtFirst2,` TO lt_js.
  APPEND `  AtLast: () => AtLast2,` TO lt_js.
  APPEND `  Body: () => Body,` TO lt_js.
  APPEND `  Case: () => Case2,` TO lt_js.
  APPEND `  CaseType: () => CaseType2,` TO lt_js.
  APPEND `  Catch: () => Catch2,` TO lt_js.
  APPEND `  CatchSystemExceptions: () => CatchSystemExceptions2,` TO lt_js.
  APPEND `  Chain: () => Chain2,` TO lt_js.
  APPEND `  ClassData: () => ClassData2,` TO lt_js.
  APPEND `  ClassDefinition: () => ClassDefinition2,` TO lt_js.
  APPEND `  ClassGlobal: () => ClassGlobal2,` TO lt_js.
  APPEND `  ClassImplementation: () => ClassImplementation2,` TO lt_js.
  APPEND `  Cleanup: () => Cleanup2,` TO lt_js.
  APPEND `  Constants: () => Constants,` TO lt_js.
  APPEND `  Data: () => Data2,` TO lt_js.
  APPEND `  Define: () => Define2,` TO lt_js.
  APPEND `  Do: () => Do2,` TO lt_js.
  APPEND `  DynproLogic: () => DynproLogic,` TO lt_js.
  APPEND `  DynproLoop: () => DynproLoop2,` TO lt_js.
  APPEND `  Else: () => Else2,` TO lt_js.
  APPEND `  ElseIf: () => ElseIf2,` TO lt_js.
  APPEND `  Enhancement: () => Enhancement2,` TO lt_js.
  APPEND `  EnhancementSection: () => EnhancementSection2,` TO lt_js.
  APPEND `  ExecSQL: () => ExecSQL2,` TO lt_js.
  APPEND `  Form: () => Form2,` TO lt_js.
  APPEND `  FunctionModule: () => FunctionModule2,` TO lt_js.
  APPEND `  If: () => If2,` TO lt_js.
  APPEND `  Interface: () => Interface2,` TO lt_js.
  APPEND `  InterfaceGlobal: () => InterfaceGlobal,` TO lt_js.
  APPEND `  Loop: () => Loop2,` TO lt_js.
  APPEND `  LoopAtScreen: () => LoopAtScreen2,` TO lt_js.
  APPEND `  LoopExtract: () => LoopExtract2,` TO lt_js.
  APPEND `  Method: () => Method,` TO lt_js.
  APPEND `  Module: () => Module2,` TO lt_js.
  APPEND `  Normal: () => Normal,` TO lt_js.
  APPEND `  OnChange: () => OnChange2,` TO lt_js.
  APPEND `  PrivateSection: () => PrivateSection,` TO lt_js.
  APPEND `  ProcessAfterInput: () => ProcessAfterInput2,` TO lt_js.
  APPEND `  ProcessBeforeOutput: () => ProcessBeforeOutput2,` TO lt_js.
  APPEND `  ProcessOnHelpRequest: () => ProcessOnHelpRequest2,` TO lt_js.
  APPEND `  ProcessOnValueRequest: () => ProcessOnValueRequest2,` TO lt_js.
  APPEND `  ProtectedSection: () => ProtectedSection,` TO lt_js.
  APPEND `  Provide: () => Provide2,` TO lt_js.
  APPEND `  PublicSection: () => PublicSection,` TO lt_js.
  APPEND `  SectionContents: () => SectionContents,` TO lt_js.
  APPEND `  Select: () => Select3,` TO lt_js.
  APPEND `  Statics: () => Statics,` TO lt_js.
  APPEND `  TestInjection: () => TestInjection2,` TO lt_js.
  APPEND `  TestSeam: () => TestSeam2,` TO lt_js.
  APPEND `  Try: () => Try2,` TO lt_js.
  APPEND `  TypeEnum: () => TypeEnum2,` TO lt_js.
  APPEND `  TypeMesh: () => TypeMesh2,` TO lt_js.
  APPEND `  Types: () => Types,` TO lt_js.
  APPEND `  When: () => When2,` TO lt_js.
  APPEND `  WhenType: () => WhenType2,` TO lt_js.
  APPEND `  While: () => While2,` TO lt_js.
  APPEND `  With: () => With2` TO lt_js.
  APPEND `});` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statements/_statement.ts` TO lt_js.
  APPEND `var Unknown = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    throw new Error("Unknown Statement, get_matcher");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Comment2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    throw new Error("Comment Statement, get_matcher");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Empty = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    throw new Error("Empty Statement, get_matcher");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var MacroCall = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    throw new Error("MacroCall Statement, get_matcher");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var MacroContent = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    throw new Error("MacroContent Statement, get_matcher");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var NativeSQL = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    throw new Error("NativeSQL Statement, get_matcher");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/_combi.ts` TO lt_js.
  APPEND `var Sequence2 = class {` TO lt_js.
  APPEND `  constructor(list) {` TO lt_js.
  APPEND `    if (list.length < 2) {` TO lt_js.
  APPEND `      throw new Error("Sequence, length error");` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.list = list;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toRailroad() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.toRailroad();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "Railroad.Sequence(" + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.list.reduce((a, c) => {` TO lt_js.
  APPEND `      return a.concat(c.getUsing());` TO lt_js.
  APPEND `    }, []);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return this.list[0].first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(statements, parent) {` TO lt_js.
  APPEND `    let inn = statements;` TO lt_js.
  APPEND `    let out = [];` TO lt_js.
  APPEND `    for (const i of this.list) {` TO lt_js.
  APPEND `      const match = i.run(inn, parent);` TO lt_js.
  APPEND `      if (match.error) {` TO lt_js.
  APPEND `        return {` TO lt_js.
  APPEND `          matched: [],` TO lt_js.
  APPEND `          unmatched: statements,` TO lt_js.
  APPEND `          error: true,` TO lt_js.
  APPEND `          errorDescription: match.errorDescription,` TO lt_js.
  APPEND `          errorMatched: out.length` TO lt_js.
  APPEND `        };` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (match.matched.length < 100) {` TO lt_js.
  APPEND `        out.push(...match.matched);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        out = out.concat(match.matched);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      inn = match.unmatched;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return {` TO lt_js.
  APPEND `      matched: out,` TO lt_js.
  APPEND `      unmatched: inn,` TO lt_js.
  APPEND `      error: false,` TO lt_js.
  APPEND `      errorDescription: "",` TO lt_js.
  APPEND `      errorMatched: 0` TO lt_js.
  APPEND `    };` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Alternative2 = class {` TO lt_js.
  APPEND `  constructor(list) {` TO lt_js.
  APPEND `    if (list.length < 2) {` TO lt_js.
  APPEND `      throw new Error("Alternative, length error");` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.list = list;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  setupMap() {` TO lt_js.
  APPEND `    if (this.map === void 0) {` TO lt_js.
  APPEND `      this.map = {};` TO lt_js.
  APPEND `      for (const i of this.list) {` TO lt_js.
  APPEND `        for (const first of i.first()) {` TO lt_js.
  APPEND `          if (this.map[first]) {` TO lt_js.
  APPEND `            this.map[first].push(i);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            this.map[first] = [i];` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toRailroad() {` TO lt_js.
  APPEND `    const children = this.list.map((e) => {` TO lt_js.
  APPEND `      return e.toRailroad();` TO lt_js.
  APPEND `    });` TO lt_js.
  APPEND `    return "Railroad.Choice(0, " + children.join() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.list.reduce((a, c) => {` TO lt_js.
  APPEND `      return a.concat(c.getUsing());` TO lt_js.
  APPEND `    }, []);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(statements, parent) {` TO lt_js.
  APPEND `    this.setupMap();` TO lt_js.
  APPEND `    let count = 0;` TO lt_js.
  APPEND `    let countError = "";` TO lt_js.
  APPEND `    if (statements.length === 0) {` TO lt_js.
  APPEND `      return {` TO lt_js.
  APPEND `        matched: [],` TO lt_js.
  APPEND `        unmatched: statements,` TO lt_js.
  APPEND `        error: true,` TO lt_js.
  APPEND `        errorDescription: countError,` TO lt_js.
  APPEND `        errorMatched: count` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const token = statements[0].getFirstToken().getStr().toUpperCase();` TO lt_js.
  APPEND `    for (const i of this.map[token] || []) {` TO lt_js.
  APPEND `      const match = i.run(statements, parent);` TO lt_js.
  APPEND `      if (match.error === false) {` TO lt_js.
  APPEND `        return match;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (match.errorMatched > count) {` TO lt_js.
  APPEND `        countError = match.errorDescription;` TO lt_js.
  APPEND `        count = match.errorMatched;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const i of this.map[""] || []) {` TO lt_js.
  APPEND `      const match = i.run(statements, parent);` TO lt_js.
  APPEND `      if (match.error === false) {` TO lt_js.
  APPEND `        return match;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (match.errorMatched > count) {` TO lt_js.
  APPEND `        countError = match.errorDescription;` TO lt_js.
  APPEND `        count = match.errorMatched;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (count === 0) {` TO lt_js.
  APPEND `      return {` TO lt_js.
  APPEND `        matched: [],` TO lt_js.
  APPEND `        unmatched: statements,` TO lt_js.
  APPEND `        error: true,` TO lt_js.
  APPEND `        errorDescription: "Unexpected code structure",` TO lt_js.
  APPEND `        errorMatched: count` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      return {` TO lt_js.
  APPEND `        matched: [],` TO lt_js.
  APPEND `        unmatched: statements,` TO lt_js.
  APPEND `        error: true,` TO lt_js.
  APPEND `        errorDescription: countError,` TO lt_js.
  APPEND `        errorMatched: count` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Optional2 = class {` TO lt_js.
  APPEND `  constructor(obj) {` TO lt_js.
  APPEND `    this.obj = obj;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toRailroad() {` TO lt_js.
  APPEND `    return "Railroad.Optional(" + this.obj.toRailroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.obj.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(statements, parent) {` TO lt_js.
  APPEND `    const ret = this.obj.run(statements, parent);` TO lt_js.
  APPEND `    ret.error = false;` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var Star2 = class {` TO lt_js.
  APPEND `  constructor(obj) {` TO lt_js.
  APPEND `    this.obj = obj;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toRailroad() {` TO lt_js.
  APPEND `    return "Railroad.ZeroOrMore(" + this.obj.toRailroad() + ")";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return this.obj.getUsing();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(statements, parent) {` TO lt_js.
  APPEND `    let inn = statements;` TO lt_js.
  APPEND `    let out = [];` TO lt_js.
  APPEND `    while (true) {` TO lt_js.
  APPEND `      if (inn.length === 0) {` TO lt_js.
  APPEND `        return {` TO lt_js.
  APPEND `          matched: out,` TO lt_js.
  APPEND `          unmatched: inn,` TO lt_js.
  APPEND `          error: false,` TO lt_js.
  APPEND `          errorDescription: "",` TO lt_js.
  APPEND `          errorMatched: 0` TO lt_js.
  APPEND `        };` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      const match = this.obj.run(inn, parent);` TO lt_js.
  APPEND `      if (match.error === true) {` TO lt_js.
  APPEND `        if (match.errorMatched > 0) {` TO lt_js.
  APPEND `          return {` TO lt_js.
  APPEND `            matched: out,` TO lt_js.
  APPEND `            unmatched: inn,` TO lt_js.
  APPEND `            error: true,` TO lt_js.
  APPEND `            errorDescription: match.errorDescription,` TO lt_js.
  APPEND `            errorMatched: match.errorMatched` TO lt_js.
  APPEND `          };` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          return {` TO lt_js.
  APPEND `            matched: out,` TO lt_js.
  APPEND `            unmatched: inn,` TO lt_js.
  APPEND `            error: false,` TO lt_js.
  APPEND `            errorDescription: "",` TO lt_js.
  APPEND `            errorMatched: 0` TO lt_js.
  APPEND `          };` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (match.matched.length < 100) {` TO lt_js.
  APPEND `        out.push(...match.matched);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        out = out.concat(match.matched);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      inn = match.unmatched;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    return [""];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var SubStructure = class {` TO lt_js.
  APPEND `  constructor(s) {` TO lt_js.
  APPEND `    this.s = s;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toRailroad() {` TO lt_js.
  APPEND `    return "Railroad.NonTerminal('" + this.s.constructor.name + "', {href: '#/structure/" + this.s.constructor.name + "'})";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return ["structure/" + this.s.constructor.name];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    this.setupMatcher();` TO lt_js.
  APPEND `    return this.matcher.first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  setupMatcher() {` TO lt_js.
  APPEND `    if (this.matcher === void 0) {` TO lt_js.
  APPEND `      this.matcher = this.s.getMatcher();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(statements, parent) {` TO lt_js.
  APPEND `    const nparent = new StructureNode(this.s);` TO lt_js.
  APPEND `    this.setupMatcher();` TO lt_js.
  APPEND `    const ret = this.matcher.run(statements, nparent);` TO lt_js.
  APPEND `    if (ret.matched.length === 0) {` TO lt_js.
  APPEND `      ret.error = true;` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      parent.addChild(nparent);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var SubStatement = class {` TO lt_js.
  APPEND `  constructor(obj) {` TO lt_js.
  APPEND `    this.obj = obj;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  first() {` TO lt_js.
  APPEND `    const o = new this.obj();` TO lt_js.
  APPEND `    if (o instanceof MacroCall || o instanceof NativeSQL) {` TO lt_js.
  APPEND `      return [""];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return o.getMatcher().first();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toRailroad() {` TO lt_js.
  APPEND `    return "Railroad.Terminal('" + this.className() + "', {href: '#/statement/" + this.className() + "'})";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getUsing() {` TO lt_js.
  APPEND `    return ["statement/" + this.className()];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  className() {` TO lt_js.
  APPEND `    return this.obj.name;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  run(statements, parent) {` TO lt_js.
  APPEND `    if (statements.length === 0) {` TO lt_js.
  APPEND `      return {` TO lt_js.
  APPEND `        matched: [],` TO lt_js.
  APPEND `        unmatched: [],` TO lt_js.
  APPEND `        error: true,` TO lt_js.
  APPEND `        errorDescription: "Expected " + this.className().toUpperCase(),` TO lt_js.
  APPEND `        errorMatched: 0` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    } else if (statements[0].get() instanceof this.obj) {` TO lt_js.
  APPEND `      parent.addChild(statements[0]);` TO lt_js.
  APPEND `      return {` TO lt_js.
  APPEND `        matched: [statements[0]],` TO lt_js.
  APPEND `        unmatched: statements.splice(1),` TO lt_js.
  APPEND `        error: false,` TO lt_js.
  APPEND `        errorDescription: "",` TO lt_js.
  APPEND `        errorMatched: 0` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      return {` TO lt_js.
  APPEND `        matched: [],` TO lt_js.
  APPEND `        unmatched: statements,` TO lt_js.
  APPEND `        error: true,` TO lt_js.
  APPEND `        errorDescription: "Expected " + this.className().toUpperCase(),` TO lt_js.
  APPEND `        errorMatched: 0` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `function seq2(first, ...rest) {` TO lt_js.
  APPEND `  return new Sequence2([first].concat(rest));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function alt2(first, ...rest) {` TO lt_js.
  APPEND `  return new Alternative2([first].concat(rest));` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function beginEnd(begin, body, end) {` TO lt_js.
  APPEND `  return new Sequence2([begin, body, end]);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function opt2(o) {` TO lt_js.
  APPEND `  return new Optional2(o);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function star2(s) {` TO lt_js.
  APPEND `  return new Star2(s);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `function sta(s) {` TO lt_js.
  APPEND `  return new SubStatement(s);` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `var singletons = {};` TO lt_js.
  APPEND `function sub(s) {` TO lt_js.
  APPEND `  if (singletons[s.name] === void 0) {` TO lt_js.
  APPEND `    singletons[s.name] = new SubStructure(new s());` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  return singletons[s.name];` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/any.ts` TO lt_js.
  APPEND `var Any = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return star2(alt2(` TO lt_js.
  APPEND `      sta(ClassLocalFriends),` TO lt_js.
  APPEND `      sta(ClassDeferred),` TO lt_js.
  APPEND `      sta(Report),` TO lt_js.
  APPEND `      sta(Program),` TO lt_js.
  APPEND `      sta(Parameter),` TO lt_js.
  APPEND `      sta(CheckSelectOptions),` TO lt_js.
  APPEND `      sta(Get),` TO lt_js.
  APPEND `      sta(Initialization),` TO lt_js.
  APPEND `      sta(InterfaceDeferred),` TO lt_js.
  APPEND `      sta(SelectionScreen),` TO lt_js.
  APPEND `      sta(SelectOption),` TO lt_js.
  APPEND `      sta(AtSelectionScreen),` TO lt_js.
  APPEND `      sta(AtLineSelection),` TO lt_js.
  APPEND `      sta(AtPF),` TO lt_js.
  APPEND `      sta(AtUserCommand),` TO lt_js.
  APPEND `      sta(StartOfSelection),` TO lt_js.
  APPEND `      sta(EndOfSelection),` TO lt_js.
  APPEND `      sta(LoadOfProgram),` TO lt_js.
  APPEND `      sta(TopOfPage),` TO lt_js.
  APPEND `      sta(EndOfPage),` TO lt_js.
  APPEND `      sta(Controls),` TO lt_js.
  APPEND `      sta(TypePools),` TO lt_js.
  APPEND `      sta(TypePool),` TO lt_js.
  APPEND `      sta(FunctionPool),` TO lt_js.
  APPEND `      sub(Normal),` TO lt_js.
  APPEND `      sub(Form2),` TO lt_js.
  APPEND `      sub(Module2),` TO lt_js.
  APPEND `      sub(FunctionModule2),` TO lt_js.
  APPEND `      sub(Interface2),` TO lt_js.
  APPEND `      sub(ClassDefinition2),` TO lt_js.
  APPEND `      sub(ClassImplementation2)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/normal.ts` TO lt_js.
  APPEND `var Normal = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return alt2(` TO lt_js.
  APPEND `      sta(Move),` TO lt_js.
  APPEND `      sta(Call),` TO lt_js.
  APPEND `      sta(Data),` TO lt_js.
  APPEND `      sub(If2),` TO lt_js.
  APPEND `      sta(Clear),` TO lt_js.
  APPEND `      sta(FieldSymbol2),` TO lt_js.
  APPEND `      sta(CreateObject),` TO lt_js.
  APPEND `      sta(CallFunction),` TO lt_js.
  APPEND `      sta(MacroCall),` TO lt_js.
  APPEND `      sub(LoopAtScreen2),` TO lt_js.
  APPEND `      sub(Loop2),` TO lt_js.
  APPEND `      sub(LoopExtract2),` TO lt_js.
  APPEND `      sta(Append),` TO lt_js.
  APPEND `      sub(Try2),` TO lt_js.
  APPEND `      sub(OnChange2),` TO lt_js.
  APPEND `      sta(ReadTable),` TO lt_js.
  APPEND `      sta(Assert),` TO lt_js.
  APPEND `      sta(Return),` TO lt_js.
  APPEND `      sta(Select2),` TO lt_js.
  APPEND `      sta(Assign),` TO lt_js.
  APPEND `      sta(InsertInternal),` TO lt_js.
  APPEND `      sta(DeleteInternal),` TO lt_js.
  APPEND `      sta(Concatenate),` TO lt_js.
  APPEND `      sub(Case2),` TO lt_js.
  APPEND `      sub(CaseType2),` TO lt_js.
  APPEND `      sub(Enhancement2),` TO lt_js.
  APPEND `      sub(EnhancementSection2),` TO lt_js.
  APPEND `      sta(AddCorresponding),` TO lt_js.
  APPEND `      sta(Add),` TO lt_js.
  APPEND `      sta(AssignLocalCopy),` TO lt_js.
  APPEND `      sta(AuthorityCheck),` TO lt_js.
  APPEND `      sta(Back),` TO lt_js.
  APPEND `      sta(Break),` TO lt_js.
  APPEND `      sta(BreakId),` TO lt_js.
  APPEND `      sta(CallDatabase),` TO lt_js.
  APPEND `      sta(CallDialog),` TO lt_js.
  APPEND `      sta(CallKernel),` TO lt_js.
  APPEND `      sta(CallOLE),` TO lt_js.
  APPEND `      sta(CallScreen),` TO lt_js.
  APPEND `      sta(ModifyScreen),` TO lt_js.
  APPEND `      sta(CallSelectionScreen),` TO lt_js.
  APPEND `      sta(CallTransaction),` TO lt_js.
  APPEND `      sta(CallTransformation),` TO lt_js.
  APPEND `      sta(Check),` TO lt_js.
  APPEND `      sta(ClassDefinitionLoad),` TO lt_js.
  APPEND `      sta(CloseCursor),` TO lt_js.
  APPEND `      sta(CloseDataset),` TO lt_js.
  APPEND `      sta(Collect),` TO lt_js.
  APPEND `      sta(Commit),` TO lt_js.
  APPEND `      sta(Communication),` TO lt_js.
  APPEND `      sta(Compute),` TO lt_js.
  APPEND `      sta(CallBadi),` TO lt_js.
  APPEND `      sta(Condense),` TO lt_js.
  APPEND `      sta(Constant2),` TO lt_js.
  APPEND `      sta(Contexts),` TO lt_js.
  APPEND `      sta(Continue),` TO lt_js.
  APPEND `      sta(ConvertText),` TO lt_js.
  APPEND `      sta(Convert),` TO lt_js.
  APPEND `      sta(CreateData),` TO lt_js.
  APPEND `      sta(CreateOLE),` TO lt_js.
  APPEND `      sta(DeleteCluster),` TO lt_js.
  APPEND `      sta(DeleteDatabase),` TO lt_js.
  APPEND `      sta(DeleteDataset),` TO lt_js.
  APPEND `      sta(DeleteDynpro),` TO lt_js.
  APPEND `      sta(DeleteMemory),` TO lt_js.
  APPEND `      sta(DeleteReport),` TO lt_js.
  APPEND `      sta(DeleteTextpool),` TO lt_js.
  APPEND `      sta(Demand),` TO lt_js.
  APPEND `      sta(Describe),` TO lt_js.
  APPEND `      sta(Detail),` TO lt_js.
  APPEND `      sta(Divide),` TO lt_js.
  APPEND `      sta(EditorCall),` TO lt_js.
  APPEND `      sta(EnhancementPoint),` TO lt_js.
  APPEND `      sta(Exit),` TO lt_js.
  APPEND `      sta(ExportDynpro),` TO lt_js.
  APPEND `      sta(Export),` TO lt_js.
  APPEND `      sta(Extract),` TO lt_js.
  APPEND `      sta(FetchNextCursor),` TO lt_js.
  APPEND `      sta(FieldGroup),` TO lt_js.
  APPEND `      sta(Fields),` TO lt_js.
  APPEND `      sta(Find),` TO lt_js.
  APPEND `      sta(Format),` TO lt_js.
  APPEND `      sta(FreeMemory),` TO lt_js.
  APPEND `      sta(FreeObject),` TO lt_js.
  APPEND `      sta(Free),` TO lt_js.
  APPEND `      sta(GenerateDynpro),` TO lt_js.
  APPEND `      sta(GenerateReport),` TO lt_js.
  APPEND `      sta(GenerateSubroutine),` TO lt_js.
  APPEND `      sta(GetBadi),` TO lt_js.
  APPEND `      sta(GetBit),` TO lt_js.
  APPEND `      sta(GetCursor),` TO lt_js.
  APPEND `      sta(GetDataset),` TO lt_js.
  APPEND `      sta(GetLocale),` TO lt_js.
  APPEND `      sta(GetParameter),` TO lt_js.
  APPEND `      sta(GetPFStatus),` TO lt_js.
  APPEND `      sta(GetProperty),` TO lt_js.
  APPEND `      sta(GetReference),` TO lt_js.
  APPEND `      sta(GetRunTime),` TO lt_js.
  APPEND `      sta(GetTime),` TO lt_js.
  APPEND `      sta(Hide),` TO lt_js.
  APPEND `      sta(Nodes),` TO lt_js.
  APPEND `      sta(ImportDynpro),` TO lt_js.
  APPEND `      sta(ImportNametab),` TO lt_js.
  APPEND `      sta(MoveCorresponding),` TO lt_js.
  APPEND `      sta(Import),` TO lt_js.
  APPEND `      sta(Infotypes),` TO lt_js.
  APPEND `      sta(Include),` TO lt_js.
  APPEND `      // include does not have to be at top level` TO lt_js.
  APPEND `      sta(InsertDatabase),` TO lt_js.
  APPEND `      sta(InsertReport),` TO lt_js.
  APPEND `      sta(InsertTextpool),` TO lt_js.
  APPEND `      sta(InsertFieldGroup),` TO lt_js.
  APPEND `      sta(InterfaceLoad),` TO lt_js.
  APPEND `      sta(Leave),` TO lt_js.
  APPEND `      sta(LoadReport),` TO lt_js.
  APPEND `      sta(Local),` TO lt_js.
  APPEND `      sta(With),` TO lt_js.
  APPEND `      sta(LogPoint),` TO lt_js.
  APPEND `      sta(Message),` TO lt_js.
  APPEND `      sta(ModifyLine),` TO lt_js.
  APPEND `      sta(ModifyDatabase),` TO lt_js.
  APPEND `      sta(ModifyInternal),` TO lt_js.
  APPEND `      sta(Multiply),` TO lt_js.
  APPEND `      sta(NewLine),` TO lt_js.
  APPEND `      sta(NewPage),` TO lt_js.
  APPEND `      sta(OpenCursor),` TO lt_js.
  APPEND `      sta(OpenDataset),` TO lt_js.
  APPEND `      sta(Overlay),` TO lt_js.
  APPEND `      sta(Pack),` TO lt_js.
  APPEND `      sta(Perform),` TO lt_js.
  APPEND `      sta(FormDefinition),` TO lt_js.
  APPEND `      sta(Position2),` TO lt_js.
  APPEND `      sta(Put),` TO lt_js.
  APPEND `      sta(PrintControl),` TO lt_js.
  APPEND `      sta(RaiseEvent),` TO lt_js.
  APPEND `      sta(RaiseEntityEvent),` TO lt_js.
  APPEND `      sta(Raise),` TO lt_js.
  APPEND `      sta(Ranges),` TO lt_js.
  APPEND `      sta(ReadDataset),` TO lt_js.
  APPEND `      sta(ReadLine),` TO lt_js.
  APPEND `      sta(ReadReport),` TO lt_js.
  APPEND `      sta(ReadTextpool),` TO lt_js.
  APPEND `      sta(Receive),` TO lt_js.
  APPEND `      sta(RefreshControl),` TO lt_js.
  APPEND `      sta(Refresh),` TO lt_js.
  APPEND `      sta(Reject),` TO lt_js.
  APPEND `      sta(Replace),` TO lt_js.
  APPEND `      sta(Reserve),` TO lt_js.
  APPEND `      sta(Resume),` TO lt_js.
  APPEND `      sta(Retry),` TO lt_js.
  APPEND `      sta(Rollback),` TO lt_js.
  APPEND `      sta(Scan),` TO lt_js.
  APPEND `      sta(ScrollList),` TO lt_js.
  APPEND `      sta(Search),` TO lt_js.
  APPEND `      sta(SetBit),` TO lt_js.
  APPEND `      sta(SetBlank),` TO lt_js.
  APPEND `      sta(SetCountry),` TO lt_js.
  APPEND `      sta(SetCursor),` TO lt_js.
  APPEND `      sta(SetDataset),` TO lt_js.
  APPEND `      sta(SetExtendedCheck),` TO lt_js.
  APPEND `      sta(SetHandler),` TO lt_js.
  APPEND `      sta(SetLanguage),` TO lt_js.
  APPEND `      sta(SetLeft),` TO lt_js.
  APPEND `      sta(SetLocale),` TO lt_js.
  APPEND `      sta(SetMargin),` TO lt_js.
  APPEND `      sta(SetParameter),` TO lt_js.
  APPEND `      sta(SetPFStatus),` TO lt_js.
  APPEND `      sta(SetProperty),` TO lt_js.
  APPEND `      sta(SetRunTime),` TO lt_js.
  APPEND `      sta(SetScreen),` TO lt_js.
  APPEND `      sta(SetTitlebar),` TO lt_js.
  APPEND `      sta(SetUserCommand),` TO lt_js.
  APPEND `      sta(SetUpdateTask),` TO lt_js.
  APPEND `      sta(Shift),` TO lt_js.
  APPEND `      sta(Skip),` TO lt_js.
  APPEND `      sta(SortDataset),` TO lt_js.
  APPEND `      sta(Sort),` TO lt_js.
  APPEND `      sta(Static),` TO lt_js.
  APPEND `      sta(Split),` TO lt_js.
  APPEND `      sta(Stop),` TO lt_js.
  APPEND `      sta(Submit),` TO lt_js.
  APPEND `      sta(Summary),` TO lt_js.
  APPEND `      sta(SubtractCorresponding),` TO lt_js.
  APPEND `      sta(Subtract),` TO lt_js.
  APPEND `      sta(SuppressDialog),` TO lt_js.
  APPEND `      sta(Supply),` TO lt_js.
  APPEND `      sta(Sum),` TO lt_js.
  APPEND `      sta(SyntaxCheck),` TO lt_js.
  APPEND `      sta(SystemCall),` TO lt_js.
  APPEND `      sta(Tables),` TO lt_js.
  APPEND `      sta(Transfer),` TO lt_js.
  APPEND `      sta(Translate),` TO lt_js.
  APPEND `      sta(Type2),` TO lt_js.
  APPEND `      sta(TypePools),` TO lt_js.
  APPEND `      sta(Uline),` TO lt_js.
  APPEND `      sta(Unassign),` TO lt_js.
  APPEND `      sta(Unpack),` TO lt_js.
  APPEND `      sta(UpdateDatabase),` TO lt_js.
  APPEND `      sta(Wait),` TO lt_js.
  APPEND `      sta(Window),` TO lt_js.
  APPEND `      sta(Write),` TO lt_js.
  APPEND `      sta(CommitEntities),` TO lt_js.
  APPEND `      sta(GetPermissions),` TO lt_js.
  APPEND `      sta(SetLocks),` TO lt_js.
  APPEND `      sta(ModifyEntities),` TO lt_js.
  APPEND `      sta(ReadEntities),` TO lt_js.
  APPEND `      sta(RollbackEntities),` TO lt_js.
  APPEND `      sta(Module),` TO lt_js.
  APPEND `      // todo, should be dynpro specific` TO lt_js.
  APPEND `      sta(Field2),` TO lt_js.
  APPEND `      // todo, should be dynpro specific` TO lt_js.
  APPEND `      sub(Chain2),` TO lt_js.
  APPEND `      // todo, should be dynpro specific` TO lt_js.
  APPEND `      sub(Define2),` TO lt_js.
  APPEND `      sub(TestInjection2),` TO lt_js.
  APPEND `      sub(TestSeam2),` TO lt_js.
  APPEND `      sub(TypeMesh2),` TO lt_js.
  APPEND `      sub(Provide2),` TO lt_js.
  APPEND `      sub(CatchSystemExceptions2),` TO lt_js.
  APPEND `      sub(At3),` TO lt_js.
  APPEND `      sub(AtFirst2),` TO lt_js.
  APPEND `      sub(AtLast2),` TO lt_js.
  APPEND `      sub(Constants),` TO lt_js.
  APPEND `      sub(Types),` TO lt_js.
  APPEND `      sub(Statics),` TO lt_js.
  APPEND `      sub(Select3),` TO lt_js.
  APPEND `      sub(Data2),` TO lt_js.
  APPEND `      sub(TypeEnum2),` TO lt_js.
  APPEND `      sub(While2),` TO lt_js.
  APPEND `      sub(With2),` TO lt_js.
  APPEND `      sub(Do2),` TO lt_js.
  APPEND `      sub(ExecSQL2)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/body.ts` TO lt_js.
  APPEND `var Body = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return star2(sub(Normal));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/at_first.ts` TO lt_js.
  APPEND `var AtFirst2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(AtFirst),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndAt)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/at_last.ts` TO lt_js.
  APPEND `var AtLast2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(AtLast),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndAt)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/at.ts` TO lt_js.
  APPEND `var At3 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(At2),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndAt)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/when_type.ts` TO lt_js.
  APPEND `var WhenType2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const when = seq2(alt2(sta(WhenType), sta(WhenOthers)), opt2(sub(Body)));` TO lt_js.
  APPEND `    return when;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/case_type.ts` TO lt_js.
  APPEND `var CaseType2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(CaseType),` TO lt_js.
  APPEND `      star2(alt2(sub(WhenType2), sta(Data))),` TO lt_js.
  APPEND `      sta(EndCase)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/when.ts` TO lt_js.
  APPEND `var When2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const when = seq2(alt2(sta(When), sta(WhenOthers)), opt2(sub(Body)));` TO lt_js.
  APPEND `    return when;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/case.ts` TO lt_js.
  APPEND `var Case2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Case),` TO lt_js.
  APPEND `      seq2(star2(sub(Normal)), star2(alt2(sub(When2), sta(MacroCall), sta(Include)))),` TO lt_js.
  APPEND `      sta(EndCase)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/catch_system_exceptions.ts` TO lt_js.
  APPEND `var CatchSystemExceptions2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(CatchSystemExceptions),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndCatch)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/catch.ts` TO lt_js.
  APPEND `var Catch2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const cat = seq2(sta(Catch), opt2(sub(Body)));` TO lt_js.
  APPEND `    return cat;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/chain.ts` TO lt_js.
  APPEND `var Chain2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Chain),` TO lt_js.
  APPEND `      star2(alt2(sta(Field2), sta(Module))),` TO lt_js.
  APPEND `      sta(EndChain)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/class_data.ts` TO lt_js.
  APPEND `var ClassData2 = class _ClassData {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(ClassDataBegin),` TO lt_js.
  APPEND `      star2(alt2(sta(ClassData), sub(_ClassData))),` TO lt_js.
  APPEND `      sta(ClassDataEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/types.ts` TO lt_js.
  APPEND `var Types = class _Types {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(TypeBegin),` TO lt_js.
  APPEND `      star2(alt2(` TO lt_js.
  APPEND `        sta(Type2),` TO lt_js.
  APPEND `        sub(_Types),` TO lt_js.
  APPEND `        sta(MacroCall),` TO lt_js.
  APPEND `        sta(Include),` TO lt_js.
  APPEND `        sta(IncludeType)` TO lt_js.
  APPEND `      )),` TO lt_js.
  APPEND `      sta(TypeEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/constants.ts` TO lt_js.
  APPEND `var Constants = class _Constants {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(ConstantBegin),` TO lt_js.
  APPEND `      star2(alt2(` TO lt_js.
  APPEND `        sta(Constant2),` TO lt_js.
  APPEND `        sta(Include),` TO lt_js.
  APPEND `        sub(_Constants)` TO lt_js.
  APPEND `      )),` TO lt_js.
  APPEND `      sta(ConstantEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/type_enum.ts` TO lt_js.
  APPEND `var TypeEnum2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(TypeEnumBegin),` TO lt_js.
  APPEND `      star2(alt2(sta(TypeEnum), sta(Type2))),` TO lt_js.
  APPEND `      sta(TypeEnumEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/enhancement.ts` TO lt_js.
  APPEND `var Enhancement2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Enhancement),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndEnhancement)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/define.ts` TO lt_js.
  APPEND `var Define2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Define),` TO lt_js.
  APPEND `      star2(sta(MacroContent)),` TO lt_js.
  APPEND `      sta(EndOfDefinition)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/data.ts` TO lt_js.
  APPEND `var Data2 = class _Data {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(DataBegin),` TO lt_js.
  APPEND `      star2(alt2(` TO lt_js.
  APPEND `        sta(Data),` TO lt_js.
  APPEND `        sub(_Data),` TO lt_js.
  APPEND `        sta(Include),` TO lt_js.
  APPEND `        sta(Ranges),` TO lt_js.
  APPEND `        sta(Constant2),` TO lt_js.
  APPEND `        sub(Constants),` TO lt_js.
  APPEND `        sta(Type2),` TO lt_js.
  APPEND `        sub(Types),` TO lt_js.
  APPEND `        sub(Enhancement2),` TO lt_js.
  APPEND `        sub(Define2),` TO lt_js.
  APPEND `        sta(IncludeType),` TO lt_js.
  APPEND `        sta(Parameter),` TO lt_js.
  APPEND `        sta(SelectionScreen),` TO lt_js.
  APPEND `        sta(SelectOption),` TO lt_js.
  APPEND `        sta(TypePools),` TO lt_js.
  APPEND `        sta(EnhancementPoint)` TO lt_js.
  APPEND `      )),` TO lt_js.
  APPEND `      sta(DataEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/section_contents.ts` TO lt_js.
  APPEND `var SectionContents = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return star2(alt2(` TO lt_js.
  APPEND `      sta(MethodDef),` TO lt_js.
  APPEND `      sta(InterfaceDef),` TO lt_js.
  APPEND `      sta(Data),` TO lt_js.
  APPEND `      sta(ClassData),` TO lt_js.
  APPEND `      sta(Events),` TO lt_js.
  APPEND `      sta(Constant2),` TO lt_js.
  APPEND `      sta(Aliases),` TO lt_js.
  APPEND `      sta(TypePools),` TO lt_js.
  APPEND `      sta(InterfaceLoad),` TO lt_js.
  APPEND `      sta(ClassDefinitionLoad),` TO lt_js.
  APPEND `      sta(Include),` TO lt_js.
  APPEND `      sub(Types),` TO lt_js.
  APPEND `      sub(Constants),` TO lt_js.
  APPEND `      sub(TypeEnum2),` TO lt_js.
  APPEND `      sub(TypeMesh2),` TO lt_js.
  APPEND `      sub(Data2),` TO lt_js.
  APPEND `      sub(ClassData2),` TO lt_js.
  APPEND `      sta(Type2)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/private_section.ts` TO lt_js.
  APPEND `var PrivateSection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq2(sta(Private), opt2(sub(SectionContents)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/protected_section.ts` TO lt_js.
  APPEND `var ProtectedSection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq2(sta(Protected), opt2(sub(SectionContents)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/public_section.ts` TO lt_js.
  APPEND `var PublicSection = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq2(sta(Public), opt2(sub(SectionContents)));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/class_definition.ts` TO lt_js.
  APPEND `var ClassDefinition2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const body = seq2(` TO lt_js.
  APPEND `      opt2(sta(SetExtendedCheck)),` TO lt_js.
  APPEND `      star2(sta(TypePools)),` TO lt_js.
  APPEND `      opt2(sub(PublicSection)),` TO lt_js.
  APPEND `      opt2(sub(ProtectedSection)),` TO lt_js.
  APPEND `      opt2(sub(PrivateSection)),` TO lt_js.
  APPEND `      opt2(sta(SetExtendedCheck))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return beginEnd(sta(ClassDefinition), body, sta(EndClass));` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/class_global.ts` TO lt_js.
  APPEND `var ClassGlobal2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq2(` TO lt_js.
  APPEND `      star2(sta(TypePools)),` TO lt_js.
  APPEND `      sub(ClassDefinition2),` TO lt_js.
  APPEND `      sub(ClassImplementation2)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/class_implementation.ts` TO lt_js.
  APPEND `var ClassImplementation2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const body = star2(alt2(sub(Define2), sta(Include), sub(Method)));` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(ClassImplementation),` TO lt_js.
  APPEND `      body,` TO lt_js.
  APPEND `      sta(EndClass)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/cleanup.ts` TO lt_js.
  APPEND `var Cleanup2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const cleanup = seq2(sta(Cleanup), opt2(sub(Body)));` TO lt_js.
  APPEND `    return cleanup;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/do.ts` TO lt_js.
  APPEND `var Do2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Do),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndDo)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/dynpro_logic.ts` TO lt_js.
  APPEND `var DynproLogic = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq2(` TO lt_js.
  APPEND `      sub(ProcessBeforeOutput2),` TO lt_js.
  APPEND `      opt2(sub(ProcessAfterInput2)),` TO lt_js.
  APPEND `      opt2(sub(ProcessOnHelpRequest2)),` TO lt_js.
  APPEND `      opt2(sub(ProcessOnValueRequest2)),` TO lt_js.
  APPEND `      opt2(sub(ProcessOnHelpRequest2))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/else.ts` TO lt_js.
  APPEND `var Else2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const body = opt2(sub(Body));` TO lt_js.
  APPEND `    const elseif = seq2(sta(Else), body);` TO lt_js.
  APPEND `    return elseif;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/elseif.ts` TO lt_js.
  APPEND `var ElseIf2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const body = opt2(sub(Body));` TO lt_js.
  APPEND `    const elseif = seq2(sta(ElseIf), body);` TO lt_js.
  APPEND `    return elseif;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/enhancement_section.ts` TO lt_js.
  APPEND `var EnhancementSection2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(EnhancementSection),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndEnhancementSection)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/exec_sql.ts` TO lt_js.
  APPEND `var ExecSQL2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(ExecSQL),` TO lt_js.
  APPEND `      star2(sta(NativeSQL)),` TO lt_js.
  APPEND `      sta(EndExec)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/form.ts` TO lt_js.
  APPEND `var Form2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Form),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndForm)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/function_module.ts` TO lt_js.
  APPEND `var FunctionModule2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(FunctionModule),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndFunction)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/if.ts` TO lt_js.
  APPEND `var If2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const contents = seq2(` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      star2(sub(ElseIf2)),` TO lt_js.
  APPEND `      opt2(sub(Else2))` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(If),` TO lt_js.
  APPEND `      contents,` TO lt_js.
  APPEND `      sta(EndIf)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/interface_global.ts` TO lt_js.
  APPEND `var InterfaceGlobal = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return seq2(` TO lt_js.
  APPEND `      star2(sta(TypePools)),` TO lt_js.
  APPEND `      star2(sta(InterfaceLoad)),` TO lt_js.
  APPEND `      sub(Interface2)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/interface.ts` TO lt_js.
  APPEND `var Interface2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const intf = beginEnd(` TO lt_js.
  APPEND `      sta(Interface),` TO lt_js.
  APPEND `      star2(sub(SectionContents)),` TO lt_js.
  APPEND `      sta(EndInterface)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `    return intf;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/loop_at_screen.ts` TO lt_js.
  APPEND `var LoopAtScreen2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(LoopAtScreen),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndLoop)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/loop.ts` TO lt_js.
  APPEND `var Loop2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Loop),` TO lt_js.
  APPEND `      star2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndLoop)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/method.ts` TO lt_js.
  APPEND `var Method = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(MethodImplementation),` TO lt_js.
  APPEND `      opt2(alt2(sub(Body), star2(sta(NativeSQL)))),` TO lt_js.
  APPEND `      sta(EndMethod)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/module.ts` TO lt_js.
  APPEND `var Module2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Module),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndModule)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/on_change.ts` TO lt_js.
  APPEND `var OnChange2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(OnChange),` TO lt_js.
  APPEND `      seq2(opt2(sub(Body)), opt2(sub(Else2))),` TO lt_js.
  APPEND `      sta(EndOn)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/dynpro_loop.ts` TO lt_js.
  APPEND `var DynproLoop2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(DynproLoop),` TO lt_js.
  APPEND `      star2(alt2(sta(Module), sta(Field2), sub(Chain2))),` TO lt_js.
  APPEND `      sta(EndLoop)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/loop_extract.ts` TO lt_js.
  APPEND `var LoopExtract2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(LoopExtract),` TO lt_js.
  APPEND `      star2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndLoop)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/process_after_input.ts` TO lt_js.
  APPEND `var ProcessAfterInput2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const pai = star2(alt2(` TO lt_js.
  APPEND `      sta(Module),` TO lt_js.
  APPEND `      sta(Field2),` TO lt_js.
  APPEND `      sta(CallSubscreen),` TO lt_js.
  APPEND `      sub(Chain2),` TO lt_js.
  APPEND `      sub(DynproLoop2),` TO lt_js.
  APPEND `      sub(LoopExtract2),` TO lt_js.
  APPEND `      sub(Loop2)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    return seq2(` TO lt_js.
  APPEND `      sta(ProcessAfterInput),` TO lt_js.
  APPEND `      pai` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/process_before_output.ts` TO lt_js.
  APPEND `var ProcessBeforeOutput2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const pbo = star2(alt2(` TO lt_js.
  APPEND `      sta(Module),` TO lt_js.
  APPEND `      sta(Field2),` TO lt_js.
  APPEND `      sta(CallSubscreen),` TO lt_js.
  APPEND `      sub(LoopExtract2),` TO lt_js.
  APPEND `      sub(DynproLoop2)` TO lt_js.
  APPEND `    ));` TO lt_js.
  APPEND `    return seq2(sta(ProcessBeforeOutput), pbo);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/process_on_value_request.ts` TO lt_js.
  APPEND `var ProcessOnValueRequest2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const pov = star2(sta(Field2));` TO lt_js.
  APPEND `    return seq2(sta(ProcessOnValueRequest), pov);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/provide.ts` TO lt_js.
  APPEND `var Provide2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Provide),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndProvide)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/select.ts` TO lt_js.
  APPEND `var Select3 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(SelectLoop2),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndSelect)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/process_on_help_request.ts` TO lt_js.
  APPEND `var ProcessOnHelpRequest2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const pov = star2(sta(Field2));` TO lt_js.
  APPEND `    return seq2(sta(ProcessOnHelpRequest), pov);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/statics.ts` TO lt_js.
  APPEND `var Statics = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(StaticBegin),` TO lt_js.
  APPEND `      star2(alt2(sta(Static), sta(IncludeType))),` TO lt_js.
  APPEND `      sta(StaticEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/test_injection.ts` TO lt_js.
  APPEND `var TestInjection2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(TestInjection),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndTestInjection)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/test_seam.ts` TO lt_js.
  APPEND `var TestSeam2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(TestSeam),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndTestSeam)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/try.ts` TO lt_js.
  APPEND `var Try2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    const block = seq2(opt2(sub(Body)), star2(sub(Catch2)), opt2(sub(Cleanup2)));` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(Try),` TO lt_js.
  APPEND `      block,` TO lt_js.
  APPEND `      sta(EndTry)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/type_mesh.ts` TO lt_js.
  APPEND `var TypeMesh2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(TypeMeshBegin),` TO lt_js.
  APPEND `      star2(alt2(sta(TypeMesh), sta(Type2))),` TO lt_js.
  APPEND `      sta(TypeMeshEnd)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/while.ts` TO lt_js.
  APPEND `var While2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(While),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndWhile)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/3_structures/structures/with.ts` TO lt_js.
  APPEND `var With2 = class {` TO lt_js.
  APPEND `  getMatcher() {` TO lt_js.
  APPEND `    return beginEnd(` TO lt_js.
  APPEND `      sta(WithLoop),` TO lt_js.
  APPEND `      opt2(sub(Body)),` TO lt_js.
  APPEND `      sta(EndWith)` TO lt_js.
  APPEND `    );` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/artifacts.ts` TO lt_js.
  APPEND `var List = class {` TO lt_js.
  APPEND `  constructor() {` TO lt_js.
  APPEND `    this.words = [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  add(keywords, source) {` TO lt_js.
  APPEND `    for (const w of keywords) {` TO lt_js.
  APPEND `      const index = this.find(w);` TO lt_js.
  APPEND `      if (index >= 0) {` TO lt_js.
  APPEND `        this.words[index].source.push(source);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        this.words.push({ word: w, source: [source] });` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  get() {` TO lt_js.
  APPEND `    return this.words;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  find(keyword) {` TO lt_js.
  APPEND `    for (let i = 0; i < this.words.length; i++) {` TO lt_js.
  APPEND `      if (this.words[i].word === keyword) {` TO lt_js.
  APPEND `        return i;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return -1;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `function className(cla) {` TO lt_js.
  APPEND `  return cla.constructor.name;` TO lt_js.
  APPEND `}` TO lt_js.
  APPEND `var ArtifactsABAP = class {` TO lt_js.
  APPEND `  static getStructures() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    const list = structures_exports;` TO lt_js.
  APPEND `    for (const key in structures_exports) {` TO lt_js.
  APPEND `      if (typeof list[key] === "function") {` TO lt_js.
  APPEND `        ret.push(new list[key]());` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  static getExpressions() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    const list = expressions_exports;` TO lt_js.
  APPEND `    for (const key in expressions_exports) {` TO lt_js.
  APPEND `      if (typeof list[key] === "function") {` TO lt_js.
  APPEND `        ret.push(list[key]);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  static getStatements() {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    const list = statements_exports;` TO lt_js.
  APPEND `    for (const key in statements_exports) {` TO lt_js.
  APPEND `      if (typeof list[key] === "function") {` TO lt_js.
  APPEND `        ret.push(new list[key]());` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  static getKeywords() {` TO lt_js.
  APPEND `    const list = new List();` TO lt_js.
  APPEND `    for (const stat of this.getStatements()) {` TO lt_js.
  APPEND `      list.add(Combi.listKeywords(stat.getMatcher()), "statement_" + className(stat));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const expr of this.getExpressions()) {` TO lt_js.
  APPEND `      list.add(Combi.listKeywords(new expr().getRunnable()), "expression_" + className(expr));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return list.get();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/files/_abstract_file.ts` TO lt_js.
  APPEND `var AbstractFile = class {` TO lt_js.
  APPEND `  constructor(filename) {` TO lt_js.
  APPEND `    this.filename = filename;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getFilename() {` TO lt_js.
  APPEND `    return this.filename;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  baseName() {` TO lt_js.
  APPEND `    let name = this.getFilename();` TO lt_js.
  APPEND `    let index = name.lastIndexOf("\\");` TO lt_js.
  APPEND `    if (index) {` TO lt_js.
  APPEND `      index = index + 1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    name = name.substring(index);` TO lt_js.
  APPEND `    index = name.lastIndexOf("/");` TO lt_js.
  APPEND `    if (index) {` TO lt_js.
  APPEND `      index = index + 1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return name.substring(index);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getObjectType() {` TO lt_js.
  APPEND `    const split = this.baseName().split(".");` TO lt_js.
  APPEND `    return split[1]?.toUpperCase();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getObjectName() {` TO lt_js.
  APPEND `    const split = this.baseName().split(".");` TO lt_js.
  APPEND `    split[0] = split[0].replace(/%23/g, "#");` TO lt_js.
  APPEND `    split[0] = split[0].replace(/%3e/g, ">");` TO lt_js.
  APPEND `    split[0] = split[0].replace(/%3c/g, "<");` TO lt_js.
  APPEND `    split[0] = split[0].toUpperCase().replace(/#/g, "/");` TO lt_js.
  APPEND `    split[0] = split[0].replace("(", "/");` TO lt_js.
  APPEND `    split[0] = split[0].replace(")", "/");` TO lt_js.
  APPEND `    return split[0];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/files/memory_file.ts` TO lt_js.
  APPEND `var MemoryFile = class extends AbstractFile {` TO lt_js.
  APPEND `  constructor(filename, raw) {` TO lt_js.
  APPEND `    super(filename);` TO lt_js.
  APPEND `    this.raw = raw;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getRaw() {` TO lt_js.
  APPEND `    return this.raw;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getRawRows() {` TO lt_js.
  APPEND `    return this.raw.split("\n");` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/virtual_position.ts` TO lt_js.
  APPEND `var VirtualPosition = class _VirtualPosition extends Position {` TO lt_js.
  APPEND `  constructor(virtual, row, col) {` TO lt_js.
  APPEND `    super(virtual.getRow(), virtual.getCol());` TO lt_js.
  APPEND `    this.vrow = row;` TO lt_js.
  APPEND `    this.vcol = col;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  equals(p) {` TO lt_js.
  APPEND `    if (!(p instanceof _VirtualPosition)) {` TO lt_js.
  APPEND `      return false;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const casted = p;` TO lt_js.
  APPEND `    return super.equals(this) && this.vrow === casted.vrow && this.vcol === casted.vcol;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  isAfter(p) {` TO lt_js.
  APPEND `    if (p instanceof _VirtualPosition) {` TO lt_js.
  APPEND `      if (this.getRow() > p.getRow()) {` TO lt_js.
  APPEND `        return true;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (this.getRow() === p.getRow() && this.getCol() > p.getCol()) {` TO lt_js.
  APPEND `        return true;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (this.getRow() === p.getRow() && this.getCol() === p.getCol() && this.vrow > p.vrow) {` TO lt_js.
  APPEND `        return true;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (this.getRow() === p.getRow() && this.getCol() === p.getCol() && this.vrow === p.vrow && this.vcol > p.vcol) {` TO lt_js.
  APPEND `        return true;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      return false;` TO lt_js.
  APPEND `    } else {` TO lt_js.
  APPEND `      return super.isAfter(p);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/lexer_buffer.ts` TO lt_js.
  APPEND `var LexerBuffer = class {` TO lt_js.
  APPEND `  constructor() {` TO lt_js.
  APPEND `    this.buf = "";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  add(s) {` TO lt_js.
  APPEND `    this.buf = this.buf + s;` TO lt_js.
  APPEND `    return this.buf;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  get() {` TO lt_js.
  APPEND `    return this.buf;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  clear() {` TO lt_js.
  APPEND `    this.buf = "";` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  countIsEven(char) {` TO lt_js.
  APPEND `    let count = 0;` TO lt_js.
  APPEND `    for (let i = 0; i < this.buf.length; i += 1) {` TO lt_js.
  APPEND `      if (this.buf.charAt(i) === char) {` TO lt_js.
  APPEND `        count += 1;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return count % 2 === 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/lexer_stream.ts` TO lt_js.
  APPEND `var LexerStream = class {` TO lt_js.
  APPEND `  constructor(raw) {` TO lt_js.
  APPEND `    this.offset = -1;` TO lt_js.
  APPEND `    this.raw = raw;` TO lt_js.
  APPEND `    this.row = 0;` TO lt_js.
  APPEND `    this.col = 0;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  advance() {` TO lt_js.
  APPEND `    if (this.currentChar() === "\n") {` TO lt_js.
  APPEND `      this.col = 1;` TO lt_js.
  APPEND `      this.row = this.row + 1;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (this.offset === this.raw.length) {` TO lt_js.
  APPEND `      this.col = this.col - 1;` TO lt_js.
  APPEND `      return false;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.col = this.col + 1;` TO lt_js.
  APPEND `    this.offset = this.offset + 1;` TO lt_js.
  APPEND `    return true;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getCol() {` TO lt_js.
  APPEND `    return this.col;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getRow() {` TO lt_js.
  APPEND `    return this.row;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  prevChar() {` TO lt_js.
  APPEND `    if (this.offset - 1 < 0) {` TO lt_js.
  APPEND `      return "";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return this.raw.substr(this.offset - 1, 1);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  prevPrevChar() {` TO lt_js.
  APPEND `    if (this.offset - 2 < 0) {` TO lt_js.
  APPEND `      return "";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return this.raw.substr(this.offset - 2, 2);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  currentChar() {` TO lt_js.
  APPEND `    if (this.offset < 0) {` TO lt_js.
  APPEND `      return "\n";` TO lt_js.
  APPEND `    } else if (this.offset >= this.raw.length) {` TO lt_js.
  APPEND `      return "";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return this.raw.substr(this.offset, 1);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  nextChar() {` TO lt_js.
  APPEND `    if (this.offset + 2 > this.raw.length) {` TO lt_js.
  APPEND `      return "";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return this.raw.substr(this.offset + 1, 1);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  nextNextChar() {` TO lt_js.
  APPEND `    if (this.offset + 3 > this.raw.length) {` TO lt_js.
  APPEND `      return this.nextChar();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return this.raw.substr(this.offset + 1, 2);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getRaw() {` TO lt_js.
  APPEND `    return this.raw;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getOffset() {` TO lt_js.
  APPEND `    return this.offset;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/1_lexer/lexer.ts` TO lt_js.
  APPEND `var ModeNormal = 1;` TO lt_js.
  APPEND `var ModePing = 2;` TO lt_js.
  APPEND `var ModeStr = 3;` TO lt_js.
  APPEND `var ModeTemplate = 4;` TO lt_js.
  APPEND `var ModeComment = 5;` TO lt_js.
  APPEND `var ModePragma = 6;` TO lt_js.
  APPEND `var Lexer = class {` TO lt_js.
  APPEND `  run(file, virtual) {` TO lt_js.
  APPEND `    this.virtual = virtual;` TO lt_js.
  APPEND `    this.tokens = [];` TO lt_js.
  APPEND `    this.m = ModeNormal;` TO lt_js.
  APPEND `    this.process(file.getRaw());` TO lt_js.
  APPEND `    return { file, tokens: this.tokens };` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  add() {` TO lt_js.
  APPEND `    const s = this.buffer.get().trim();` TO lt_js.
  APPEND `    if (s.length > 0) {` TO lt_js.
  APPEND `      const col = this.stream.getCol();` TO lt_js.
  APPEND `      const row = this.stream.getRow();` TO lt_js.
  APPEND `      let whiteBefore = false;` TO lt_js.
  APPEND `      if (this.stream.getOffset() - s.length >= 0) {` TO lt_js.
  APPEND `        const prev = this.stream.getRaw().substr(this.stream.getOffset() - s.length, 1);` TO lt_js.
  APPEND `        if (prev === " " || prev === "\n" || prev === "	" || prev === ":") {` TO lt_js.
  APPEND `          whiteBefore = true;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      let whiteAfter = false;` TO lt_js.
  APPEND `      const next = this.stream.nextChar();` TO lt_js.
  APPEND `      if (next === " " || next === "\n" || next === "	" || next === ":" || next === "," || next === "." || next === "" || next === '"') {` TO lt_js.
  APPEND `        whiteAfter = true;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      let pos = new Position(row, col - s.length);` TO lt_js.
  APPEND `      if (this.virtual) {` TO lt_js.
  APPEND `        pos = new VirtualPosition(this.virtual, pos.getRow(), pos.getCol());` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      let tok2 = void 0;` TO lt_js.
  APPEND `      if (this.m === ModeComment) {` TO lt_js.
  APPEND `        tok2 = new Comment(pos, s);` TO lt_js.
  APPEND `      } else if (this.m === ModePing || this.m === ModeStr) {` TO lt_js.
  APPEND `        tok2 = new StringToken(pos, s);` TO lt_js.
  APPEND `      } else if (this.m === ModeTemplate) {` TO lt_js.
  APPEND `        const first = s.charAt(0);` TO lt_js.
  APPEND `        const last = s.charAt(s.length - 1);` TO lt_js.
  APPEND `        if (first === "|" && last === "|") {` TO lt_js.
  APPEND `          tok2 = new StringTemplate(pos, s);` TO lt_js.
  APPEND `        } else if (first === "|" && last === "{" && whiteAfter === true) {` TO lt_js.
  APPEND `          tok2 = new StringTemplateBegin(pos, s);` TO lt_js.
  APPEND `        } else if (first === "}" && last === "|" && whiteBefore === true) {` TO lt_js.
  APPEND `          tok2 = new StringTemplateEnd(pos, s);` TO lt_js.
  APPEND `        } else if (first === "}" && last === "{" && whiteAfter === true && whiteBefore === true) {` TO lt_js.
  APPEND `          tok2 = new StringTemplateMiddle(pos, s);` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          tok2 = new Identifier(pos, s);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (s.length > 2 && s.substr(0, 2) === "##") {` TO lt_js.
  APPEND `        tok2 = new Pragma(pos, s);` TO lt_js.
  APPEND `      } else if (s.length === 1) {` TO lt_js.
  APPEND `        if (s === "." || s === ",") {` TO lt_js.
  APPEND `          tok2 = new Punctuation(pos, s);` TO lt_js.
  APPEND `        } else if (s === "[") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WBracketLeftW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WBracketLeft(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new BracketLeftW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new BracketLeft(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === "(") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WParenLeftW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WParenLeft(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new ParenLeftW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new ParenLeft(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === "]") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WBracketRightW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WBracketRight(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new BracketRightW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new BracketRight(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === ")") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WParenRightW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WParenRight(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new ParenRightW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new ParenRight(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === "-") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WDashW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WDash(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new DashW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new Dash(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === "+") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WPlusW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WPlus(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new PlusW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new Plus(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === "@") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WAtW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WAt(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new AtW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new At(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (s.length === 2) {` TO lt_js.
  APPEND `        if (s === "->") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WInstanceArrowW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WInstanceArrow(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new InstanceArrowW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new InstanceArrow(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        } else if (s === "=>") {` TO lt_js.
  APPEND `          if (whiteBefore === true && whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new WStaticArrowW(pos, s);` TO lt_js.
  APPEND `          } else if (whiteBefore === true) {` TO lt_js.
  APPEND `            tok2 = new WStaticArrow(pos, s);` TO lt_js.
  APPEND `          } else if (whiteAfter === true) {` TO lt_js.
  APPEND `            tok2 = new StaticArrowW(pos, s);` TO lt_js.
  APPEND `          } else {` TO lt_js.
  APPEND `            tok2 = new StaticArrow(pos, s);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (tok2 === void 0) {` TO lt_js.
  APPEND `        tok2 = new Identifier(pos, s);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      this.tokens.push(tok2);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.buffer.clear();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  process(raw) {` TO lt_js.
  APPEND `    this.stream = new LexerStream(raw.replace(/\r/g, ""));` TO lt_js.
  APPEND `    this.buffer = new LexerBuffer();` TO lt_js.
  APPEND `    const splits = {};` TO lt_js.
  APPEND `    splits[" "] = true;` TO lt_js.
  APPEND `    splits[":"] = true;` TO lt_js.
  APPEND `    splits["."] = true;` TO lt_js.
  APPEND `    splits[","] = true;` TO lt_js.
  APPEND `    splits["-"] = true;` TO lt_js.
  APPEND `    splits["+"] = true;` TO lt_js.
  APPEND `    splits["("] = true;` TO lt_js.
  APPEND `    splits[")"] = true;` TO lt_js.
  APPEND `    splits["["] = true;` TO lt_js.
  APPEND `    splits["]"] = true;` TO lt_js.
  APPEND `    splits["	"] = true;` TO lt_js.
  APPEND `    splits["\n"] = true;` TO lt_js.
  APPEND `    const bufs = {};` TO lt_js.
  APPEND `    bufs["."] = true;` TO lt_js.
  APPEND `    bufs[","] = true;` TO lt_js.
  APPEND `    bufs[":"] = true;` TO lt_js.
  APPEND `    bufs["("] = true;` TO lt_js.
  APPEND `    bufs[")"] = true;` TO lt_js.
  APPEND `    bufs["["] = true;` TO lt_js.
  APPEND `    bufs["]"] = true;` TO lt_js.
  APPEND `    bufs["+"] = true;` TO lt_js.
  APPEND `    bufs["@"] = true;` TO lt_js.
  APPEND `    for (; ; ) {` TO lt_js.
  APPEND `      const current = this.stream.currentChar();` TO lt_js.
  APPEND `      const buf = this.buffer.add(current);` TO lt_js.
  APPEND `      const ahead = this.stream.nextChar();` TO lt_js.
  APPEND `      const aahead = this.stream.nextNextChar();` TO lt_js.
  APPEND `      if (this.m === ModeNormal) {` TO lt_js.
  APPEND `        if (splits[ahead]) {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `        } else if (ahead === "'") {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `          this.m = ModeStr;` TO lt_js.
  APPEND `        } else if (ahead === "|" || ahead === "}") {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `          this.m = ModeTemplate;` TO lt_js.
  APPEND `        } else if (ahead === "``") {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `          this.m = ModePing;` TO lt_js.
  APPEND `        } else if (aahead === "##") {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `          this.m = ModePragma;` TO lt_js.
  APPEND `        } else if (ahead === '"' || ahead === "*" && current === "\n") {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `          this.m = ModeComment;` TO lt_js.
  APPEND `        } else if (ahead === "@" && buf.trim().length === 0) {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `        } else if (aahead === "->" || aahead === "=>") {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `        } else if (current === ">" && ahead !== " " && (this.stream.prevChar() === "-" || this.stream.prevChar() === "=")) {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `        } else if (buf.length === 1 && (bufs[buf] || buf === "-" && ahead !== ">")) {` TO lt_js.
  APPEND `          this.add();` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (this.m === ModePragma && (ahead === "," || ahead === ":" || ahead === "." || ahead === " " || ahead === "\n")) {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `        this.m = ModeNormal;` TO lt_js.
  APPEND `      } else if (this.m === ModePing && buf.length > 1 && current === "``" && aahead !== "````" && ahead !== "``" && this.buffer.countIsEven("``")) {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `        if (ahead === ``"``) {` TO lt_js.
  APPEND `          this.m = ModeComment;` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          this.m = ModeNormal;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (this.m === ModeTemplate && buf.length > 1 && (current === "|" || current === "{") && (this.stream.prevChar() !== "\\" || this.stream.prevPrevCh` &&
    `ar() === "\\\\")) {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `        this.m = ModeNormal;` TO lt_js.
  APPEND `      } else if (this.m === ModeTemplate && ahead === "}" && current !== "\\") {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `      } else if (this.m === ModeStr && current === "'" && buf.length > 1 && aahead !== "''" && ahead !== "'" && this.buffer.countIsEven("'")) {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `        if (ahead === '"') {` TO lt_js.
  APPEND `          this.m = ModeComment;` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          this.m = ModeNormal;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (ahead === "\n" && this.m !== ModeTemplate) {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `        this.m = ModeNormal;` TO lt_js.
  APPEND `      } else if (this.m === ModeTemplate && current === "\n") {` TO lt_js.
  APPEND `        this.add();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (!this.stream.advance()) {` TO lt_js.
  APPEND `        break;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.add();` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/expand_macros.ts` TO lt_js.
  APPEND `var Macros = class {` TO lt_js.
  APPEND `  constructor(globalMacros) {` TO lt_js.
  APPEND `    this.macros = {};` TO lt_js.
  APPEND `    for (const m of globalMacros) {` TO lt_js.
  APPEND `      this.macros[m.toUpperCase()] = {` TO lt_js.
  APPEND `        statements: [],` TO lt_js.
  APPEND `        filename: void 0` TO lt_js.
  APPEND `      };` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  addMacro(name, contents, filename) {` TO lt_js.
  APPEND `    if (this.isMacro(name)) {` TO lt_js.
  APPEND `      return;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.macros[name.toUpperCase()] = {` TO lt_js.
  APPEND `      statements: contents,` TO lt_js.
  APPEND `      filename` TO lt_js.
  APPEND `    };` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getContents(name) {` TO lt_js.
  APPEND `    return this.macros[name.toUpperCase()].statements;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  listMacroNames() {` TO lt_js.
  APPEND `    return Object.keys(this.macros);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  isMacro(name) {` TO lt_js.
  APPEND `    if (this.macros[name.toUpperCase()]) {` TO lt_js.
  APPEND `      return true;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return false;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  getMacroFilename(name) {` TO lt_js.
  APPEND `    return this.macros[name.toUpperCase()].filename;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var ExpandMacros = class {` TO lt_js.
  APPEND `  // "reg" must be supplied if there are cross object macros via INCLUDE` TO lt_js.
  APPEND `  constructor(globalMacros, version, reg) {` TO lt_js.
  APPEND `    this.macros = new Macros(globalMacros);` TO lt_js.
  APPEND `    this.version = version;` TO lt_js.
  APPEND `    this.globalMacros = globalMacros;` TO lt_js.
  APPEND `    this.reg = reg;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  find(statements, file, clear = true) {` TO lt_js.
  APPEND `    let nameToken = void 0;` TO lt_js.
  APPEND `    let start = void 0;` TO lt_js.
  APPEND `    let contents = [];` TO lt_js.
  APPEND `    const macroReferences = this.reg?.getMacroReferences();` TO lt_js.
  APPEND `    if (clear) {` TO lt_js.
  APPEND `      macroReferences?.clear(file.getFilename());` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (let i = 0; i < statements.length; i++) {` TO lt_js.
  APPEND `      const statement = statements[i];` TO lt_js.
  APPEND `      const type = statement.get();` TO lt_js.
  APPEND `      if (type instanceof Define) {` TO lt_js.
  APPEND `        nameToken = statement.getTokens()[1];` TO lt_js.
  APPEND `        start = statement.getFirstToken().getStart();` TO lt_js.
  APPEND `        contents = [];` TO lt_js.
  APPEND `      } else if (type instanceof Include) {` TO lt_js.
  APPEND `        const includeName = statement.findDirectExpression(IncludeName)?.concatTokens();` TO lt_js.
  APPEND `        const prog = this.reg?.getObject("PROG", includeName);` TO lt_js.
  APPEND `        if (prog) {` TO lt_js.
  APPEND `          prog.parse(this.version, this.globalMacros, this.reg);` TO lt_js.
  APPEND `          const includeMainFile = prog.getMainABAPFile();` TO lt_js.
  APPEND `          if (includeMainFile) {` TO lt_js.
  APPEND `            this.find([...includeMainFile.getStatements()], includeMainFile, false);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (nameToken) {` TO lt_js.
  APPEND `        if (type instanceof EndOfDefinition) {` TO lt_js.
  APPEND `          this.macros.addMacro(nameToken.getStr(), contents, file.getFilename());` TO lt_js.
  APPEND `          macroReferences?.addDefinition({ filename: file.getFilename(), token: nameToken }, start, statement.getLastToken().getEnd());` TO lt_js.
  APPEND `          nameToken = void 0;` TO lt_js.
  APPEND `        } else if (!(type instanceof Comment2)) {` TO lt_js.
  APPEND `          statements[i] = new StatementNode(new MacroContent()).setChildren(this.tokensToNodes(statement.getTokens()));` TO lt_js.
  APPEND `          contents.push(statements[i]);` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  handleMacros(statements, file) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    let containsUnknown = false;` TO lt_js.
  APPEND `    const macroReferences = this.reg?.getMacroReferences();` TO lt_js.
  APPEND `    for (const statement of statements) {` TO lt_js.
  APPEND `      const type = statement.get();` TO lt_js.
  APPEND `      if (type instanceof Unknown || type instanceof MacroCall) {` TO lt_js.
  APPEND `        const macroName = this.findName(statement.getTokens());` TO lt_js.
  APPEND `        if (macroName && this.macros.isMacro(macroName)) {` TO lt_js.
  APPEND `          const filename = this.macros.getMacroFilename(macroName);` TO lt_js.
  APPEND `          if (filename) {` TO lt_js.
  APPEND `            macroReferences?.addReference({` TO lt_js.
  APPEND `              filename,` TO lt_js.
  APPEND `              token: statement.getFirstToken()` TO lt_js.
  APPEND `            });` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `          result.push(new StatementNode(new MacroCall(), statement.getColon()).setChildren(this.tokensToNodes(statement.getTokens())));` TO lt_js.
  APPEND `          const expanded = this.expandContents(macroName, statement);` TO lt_js.
  APPEND `          const handled = this.handleMacros(expanded, file);` TO lt_js.
  APPEND `          for (const e of handled.statements) {` TO lt_js.
  APPEND `            result.push(e);` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `          if (handled.containsUnknown === true) {` TO lt_js.
  APPEND `            containsUnknown = true;` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `          continue;` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          containsUnknown = true;` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      result.push(statement);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return { statements: result, containsUnknown };` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  //////////////` TO lt_js.
  APPEND `  expandContents(name, statement) {` TO lt_js.
  APPEND `    const contents = this.macros.getContents(name);` TO lt_js.
  APPEND `    if (contents === void 0 || contents.length === 0) {` TO lt_js.
  APPEND `      return [];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    let str2 = "";` TO lt_js.
  APPEND `    for (const c of contents) {` TO lt_js.
  APPEND `      let concat = c.concatTokens();` TO lt_js.
  APPEND `      if (c.getTerminator() === ",") {` TO lt_js.
  APPEND `        concat = concat.replace(/,$/, ".");` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      str2 += concat + "\n";` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const inputs = this.buildInput(statement);` TO lt_js.
  APPEND `    let i = 1;` TO lt_js.
  APPEND `    for (const input of inputs) {` TO lt_js.
  APPEND `      const search = "&" + i;` TO lt_js.
  APPEND `      const reg = new RegExp(search, "g");` TO lt_js.
  APPEND `      str2 = str2.replace(reg, input);` TO lt_js.
  APPEND `      i++;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    const file = new MemoryFile("expand_macros.abap.prog", str2);` TO lt_js.
  APPEND `    const lexerResult = new Lexer().run(file, statement.getFirstToken().getStart());` TO lt_js.
  APPEND `    const result = new StatementParser(this.version, this.reg).run([lexerResult], this.macros.listMacroNames());` TO lt_js.
  APPEND `    return result[0].statements;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  buildInput(statement) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    const tokens = statement.getTokens();` TO lt_js.
  APPEND `    let build = "";` TO lt_js.
  APPEND `    for (let i = 1; i < tokens.length - 1; i++) {` TO lt_js.
  APPEND `      const now = tokens[i];` TO lt_js.
  APPEND `      let next = tokens[i + 1];` TO lt_js.
  APPEND `      if (i + 2 === tokens.length) {` TO lt_js.
  APPEND `        next = void 0;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      let end = now.getStart();` TO lt_js.
  APPEND `      if (end instanceof VirtualPosition) {` TO lt_js.
  APPEND `        end = new VirtualPosition(end, end.vrow, end.vcol + now.getStr().length);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        end = now.getEnd();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      if (next && next.getStart().equals(end)) {` TO lt_js.
  APPEND `        build += now.getStr();` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        build += now.getStr();` TO lt_js.
  APPEND `        result.push(build);` TO lt_js.
  APPEND `        build = "";` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  findName(tokens) {` TO lt_js.
  APPEND `    let macroName = void 0;` TO lt_js.
  APPEND `    let previous = void 0;` TO lt_js.
  APPEND `    for (const i of tokens) {` TO lt_js.
  APPEND `      if (previous && previous?.getEnd().getCol() !== i.getStart().getCol()) {` TO lt_js.
  APPEND `        break;` TO lt_js.
  APPEND `      } else if (i instanceof Identifier || i.getStr() === "-") {` TO lt_js.
  APPEND `        if (macroName === void 0) {` TO lt_js.
  APPEND `          macroName = i.getStr();` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          macroName += i.getStr();` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      } else if (i instanceof Pragma) {` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        break;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      previous = i;` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return macroName;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  tokensToNodes(tokens) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const t of tokens) {` TO lt_js.
  APPEND `      ret.push(new TokenNode(t));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// ../core/src/abap/2_statements/statement_parser.ts` TO lt_js.
  APPEND `var STATEMENT_MAX_TOKENS = 1e3;` TO lt_js.
  APPEND `var StatementMap = class {` TO lt_js.
  APPEND `  constructor() {` TO lt_js.
  APPEND `    this.map = {};` TO lt_js.
  APPEND `    for (const stat of ArtifactsABAP.getStatements()) {` TO lt_js.
  APPEND `      const f = stat.getMatcher().first();` TO lt_js.
  APPEND `      if (f.length === 0) {` TO lt_js.
  APPEND `        throw new Error("StatementMap, first must have contents");` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      for (const first of f) {` TO lt_js.
  APPEND `        if (this.map[first]) {` TO lt_js.
  APPEND `          this.map[first].push({ statement: stat });` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          this.map[first] = [{ statement: stat }];` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  lookup(str2) {` TO lt_js.
  APPEND `    const res = this.map[str2.toUpperCase()];` TO lt_js.
  APPEND `    if (res === void 0) {` TO lt_js.
  APPEND `      return [];` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (res[0].matcher === void 0) {` TO lt_js.
  APPEND `      for (const r of res) {` TO lt_js.
  APPEND `        r.matcher = r.statement.getMatcher();` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return res;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var WorkArea = class {` TO lt_js.
  APPEND `  constructor(file, tokens) {` TO lt_js.
  APPEND `    this.file = file;` TO lt_js.
  APPEND `    this.tokens = tokens;` TO lt_js.
  APPEND `    this.statements = [];` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  addUnknown(pre, post, colon) {` TO lt_js.
  APPEND `    const st = new StatementNode(new Unknown(), colon);` TO lt_js.
  APPEND `    st.setChildren(this.tokensToNodes(pre, post));` TO lt_js.
  APPEND `    this.statements.push(st);` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  toResult() {` TO lt_js.
  APPEND `    return { file: this.file, tokens: this.tokens, statements: this.statements };` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  tokensToNodes(tokens1, tokens2) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const t of tokens1) {` TO lt_js.
  APPEND `      ret.push(new TokenNode(t));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const t of tokens2) {` TO lt_js.
  APPEND `      ret.push(new TokenNode(t));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `var StatementParser = class _StatementParser {` TO lt_js.
  APPEND `  constructor(version, reg) {` TO lt_js.
  APPEND `    if (!_StatementParser.map) {` TO lt_js.
  APPEND `      _StatementParser.map = new StatementMap();` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    this.version = version;` TO lt_js.
  APPEND `    this.reg = reg;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  /** input is one full object */` TO lt_js.
  APPEND `  run(input, globalMacros) {` TO lt_js.
  APPEND `    const macros = new ExpandMacros(globalMacros, this.version, this.reg);` TO lt_js.
  APPEND `    const wa = input.map((i) => new WorkArea(i.file, i.tokens));` TO lt_js.
  APPEND `    for (const w of wa) {` TO lt_js.
  APPEND `      this.process(w);` TO lt_js.
  APPEND `      this.categorize(w);` TO lt_js.
  APPEND `      macros.find(w.statements, w.file);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const w of wa) {` TO lt_js.
  APPEND `      const res = macros.handleMacros(w.statements, w.file);` TO lt_js.
  APPEND `      w.statements = res.statements;` TO lt_js.
  APPEND `      if (res.containsUnknown === true) {` TO lt_js.
  APPEND `        this.lazyUnknown(w);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      this.nativeSQL(w);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return wa.map((w) => w.toResult());` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // todo, refactor, remove method here and only have in WorkArea class` TO lt_js.
  APPEND `  tokensToNodes(tokens) {` TO lt_js.
  APPEND `    const ret = [];` TO lt_js.
  APPEND `    for (const t of tokens) {` TO lt_js.
  APPEND `      ret.push(new TokenNode(t));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return ret;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // tries to split Unknown statements by newlines, when adding/writing a new statement` TO lt_js.
  APPEND `  // in an editor, adding the statement terminator is typically the last thing to do` TO lt_js.
  APPEND `  // note: this will not work if the second statement is a macro call, guess this is okay` TO lt_js.
  APPEND `  lazyUnknown(wa) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (let statement of wa.statements) {` TO lt_js.
  APPEND `      if (statement.get() instanceof Unknown) {` TO lt_js.
  APPEND `        const concat = statement.concatTokens().toUpperCase();` TO lt_js.
  APPEND `        if (concat.startsWith("CALL METHOD ") === false && concat.startsWith("RAISE EXCEPTION TYPE ") === false && concat.startsWith("READ TABLE ") === false &&` &&
    ` concat.startsWith("LOOP AT ") === false && concat.startsWith("SELECT SINGLE ") === false && concat.startsWith("CALL FUNCTION ") === false) {` TO lt_js.
  APPEND `          for (const { first, second } of this.buildSplits(statement.getTokens())) {` TO lt_js.
  APPEND `            if (second.length === 1) {` TO lt_js.
  APPEND `              continue;` TO lt_js.
  APPEND `            }` TO lt_js.
  APPEND `            const s = this.categorizeStatement(new StatementNode(new Unknown()).setChildren(this.tokensToNodes(second)));` TO lt_js.
  APPEND `            if (!(s.get() instanceof Unknown) && !(s.get() instanceof Empty)) {` TO lt_js.
  APPEND `              result.push(new StatementNode(new Unknown()).setChildren(this.tokensToNodes(first)));` TO lt_js.
  APPEND `              statement = s;` TO lt_js.
  APPEND `              break;` TO lt_js.
  APPEND `            }` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      result.push(statement);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    wa.statements = result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  buildSplits(tokens) {` TO lt_js.
  APPEND `    const res = [];` TO lt_js.
  APPEND `    const before = [];` TO lt_js.
  APPEND `    let prevRow = tokens[0].getRow();` TO lt_js.
  APPEND `    for (let i = 0; i < tokens.length; i++) {` TO lt_js.
  APPEND `      if (tokens[i].getRow() !== prevRow) {` TO lt_js.
  APPEND `        res.push({ first: [...before], second: [...tokens].splice(i) });` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      prevRow = tokens[i].getRow();` TO lt_js.
  APPEND `      before.push(tokens[i]);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return res;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  nativeSQL(wa) {` TO lt_js.
  APPEND `    let sql = false;` TO lt_js.
  APPEND `    for (let i = 0; i < wa.statements.length; i++) {` TO lt_js.
  APPEND `      const statement = wa.statements[i];` TO lt_js.
  APPEND `      const type = statement.get();` TO lt_js.
  APPEND `      if (type instanceof ExecSQL || type instanceof MethodImplementation && statement.findDirectExpression(Language)) {` TO lt_js.
  APPEND `        sql = true;` TO lt_js.
  APPEND `      } else if (sql === true) {` TO lt_js.
  APPEND `        if (type instanceof EndExec || type instanceof EndMethod) {` TO lt_js.
  APPEND `          sql = false;` TO lt_js.
  APPEND `        } else {` TO lt_js.
  APPEND `          wa.statements[i] = new StatementNode(new NativeSQL()).setChildren(this.tokensToNodes(statement.getTokens()));` TO lt_js.
  APPEND `          if (statement.concatTokens().toUpperCase().endsWith("ENDMETHOD.")) {` TO lt_js.
  APPEND `            const tokens = statement.getTokens();` TO lt_js.
  APPEND `            const startTokens = this.tokensToNodes(tokens.slice(tokens.length - 2, tokens.length));` TO lt_js.
  APPEND `            const endTokens = this.tokensToNodes(tokens.slice(0, tokens.length - 2));` TO lt_js.
  APPEND `            wa.statements[i] = new StatementNode(new NativeSQL()).setChildren(endTokens);` TO lt_js.
  APPEND `            const item = new StatementNode(new EndMethod()).setChildren(startTokens);` TO lt_js.
  APPEND `            wa.statements.splice(i + 1, 0, item);` TO lt_js.
  APPEND `            sql = false;` TO lt_js.
  APPEND `          }` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // for each statement, run statement matchers to figure out which kind of statement it is` TO lt_js.
  APPEND `  categorize(wa) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    for (const statement of wa.statements) {` TO lt_js.
  APPEND `      result.push(this.categorizeStatement(statement));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    wa.statements = result;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  categorizeStatement(input) {` TO lt_js.
  APPEND `    let statement = input;` TO lt_js.
  APPEND `    const length = input.getChildren().length;` TO lt_js.
  APPEND `    const lastToken = input.getLastToken();` TO lt_js.
  APPEND `    const isPunctuation = lastToken instanceof Punctuation;` TO lt_js.
  APPEND `    if (length === 1 && isPunctuation) {` TO lt_js.
  APPEND `      const tokens = statement.getTokens();` TO lt_js.
  APPEND `      statement = new StatementNode(new Empty()).setChildren(this.tokensToNodes(tokens));` TO lt_js.
  APPEND `    } else if (statement.get() instanceof Unknown) {` TO lt_js.
  APPEND `      if (isPunctuation) {` TO lt_js.
  APPEND `        statement = this.match(statement);` TO lt_js.
  APPEND `      } else if (length > STATEMENT_MAX_TOKENS) {` TO lt_js.
  APPEND `        statement = input;` TO lt_js.
  APPEND `      } else if (length === 1 && lastToken instanceof Pragma) {` TO lt_js.
  APPEND `        statement = new StatementNode(new Empty(), void 0, [lastToken]);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return statement;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  removePragma(tokens) {` TO lt_js.
  APPEND `    const result = [];` TO lt_js.
  APPEND `    const pragmas = [];` TO lt_js.
  APPEND `    for (let i = 0; i < tokens.length - 1; i++) {` TO lt_js.
  APPEND `      const t = tokens[i];` TO lt_js.
  APPEND `      if (t instanceof Pragma) {` TO lt_js.
  APPEND `        pragmas.push(t);` TO lt_js.
  APPEND `      } else {` TO lt_js.
  APPEND `        result.push(t);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return { tokens: result, pragmas };` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  match(statement) {` TO lt_js.
  APPEND `    const tokens = statement.getTokens();` TO lt_js.
  APPEND `    const { tokens: filtered, pragmas } = this.removePragma(tokens);` TO lt_js.
  APPEND `    if (filtered.length === 0) {` TO lt_js.
  APPEND `      return new StatementNode(new Empty()).setChildren(this.tokensToNodes(tokens));` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const st of _StatementParser.map.lookup(filtered[0].getStr())) {` TO lt_js.
  APPEND `      const match = Combi.run(st.matcher, filtered, this.version);` TO lt_js.
  APPEND `      if (match) {` TO lt_js.
  APPEND `        const last = tokens[tokens.length - 1];` TO lt_js.
  APPEND `        match.push(new TokenNode(last));` TO lt_js.
  APPEND `        return new StatementNode(st.statement, statement.getColon(), pragmas).setChildren(match);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    for (const st of _StatementParser.map.lookup("")) {` TO lt_js.
  APPEND `      const match = Combi.run(st.matcher, filtered, this.version);` TO lt_js.
  APPEND `      if (match) {` TO lt_js.
  APPEND `        const last = tokens[tokens.length - 1];` TO lt_js.
  APPEND `        match.push(new TokenNode(last));` TO lt_js.
  APPEND `        return new StatementNode(st.statement, statement.getColon(), pragmas).setChildren(match);` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    return statement;` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `  // takes care of splitting tokens into statements, also handles chained statements` TO lt_js.
  APPEND `  // statements are split by "," or "."` TO lt_js.
  APPEND `  // additional colons/chaining after the first colon are ignored` TO lt_js.
  APPEND `  process(wa) {` TO lt_js.
  APPEND `    let add = [];` TO lt_js.
  APPEND `    let pre = [];` TO lt_js.
  APPEND `    let colon = void 0;` TO lt_js.
  APPEND `    for (const token of wa.tokens) {` TO lt_js.
  APPEND `      if (token instanceof Comment) {` TO lt_js.
  APPEND `        wa.statements.push(new StatementNode(new Comment2()).setChildren(this.tokensToNodes([token])));` TO lt_js.
  APPEND `        continue;` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `      add.push(token);` TO lt_js.
  APPEND `      const str2 = token.getStr();` TO lt_js.
  APPEND `      if (str2.length === 1) {` TO lt_js.
  APPEND `        if (str2 === ".") {` TO lt_js.
  APPEND `          wa.addUnknown(pre, add, colon);` TO lt_js.
  APPEND `          add = [];` TO lt_js.
  APPEND `          pre = [];` TO lt_js.
  APPEND `          colon = void 0;` TO lt_js.
  APPEND `        } else if (str2 === "," && pre.length > 0) {` TO lt_js.
  APPEND `          wa.addUnknown(pre, add, colon);` TO lt_js.
  APPEND `          add = [];` TO lt_js.
  APPEND `        } else if (str2 === ":" && colon === void 0) {` TO lt_js.
  APPEND `          colon = token;` TO lt_js.
  APPEND `          add.pop();` TO lt_js.
  APPEND `          pre.push(...add);` TO lt_js.
  APPEND `          add = [];` TO lt_js.
  APPEND `        } else if (str2 === ":") {` TO lt_js.
  APPEND `          add.pop();` TO lt_js.
  APPEND `        }` TO lt_js.
  APPEND `      }` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `    if (add.length > 0) {` TO lt_js.
  APPEND `      wa.addUnknown(pre, add, colon);` TO lt_js.
  APPEND `    }` TO lt_js.
  APPEND `  }` TO lt_js.
  APPEND `};` TO lt_js.
  APPEND `` TO lt_js.
  APPEND `// src/index.ts` TO lt_js.
  APPEND `function main(filename, code) {` TO lt_js.
  APPEND `  console.log("Running statement parser...");` TO lt_js.
  APPEND `  new StatementParser("v750" /* v750 */);` TO lt_js.
  APPEND `}` TO lt_js.
  " Read the ABAP source of report ZABAPGIT_STANDALONE and feed it to the parser.
  DATA lt_abap TYPE STANDARD TABLE OF string.
  READ REPORT 'ZABAPGIT_STANDALONE' INTO lt_abap.
  APPEND `var abapSource = [` TO lt_js.
  LOOP AT lt_abap INTO DATA(lv_src).
    REPLACE ALL OCCURRENCES OF `\` IN lv_src WITH `\\`.
    REPLACE ALL OCCURRENCES OF `"` IN lv_src WITH `\"`.
    APPEND `"` && lv_src && `",` TO lt_js.
  ENDLOOP.
  APPEND `""].join("\n");` TO lt_js.
  APPEND `main("zabapgit_standalone.prog.abap", abapSource);` TO lt_js.
  APPEND `console.log("Done");` TO lt_js.
  APPEND `` TO lt_js.
  DATA(lv_js) = concat_lines_of(
    table = lt_js
    sep   = cl_abap_char_utilities=>newline
  ).

  DATA lv_t1 TYPE i.
  DATA lv_t2 TYPE i.
  GET RUN TIME FIELD lv_t1.
  DATA(lv_result) = zcl_mjs=>eval( lv_js ).
  GET RUN TIME FIELD lv_t2.
  DATA(lv_ms) = ( lv_t2 - lv_t1 ) / 1000.

  DATA lt_lines TYPE STANDARD TABLE OF string.
  SPLIT lv_result AT cl_abap_char_utilities=>newline INTO TABLE lt_lines.
  LOOP AT lt_lines INTO DATA(lv_line).
    WRITE: / lv_line.
  ENDLOOP.
  WRITE: / |Time: { lv_ms }ms|.
