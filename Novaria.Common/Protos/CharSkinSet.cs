// <auto-generated>
//     Generated by the protocol buffer compiler.  DO NOT EDIT!
//     source: char_skin_set.proto
// </auto-generated>
#pragma warning disable 1591, 0612, 3021, 8981
#region Designer generated code

using pb = global::Google.Protobuf;
using pbc = global::Google.Protobuf.Collections;
using pbr = global::Google.Protobuf.Reflection;
using scg = global::System.Collections.Generic;
namespace Proto {

  /// <summary>Holder for reflection information generated from char_skin_set.proto</summary>
  public static partial class CharSkinSetReflection {

    #region Descriptor
    /// <summary>File descriptor for char_skin_set.proto</summary>
    public static pbr::FileDescriptor Descriptor {
      get { return descriptor; }
    }
    private static pbr::FileDescriptor descriptor;

    static CharSkinSetReflection() {
      byte[] descriptorData = global::System.Convert.FromBase64String(
          string.Concat(
            "ChNjaGFyX3NraW5fc2V0LnByb3RvEgVwcm90bxoMcHVibGljLnByb3RvIkYK",
            "DkNoYXJTa2luU2V0UmVxEg4KBkNoYXJJZBgBIAEoDRIOCgZTa2luSWQYAiAB",
            "KA0SFAoLTmV4dFBhY2thZ2UY/w8gASgMUABiBnByb3RvMw=="));
      descriptor = pbr::FileDescriptor.FromGeneratedCode(descriptorData,
          new pbr::FileDescriptor[] { global::Proto.PublicReflection.Descriptor, },
          new pbr::GeneratedClrTypeInfo(null, null, new pbr::GeneratedClrTypeInfo[] {
            new pbr::GeneratedClrTypeInfo(typeof(global::Proto.CharSkinSetReq), global::Proto.CharSkinSetReq.Parser, new[]{ "CharId", "SkinId", "NextPackage" }, null, null, null, null)
          }));
    }
    #endregion

  }
  #region Messages
  [global::System.Diagnostics.DebuggerDisplayAttribute("{ToString(),nq}")]
  public sealed partial class CharSkinSetReq : pb::IMessage<CharSkinSetReq>
  #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      , pb::IBufferMessage
  #endif
  {
    private static readonly pb::MessageParser<CharSkinSetReq> _parser = new pb::MessageParser<CharSkinSetReq>(() => new CharSkinSetReq());
    private pb::UnknownFieldSet _unknownFields;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public static pb::MessageParser<CharSkinSetReq> Parser { get { return _parser; } }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public static pbr::MessageDescriptor Descriptor {
      get { return global::Proto.CharSkinSetReflection.Descriptor.MessageTypes[0]; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    pbr::MessageDescriptor pb::IMessage.Descriptor {
      get { return Descriptor; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public CharSkinSetReq() {
      OnConstruction();
    }

    partial void OnConstruction();

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public CharSkinSetReq(CharSkinSetReq other) : this() {
      charId_ = other.charId_;
      skinId_ = other.skinId_;
      nextPackage_ = other.nextPackage_;
      _unknownFields = pb::UnknownFieldSet.Clone(other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public CharSkinSetReq Clone() {
      return new CharSkinSetReq(this);
    }

    /// <summary>Field number for the "CharId" field.</summary>
    public const int CharIdFieldNumber = 1;
    private uint charId_;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public uint CharId {
      get { return charId_; }
      set {
        charId_ = value;
      }
    }

    /// <summary>Field number for the "SkinId" field.</summary>
    public const int SkinIdFieldNumber = 2;
    private uint skinId_;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public uint SkinId {
      get { return skinId_; }
      set {
        skinId_ = value;
      }
    }

    /// <summary>Field number for the "NextPackage" field.</summary>
    public const int NextPackageFieldNumber = 2047;
    private pb::ByteString nextPackage_ = pb::ByteString.Empty;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public pb::ByteString NextPackage {
      get { return nextPackage_; }
      set {
        nextPackage_ = pb::ProtoPreconditions.CheckNotNull(value, "value");
      }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public override bool Equals(object other) {
      return Equals(other as CharSkinSetReq);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public bool Equals(CharSkinSetReq other) {
      if (ReferenceEquals(other, null)) {
        return false;
      }
      if (ReferenceEquals(other, this)) {
        return true;
      }
      if (CharId != other.CharId) return false;
      if (SkinId != other.SkinId) return false;
      if (NextPackage != other.NextPackage) return false;
      return Equals(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public override int GetHashCode() {
      int hash = 1;
      if (CharId != 0) hash ^= CharId.GetHashCode();
      if (SkinId != 0) hash ^= SkinId.GetHashCode();
      if (NextPackage.Length != 0) hash ^= NextPackage.GetHashCode();
      if (_unknownFields != null) {
        hash ^= _unknownFields.GetHashCode();
      }
      return hash;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public override string ToString() {
      return pb::JsonFormatter.ToDiagnosticString(this);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public void WriteTo(pb::CodedOutputStream output) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      output.WriteRawMessage(this);
    #else
      if (CharId != 0) {
        output.WriteRawTag(8);
        output.WriteUInt32(CharId);
      }
      if (SkinId != 0) {
        output.WriteRawTag(16);
        output.WriteUInt32(SkinId);
      }
      if (NextPackage.Length != 0) {
        output.WriteRawTag(250, 127);
        output.WriteBytes(NextPackage);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(output);
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    void pb::IBufferMessage.InternalWriteTo(ref pb::WriteContext output) {
      if (CharId != 0) {
        output.WriteRawTag(8);
        output.WriteUInt32(CharId);
      }
      if (SkinId != 0) {
        output.WriteRawTag(16);
        output.WriteUInt32(SkinId);
      }
      if (NextPackage.Length != 0) {
        output.WriteRawTag(250, 127);
        output.WriteBytes(NextPackage);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(ref output);
      }
    }
    #endif

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public int CalculateSize() {
      int size = 0;
      if (CharId != 0) {
        size += 1 + pb::CodedOutputStream.ComputeUInt32Size(CharId);
      }
      if (SkinId != 0) {
        size += 1 + pb::CodedOutputStream.ComputeUInt32Size(SkinId);
      }
      if (NextPackage.Length != 0) {
        size += 2 + pb::CodedOutputStream.ComputeBytesSize(NextPackage);
      }
      if (_unknownFields != null) {
        size += _unknownFields.CalculateSize();
      }
      return size;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public void MergeFrom(CharSkinSetReq other) {
      if (other == null) {
        return;
      }
      if (other.CharId != 0) {
        CharId = other.CharId;
      }
      if (other.SkinId != 0) {
        SkinId = other.SkinId;
      }
      if (other.NextPackage.Length != 0) {
        NextPackage = other.NextPackage;
      }
      _unknownFields = pb::UnknownFieldSet.MergeFrom(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    public void MergeFrom(pb::CodedInputStream input) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      input.ReadRawMessage(this);
    #else
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
      if ((tag & 7) == 4) {
        // Abort on any end group tag.
        return;
      }
      switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, input);
            break;
          case 8: {
            CharId = input.ReadUInt32();
            break;
          }
          case 16: {
            SkinId = input.ReadUInt32();
            break;
          }
          case 16378: {
            NextPackage = input.ReadBytes();
            break;
          }
        }
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    [global::System.CodeDom.Compiler.GeneratedCode("protoc", null)]
    void pb::IBufferMessage.InternalMergeFrom(ref pb::ParseContext input) {
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
      if ((tag & 7) == 4) {
        // Abort on any end group tag.
        return;
      }
      switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, ref input);
            break;
          case 8: {
            CharId = input.ReadUInt32();
            break;
          }
          case 16: {
            SkinId = input.ReadUInt32();
            break;
          }
          case 16378: {
            NextPackage = input.ReadBytes();
            break;
          }
        }
      }
    }
    #endif

  }

  #endregion

}

#endregion Designer generated code
