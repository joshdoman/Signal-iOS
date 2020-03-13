//
//  Copyright (c) 2020 Open Whisper Systems. All rights reserved.
//

//
//  Copyright (c) 2019 Open Whisper Systems. All rights reserved.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct StorageServiceProtos_StorageItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var key: Data = SwiftProtobuf.Internal.emptyData

  /// @required
  var value: Data = SwiftProtobuf.Internal.emptyData

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct StorageServiceProtos_StorageItems {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Corresponds to the requested
  var items: [StorageServiceProtos_StorageItem] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct StorageServiceProtos_StorageManifest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var version: UInt64 = 0

  /// @required
  var value: Data = SwiftProtobuf.Internal.emptyData

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct StorageServiceProtos_ReadOperation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var readKey: [Data] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct StorageServiceProtos_WriteOperation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var manifest: StorageServiceProtos_StorageManifest {
    get {return _storage._manifest ?? StorageServiceProtos_StorageManifest()}
    set {_uniqueStorage()._manifest = newValue}
  }
  /// Returns true if `manifest` has been explicitly set.
  var hasManifest: Bool {return _storage._manifest != nil}
  /// Clears the value of `manifest`. Subsequent reads from it will return its default value.
  mutating func clearManifest() {_uniqueStorage()._manifest = nil}

  var insertItem: [StorageServiceProtos_StorageItem] {
    get {return _storage._insertItem}
    set {_uniqueStorage()._insertItem = newValue}
  }

  var deleteKey: [Data] {
    get {return _storage._deleteKey}
    set {_uniqueStorage()._deleteKey = newValue}
  }

  var deleteAll: Bool {
    get {return _storage._deleteAll}
    set {_uniqueStorage()._deleteAll = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct StorageServiceProtos_ManifestRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var version: UInt64 = 0

  var keys: [StorageServiceProtos_ManifestRecord.Key] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Key {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// @required
    var data: Data = SwiftProtobuf.Internal.emptyData

    /// @required
    var type: StorageServiceProtos_ManifestRecord.Key.TypeEnum = .unknown

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum TypeEnum: SwiftProtobuf.Enum {
      typealias RawValue = Int
      case unknown // = 0
      case contact // = 1
      case groupv1 // = 2
      case groupv2 // = 3
      case UNRECOGNIZED(Int)

      init() {
        self = .unknown
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unknown
        case 1: self = .contact
        case 2: self = .groupv1
        case 3: self = .groupv2
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      var rawValue: Int {
        switch self {
        case .unknown: return 0
        case .contact: return 1
        case .groupv1: return 2
        case .groupv2: return 3
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    init() {}
  }

  init() {}
}

struct StorageServiceProtos_StorageRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var record: OneOf_Record? {
    get {return _storage._record}
    set {_uniqueStorage()._record = newValue}
  }

  var contact: StorageServiceProtos_ContactRecord {
    get {
      if case .contact(let v)? = _storage._record {return v}
      return StorageServiceProtos_ContactRecord()
    }
    set {_uniqueStorage()._record = .contact(newValue)}
  }

  var groupV1: StorageServiceProtos_GroupV1Record {
    get {
      if case .groupV1(let v)? = _storage._record {return v}
      return StorageServiceProtos_GroupV1Record()
    }
    set {_uniqueStorage()._record = .groupV1(newValue)}
  }

  var groupV2: StorageServiceProtos_GroupV2Record {
    get {
      if case .groupV2(let v)? = _storage._record {return v}
      return StorageServiceProtos_GroupV2Record()
    }
    set {_uniqueStorage()._record = .groupV2(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Record: Equatable {
    case contact(StorageServiceProtos_ContactRecord)
    case groupV1(StorageServiceProtos_GroupV1Record)
    case groupV2(StorageServiceProtos_GroupV2Record)

  #if !swift(>=4.1)
    static func ==(lhs: StorageServiceProtos_StorageRecord.OneOf_Record, rhs: StorageServiceProtos_StorageRecord.OneOf_Record) -> Bool {
      switch (lhs, rhs) {
      case (.contact(let l), .contact(let r)): return l == r
      case (.groupV1(let l), .groupV1(let r)): return l == r
      case (.groupV2(let l), .groupV2(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct StorageServiceProtos_ContactRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var serviceUuid: String {
    get {return _storage._serviceUuid}
    set {_uniqueStorage()._serviceUuid = newValue}
  }

  var serviceE164: String {
    get {return _storage._serviceE164}
    set {_uniqueStorage()._serviceE164 = newValue}
  }

  var profile: StorageServiceProtos_ContactRecord.Profile {
    get {return _storage._profile ?? StorageServiceProtos_ContactRecord.Profile()}
    set {_uniqueStorage()._profile = newValue}
  }
  /// Returns true if `profile` has been explicitly set.
  var hasProfile: Bool {return _storage._profile != nil}
  /// Clears the value of `profile`. Subsequent reads from it will return its default value.
  mutating func clearProfile() {_uniqueStorage()._profile = nil}

  var identity: StorageServiceProtos_ContactRecord.Identity {
    get {return _storage._identity ?? StorageServiceProtos_ContactRecord.Identity()}
    set {_uniqueStorage()._identity = newValue}
  }
  /// Returns true if `identity` has been explicitly set.
  var hasIdentity: Bool {return _storage._identity != nil}
  /// Clears the value of `identity`. Subsequent reads from it will return its default value.
  mutating func clearIdentity() {_uniqueStorage()._identity = nil}

  var blocked: Bool {
    get {return _storage._blocked}
    set {_uniqueStorage()._blocked = newValue}
  }

  var whitelisted: Bool {
    get {return _storage._whitelisted}
    set {_uniqueStorage()._whitelisted = newValue}
  }

  var nickname: String {
    get {return _storage._nickname}
    set {_uniqueStorage()._nickname = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Identity {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var key: Data = SwiftProtobuf.Internal.emptyData

    var state: StorageServiceProtos_ContactRecord.Identity.State = .default

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum State: SwiftProtobuf.Enum {
      typealias RawValue = Int
      case `default` // = 0
      case verified // = 1
      case unverified // = 2
      case UNRECOGNIZED(Int)

      init() {
        self = .default
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .default
        case 1: self = .verified
        case 2: self = .unverified
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      var rawValue: Int {
        switch self {
        case .default: return 0
        case .verified: return 1
        case .unverified: return 2
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    init() {}
  }

  struct Profile {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var givenName: String = String()

    var key: Data = SwiftProtobuf.Internal.emptyData

    var username: String = String()

    var familyName: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct StorageServiceProtos_GroupV1Record {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var id: Data = SwiftProtobuf.Internal.emptyData

  var blocked: Bool = false

  var whitelisted: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct StorageServiceProtos_GroupV2Record {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// @required
  var masterKey: Data = SwiftProtobuf.Internal.emptyData

  var blocked: Bool = false

  var whitelisted: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "StorageServiceProtos"

extension StorageServiceProtos_StorageItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StorageItem"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "value")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.key)
      case 2: try decoder.decodeSingularBytesField(value: &self.value)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularBytesField(value: self.key, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularBytesField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_StorageItem, rhs: StorageServiceProtos_StorageItem) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_StorageItems: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StorageItems"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "items")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.items)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_StorageItems, rhs: StorageServiceProtos_StorageItems) -> Bool {
    if lhs.items != rhs.items {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_StorageManifest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StorageManifest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "value")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.version)
      case 2: try decoder.decodeSingularBytesField(value: &self.value)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.version != 0 {
      try visitor.visitSingularUInt64Field(value: self.version, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularBytesField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_StorageManifest, rhs: StorageServiceProtos_StorageManifest) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ReadOperation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ReadOperation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "readKey")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedBytesField(value: &self.readKey)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.readKey.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.readKey, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_ReadOperation, rhs: StorageServiceProtos_ReadOperation) -> Bool {
    if lhs.readKey != rhs.readKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_WriteOperation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WriteOperation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "manifest"),
    2: .same(proto: "insertItem"),
    3: .same(proto: "deleteKey"),
    4: .same(proto: "deleteAll")
  ]

  fileprivate class _StorageClass {
    var _manifest: StorageServiceProtos_StorageManifest?
    var _insertItem: [StorageServiceProtos_StorageItem] = []
    var _deleteKey: [Data] = []
    var _deleteAll: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _manifest = source._manifest
      _insertItem = source._insertItem
      _deleteKey = source._deleteKey
      _deleteAll = source._deleteAll
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._manifest)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._insertItem)
        case 3: try decoder.decodeRepeatedBytesField(value: &_storage._deleteKey)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._deleteAll)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._manifest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._insertItem.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._insertItem, fieldNumber: 2)
      }
      if !_storage._deleteKey.isEmpty {
        try visitor.visitRepeatedBytesField(value: _storage._deleteKey, fieldNumber: 3)
      }
      if _storage._deleteAll != false {
        try visitor.visitSingularBoolField(value: _storage._deleteAll, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_WriteOperation, rhs: StorageServiceProtos_WriteOperation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._manifest != rhs_storage._manifest {return false}
        if _storage._insertItem != rhs_storage._insertItem {return false}
        if _storage._deleteKey != rhs_storage._deleteKey {return false}
        if _storage._deleteAll != rhs_storage._deleteAll {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ManifestRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ManifestRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "keys")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.version)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.keys)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.version != 0 {
      try visitor.visitSingularUInt64Field(value: self.version, fieldNumber: 1)
    }
    if !self.keys.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.keys, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_ManifestRecord, rhs: StorageServiceProtos_ManifestRecord) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.keys != rhs.keys {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ManifestRecord.Key: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = StorageServiceProtos_ManifestRecord.protoMessageName + ".Key"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
    2: .same(proto: "type")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.data)
      case 2: try decoder.decodeSingularEnumField(value: &self.type)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 1)
    }
    if self.type != .unknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_ManifestRecord.Key, rhs: StorageServiceProtos_ManifestRecord.Key) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ManifestRecord.Key.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "CONTACT"),
    2: .same(proto: "GROUPV1"),
    3: .same(proto: "GROUPV2")
  ]
}

extension StorageServiceProtos_StorageRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StorageRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contact"),
    2: .same(proto: "groupV1"),
    3: .same(proto: "groupV2")
  ]

  fileprivate class _StorageClass {
    var _record: StorageServiceProtos_StorageRecord.OneOf_Record?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _record = source._record
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          var v: StorageServiceProtos_ContactRecord?
          if let current = _storage._record {
            try decoder.handleConflictingOneOf()
            if case .contact(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._record = .contact(v)}
        case 2:
          var v: StorageServiceProtos_GroupV1Record?
          if let current = _storage._record {
            try decoder.handleConflictingOneOf()
            if case .groupV1(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._record = .groupV1(v)}
        case 3:
          var v: StorageServiceProtos_GroupV2Record?
          if let current = _storage._record {
            try decoder.handleConflictingOneOf()
            if case .groupV2(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._record = .groupV2(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._record {
      case .contact(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .groupV1(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .groupV2(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_StorageRecord, rhs: StorageServiceProtos_StorageRecord) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._record != rhs_storage._record {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ContactRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ContactRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "serviceUuid"),
    2: .same(proto: "serviceE164"),
    3: .same(proto: "profile"),
    4: .same(proto: "identity"),
    5: .same(proto: "blocked"),
    6: .same(proto: "whitelisted"),
    7: .same(proto: "nickname")
  ]

  fileprivate class _StorageClass {
    var _serviceUuid: String = String()
    var _serviceE164: String = String()
    var _profile: StorageServiceProtos_ContactRecord.Profile?
    var _identity: StorageServiceProtos_ContactRecord.Identity?
    var _blocked: Bool = false
    var _whitelisted: Bool = false
    var _nickname: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _serviceUuid = source._serviceUuid
      _serviceE164 = source._serviceE164
      _profile = source._profile
      _identity = source._identity
      _blocked = source._blocked
      _whitelisted = source._whitelisted
      _nickname = source._nickname
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._serviceUuid)
        case 2: try decoder.decodeSingularStringField(value: &_storage._serviceE164)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._profile)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._identity)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._blocked)
        case 6: try decoder.decodeSingularBoolField(value: &_storage._whitelisted)
        case 7: try decoder.decodeSingularStringField(value: &_storage._nickname)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._serviceUuid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._serviceUuid, fieldNumber: 1)
      }
      if !_storage._serviceE164.isEmpty {
        try visitor.visitSingularStringField(value: _storage._serviceE164, fieldNumber: 2)
      }
      if let v = _storage._profile {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._identity {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._blocked != false {
        try visitor.visitSingularBoolField(value: _storage._blocked, fieldNumber: 5)
      }
      if _storage._whitelisted != false {
        try visitor.visitSingularBoolField(value: _storage._whitelisted, fieldNumber: 6)
      }
      if !_storage._nickname.isEmpty {
        try visitor.visitSingularStringField(value: _storage._nickname, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_ContactRecord, rhs: StorageServiceProtos_ContactRecord) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._serviceUuid != rhs_storage._serviceUuid {return false}
        if _storage._serviceE164 != rhs_storage._serviceE164 {return false}
        if _storage._profile != rhs_storage._profile {return false}
        if _storage._identity != rhs_storage._identity {return false}
        if _storage._blocked != rhs_storage._blocked {return false}
        if _storage._whitelisted != rhs_storage._whitelisted {return false}
        if _storage._nickname != rhs_storage._nickname {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ContactRecord.Identity: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = StorageServiceProtos_ContactRecord.protoMessageName + ".Identity"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "state")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.key)
      case 2: try decoder.decodeSingularEnumField(value: &self.state)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularBytesField(value: self.key, fieldNumber: 1)
    }
    if self.state != .default {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_ContactRecord.Identity, rhs: StorageServiceProtos_ContactRecord.Identity) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_ContactRecord.Identity.State: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DEFAULT"),
    1: .same(proto: "VERIFIED"),
    2: .same(proto: "UNVERIFIED")
  ]
}

extension StorageServiceProtos_ContactRecord.Profile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = StorageServiceProtos_ContactRecord.protoMessageName + ".Profile"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "givenName"),
    2: .same(proto: "key"),
    3: .same(proto: "username"),
    4: .same(proto: "familyName")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.givenName)
      case 2: try decoder.decodeSingularBytesField(value: &self.key)
      case 3: try decoder.decodeSingularStringField(value: &self.username)
      case 4: try decoder.decodeSingularStringField(value: &self.familyName)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.givenName.isEmpty {
      try visitor.visitSingularStringField(value: self.givenName, fieldNumber: 1)
    }
    if !self.key.isEmpty {
      try visitor.visitSingularBytesField(value: self.key, fieldNumber: 2)
    }
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 3)
    }
    if !self.familyName.isEmpty {
      try visitor.visitSingularStringField(value: self.familyName, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_ContactRecord.Profile, rhs: StorageServiceProtos_ContactRecord.Profile) -> Bool {
    if lhs.givenName != rhs.givenName {return false}
    if lhs.key != rhs.key {return false}
    if lhs.username != rhs.username {return false}
    if lhs.familyName != rhs.familyName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_GroupV1Record: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GroupV1Record"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "blocked"),
    3: .same(proto: "whitelisted")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.id)
      case 2: try decoder.decodeSingularBoolField(value: &self.blocked)
      case 3: try decoder.decodeSingularBoolField(value: &self.whitelisted)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularBytesField(value: self.id, fieldNumber: 1)
    }
    if self.blocked != false {
      try visitor.visitSingularBoolField(value: self.blocked, fieldNumber: 2)
    }
    if self.whitelisted != false {
      try visitor.visitSingularBoolField(value: self.whitelisted, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_GroupV1Record, rhs: StorageServiceProtos_GroupV1Record) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.blocked != rhs.blocked {return false}
    if lhs.whitelisted != rhs.whitelisted {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StorageServiceProtos_GroupV2Record: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GroupV2Record"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "masterKey"),
    2: .same(proto: "blocked"),
    3: .same(proto: "whitelisted")
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.masterKey)
      case 2: try decoder.decodeSingularBoolField(value: &self.blocked)
      case 3: try decoder.decodeSingularBoolField(value: &self.whitelisted)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.masterKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.masterKey, fieldNumber: 1)
    }
    if self.blocked != false {
      try visitor.visitSingularBoolField(value: self.blocked, fieldNumber: 2)
    }
    if self.whitelisted != false {
      try visitor.visitSingularBoolField(value: self.whitelisted, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StorageServiceProtos_GroupV2Record, rhs: StorageServiceProtos_GroupV2Record) -> Bool {
    if lhs.masterKey != rhs.masterKey {return false}
    if lhs.blocked != rhs.blocked {return false}
    if lhs.whitelisted != rhs.whitelisted {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
