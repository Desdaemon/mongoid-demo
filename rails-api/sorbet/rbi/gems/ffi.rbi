# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/ffi/all/ffi.rbi
#
# ffi-1.14.2

class FFI::Type
  def alignment; end
  def initialize(arg0); end
  def inspect; end
  def size; end
end
class FFI::Type::Builtin < FFI::Type
  def inspect; end
end
class FFI::ArrayType < FFI::Type
  def elem_type; end
  def initialize(arg0, arg1); end
  def length; end
end
module FFI::LastError
  def error; end
  def error=(arg0); end
  def self.error; end
  def self.error=(arg0); end
end
class FFI::AbstractMemory
  def [](arg0); end
  def __copy_from__(arg0, arg1); end
  def clear; end
  def get(arg0, arg1); end
  def get_array_of_char(arg0, arg1); end
  def get_array_of_double(arg0, arg1); end
  def get_array_of_float(arg0, arg1); end
  def get_array_of_float32(arg0, arg1); end
  def get_array_of_float64(arg0, arg1); end
  def get_array_of_int(arg0, arg1); end
  def get_array_of_int16(arg0, arg1); end
  def get_array_of_int32(arg0, arg1); end
  def get_array_of_int64(arg0, arg1); end
  def get_array_of_int8(arg0, arg1); end
  def get_array_of_long(arg0, arg1); end
  def get_array_of_long_long(arg0, arg1); end
  def get_array_of_pointer(arg0, arg1); end
  def get_array_of_short(arg0, arg1); end
  def get_array_of_string(*arg0); end
  def get_array_of_uchar(arg0, arg1); end
  def get_array_of_uint(arg0, arg1); end
  def get_array_of_uint16(arg0, arg1); end
  def get_array_of_uint32(arg0, arg1); end
  def get_array_of_uint64(arg0, arg1); end
  def get_array_of_uint8(arg0, arg1); end
  def get_array_of_ulong(arg0, arg1); end
  def get_array_of_ulong_long(arg0, arg1); end
  def get_array_of_ushort(arg0, arg1); end
  def get_bytes(arg0, arg1); end
  def get_char(arg0); end
  def get_double(arg0); end
  def get_float(arg0); end
  def get_float32(arg0); end
  def get_float64(arg0); end
  def get_int(arg0); end
  def get_int16(arg0); end
  def get_int32(arg0); end
  def get_int64(arg0); end
  def get_int8(arg0); end
  def get_long(arg0); end
  def get_long_long(arg0); end
  def get_pointer(arg0); end
  def get_short(arg0); end
  def get_string(*arg0); end
  def get_uchar(arg0); end
  def get_uint(arg0); end
  def get_uint16(arg0); end
  def get_uint32(arg0); end
  def get_uint64(arg0); end
  def get_uint8(arg0); end
  def get_ulong(arg0); end
  def get_ulong_long(arg0); end
  def get_ushort(arg0); end
  def put(arg0, arg1, arg2); end
  def put_array_of_char(arg0, arg1); end
  def put_array_of_double(arg0, arg1); end
  def put_array_of_float(arg0, arg1); end
  def put_array_of_float32(arg0, arg1); end
  def put_array_of_float64(arg0, arg1); end
  def put_array_of_int(arg0, arg1); end
  def put_array_of_int16(arg0, arg1); end
  def put_array_of_int32(arg0, arg1); end
  def put_array_of_int64(arg0, arg1); end
  def put_array_of_int8(arg0, arg1); end
  def put_array_of_long(arg0, arg1); end
  def put_array_of_long_long(arg0, arg1); end
  def put_array_of_pointer(arg0, arg1); end
  def put_array_of_short(arg0, arg1); end
  def put_array_of_uchar(arg0, arg1); end
  def put_array_of_uint(arg0, arg1); end
  def put_array_of_uint16(arg0, arg1); end
  def put_array_of_uint32(arg0, arg1); end
  def put_array_of_uint64(arg0, arg1); end
  def put_array_of_uint8(arg0, arg1); end
  def put_array_of_ulong(arg0, arg1); end
  def put_array_of_ulong_long(arg0, arg1); end
  def put_array_of_ushort(arg0, arg1); end
  def put_bytes(*arg0); end
  def put_char(arg0, arg1); end
  def put_double(arg0, arg1); end
  def put_float(arg0, arg1); end
  def put_float32(arg0, arg1); end
  def put_float64(arg0, arg1); end
  def put_int(arg0, arg1); end
  def put_int16(arg0, arg1); end
  def put_int32(arg0, arg1); end
  def put_int64(arg0, arg1); end
  def put_int8(arg0, arg1); end
  def put_long(arg0, arg1); end
  def put_long_long(arg0, arg1); end
  def put_pointer(arg0, arg1); end
  def put_short(arg0, arg1); end
  def put_string(arg0, arg1); end
  def put_uchar(arg0, arg1); end
  def put_uint(arg0, arg1); end
  def put_uint16(arg0, arg1); end
  def put_uint32(arg0, arg1); end
  def put_uint64(arg0, arg1); end
  def put_uint8(arg0, arg1); end
  def put_ulong(arg0, arg1); end
  def put_ulong_long(arg0, arg1); end
  def put_ushort(arg0, arg1); end
  def read_array_of_char(arg0); end
  def read_array_of_double(arg0); end
  def read_array_of_float(arg0); end
  def read_array_of_int(arg0); end
  def read_array_of_int16(arg0); end
  def read_array_of_int32(arg0); end
  def read_array_of_int64(arg0); end
  def read_array_of_int8(arg0); end
  def read_array_of_long(arg0); end
  def read_array_of_long_long(arg0); end
  def read_array_of_pointer(arg0); end
  def read_array_of_short(arg0); end
  def read_array_of_uchar(arg0); end
  def read_array_of_uint(arg0); end
  def read_array_of_uint16(arg0); end
  def read_array_of_uint32(arg0); end
  def read_array_of_uint64(arg0); end
  def read_array_of_uint8(arg0); end
  def read_array_of_ulong(arg0); end
  def read_array_of_ulong_long(arg0); end
  def read_array_of_ushort(arg0); end
  def read_bytes(arg0); end
  def read_char; end
  def read_double; end
  def read_float; end
  def read_int16; end
  def read_int32; end
  def read_int64; end
  def read_int8; end
  def read_int; end
  def read_long; end
  def read_long_long; end
  def read_pointer; end
  def read_short; end
  def read_uchar; end
  def read_uint16; end
  def read_uint32; end
  def read_uint64; end
  def read_uint8; end
  def read_uint; end
  def read_ulong; end
  def read_ulong_long; end
  def read_ushort; end
  def size; end
  def size_limit?; end
  def total; end
  def type_size; end
  def write_array_of_char(arg0); end
  def write_array_of_double(arg0); end
  def write_array_of_float(arg0); end
  def write_array_of_int(arg0); end
  def write_array_of_int16(arg0); end
  def write_array_of_int32(arg0); end
  def write_array_of_int64(arg0); end
  def write_array_of_int8(arg0); end
  def write_array_of_long(arg0); end
  def write_array_of_long_long(arg0); end
  def write_array_of_pointer(arg0); end
  def write_array_of_short(arg0); end
  def write_array_of_uchar(arg0); end
  def write_array_of_uint(arg0); end
  def write_array_of_uint16(arg0); end
  def write_array_of_uint32(arg0); end
  def write_array_of_uint64(arg0); end
  def write_array_of_uint8(arg0); end
  def write_array_of_ulong(arg0); end
  def write_array_of_ulong_long(arg0); end
  def write_array_of_ushort(arg0); end
  def write_bytes(*arg0); end
  def write_char(arg0); end
  def write_double(arg0); end
  def write_float(arg0); end
  def write_int(arg0); end
  def write_int16(arg0); end
  def write_int32(arg0); end
  def write_int64(arg0); end
  def write_int8(arg0); end
  def write_long(arg0); end
  def write_long_long(arg0); end
  def write_pointer(arg0); end
  def write_short(arg0); end
  def write_uchar(arg0); end
  def write_uint(arg0); end
  def write_uint16(arg0); end
  def write_uint32(arg0); end
  def write_uint64(arg0); end
  def write_uint8(arg0); end
  def write_ulong(arg0); end
  def write_ulong_long(arg0); end
  def write_ushort(arg0); end
end
class FFI::Pointer < FFI::AbstractMemory
  def +(arg0); end
  def ==(arg0); end
  def address; end
  def autorelease=(arg0); end
  def autorelease?; end
  def free; end
  def initialize(*arg0); end
  def initialize_copy(arg0); end
  def inspect; end
  def null?; end
  def order(*arg0); end
  def read(type); end
  def read_array_of_type(type, reader, length); end
  def read_string(len = nil); end
  def read_string_length(len); end
  def read_string_to_null; end
  def self.size; end
  def slice(arg0, arg1); end
  def to_i; end
  def to_ptr; end
  def to_s; end
  def type_size; end
  def write(type, value); end
  def write_array_of_type(type, writer, ary); end
  def write_string(str, len = nil); end
  def write_string_length(str, len); end
end
class FFI::FunctionType < FFI::Type
  def initialize(*arg0); end
  def param_types; end
  def result_type; end
end
class FFI::Function < FFI::Pointer
  def attach(arg0, arg1); end
  def autorelease; end
  def autorelease=(arg0); end
  def autorelease?; end
  def call(*arg0); end
  def free; end
  def initialize(*arg0); end
  def initialize_copy(arg0); end
end
class FFI::MemoryPointer < FFI::Pointer
  def initialize(*arg0); end
  def self.from_string(arg0); end
end
class FFI::Buffer < FFI::AbstractMemory
  def +(arg0); end
  def initialize(*arg0); end
  def initialize_copy(arg0); end
  def inspect; end
  def length; end
  def order(*arg0); end
  def self.alloc_in(*arg0); end
  def self.alloc_inout(*arg0); end
  def self.alloc_out(*arg0); end
  def self.new_in(*arg0); end
  def self.new_inout(*arg0); end
  def self.new_out(*arg0); end
  def slice(arg0, arg1); end
end
class FFI::StructByValue < FFI::Type
  def initialize(arg0); end
  def layout; end
  def struct_class; end
end
class FFI::StructLayout::Field
  def alignment; end
  def get(arg0); end
  def initialize(*arg0); end
  def name; end
  def offset; end
  def put(arg0, arg1); end
  def size; end
  def type; end
end
class FFI::StructLayout::Function < FFI::StructLayout::Field
  def get(arg0); end
  def put(arg0, arg1); end
end
class FFI::StructLayout::Array < FFI::StructLayout::Field
  def get(arg0); end
  def put(arg0, arg1); end
end
class FFI::StructLayout < FFI::Type
  def [](arg0); end
  def __union!; end
  def fields; end
  def initialize(arg0, arg1, arg2); end
  def members; end
  def offset_of(field_name); end
  def offsets; end
  def to_a; end
end
class FFI::Struct
  def [](arg0); end
  def []=(arg0, arg1); end
  def align; end
  def alignment; end
  def clear; end
  def initialize(*arg0); end
  def initialize_copy(arg0); end
  def layout; end
  def layout=(arg0); end
  def members; end
  def null?; end
  def offset_of(name); end
  def offsets; end
  def order(*arg0); end
  def pointer; end
  def pointer=(arg0); end
  def self.align(alignment = nil); end
  def self.aligned(alignment = nil); end
  def self.alignment; end
  def self.alloc_in(*arg0); end
  def self.alloc_inout(*arg0); end
  def self.alloc_out(*arg0); end
  def self.array_layout(builder, spec); end
  def self.auto_ptr; end
  def self.by_ref(flags = nil); end
  def self.by_value; end
  def self.callback(params, ret); end
  def self.enclosing_module; end
  def self.find_field_type(type, mod = nil); end
  def self.find_type(type, mod = nil); end
  def self.hash_layout(builder, spec); end
  def self.in; end
  def self.layout(*spec); end
  def self.members; end
  def self.new_in(*arg0); end
  def self.new_inout(*arg0); end
  def self.new_out(*arg0); end
  def self.offset_of(name); end
  def self.offsets; end
  def self.out; end
  def self.pack(packed = nil); end
  def self.packed(packed = nil); end
  def self.ptr(flags = nil); end
  def self.size; end
  def self.size=(size); end
  def self.val; end
  def size; end
  def to_ptr; end
  def values; end
end
class FFI::Struct::InlineArray
  def [](arg0); end
  def []=(arg0, arg1); end
  def each; end
  def initialize(arg0, arg1); end
  def size; end
  def to_a; end
  def to_ptr; end
end
class FFI::StructLayout::CharArray < FFI::Struct::InlineArray
  def to_s; end
  def to_str; end
end
class FFI::DynamicLibrary
  def find_function(arg0); end
  def find_symbol(arg0); end
  def find_variable(arg0); end
  def initialize(arg0, arg1); end
  def last_error; end
  def name; end
  def self.last_error; end
  def self.open(arg0, arg1); end
end
class FFI::DynamicLibrary::Symbol < FFI::Pointer
  def initialize_copy(arg0); end
  def inspect; end
end
class FFI::VariadicInvoker
  def attach(mod, mname); end
  def call(*args, &block); end
  def init(arg_types, type_map); end
  def initialize(arg0, arg1, arg2, arg3); end
  def invoke(arg0, arg1); end
end
class FFI::Type::Mapped < FFI::Type
  def from_native(*arg0); end
  def initialize(arg0); end
  def native_type; end
  def to_native(*arg0); end
  def type; end
end
module FFI
  def self.add_typedef(old, add); end
  def self.errno; end
  def self.errno=(error); end
  def self.find_type(name, type_map = nil); end
  def self.map_library_name(lib); end
  def self.type_size(type); end
  def self.typedef(old, add); end
end
class FFI::PlatformError < LoadError
end
module FFI::Platform
  def self.bsd?; end
  def self.is_os(os); end
  def self.mac?; end
  def self.solaris?; end
  def self.unix?; end
  def self.windows?; end
end
module FFI::DataConverter
  def from_native(value, ctx); end
  def native_type(type = nil); end
  def to_native(value, ctx); end
end
class FFI::StrPtrConverter
  def self.from_native(val, ctx); end
  extend FFI::DataConverter
end
class FFI::NotFoundError < LoadError
  def initialize(function, *libraries); end
end
module FFI::Library
  def attach_function(name, func, args, returns = nil, options = nil); end
  def attach_variable(mname, a1, a2 = nil); end
  def bitmask(*args); end
  def callback(*args); end
  def enum(*args); end
  def enum_type(name); end
  def enum_value(symbol); end
  def ffi_convention(convention = nil); end
  def ffi_lib(*names); end
  def ffi_lib_flags(*flags); end
  def ffi_libraries; end
  def find_type(t); end
  def function_names(name, arg_types); end
  def generic_enum(klass, *args); end
  def self.extended(mod); end
  def typedef(old, add, info = nil); end
end
class FFI::StructLayout::Enum < FFI::StructLayout::Field
  def get(ptr); end
  def put(ptr, value); end
end
class FFI::StructLayout::InnerStruct < FFI::StructLayout::Field
  def get(ptr); end
  def put(ptr, value); end
end
class FFI::StructLayout::Mapped < FFI::StructLayout::Field
  def get(ptr); end
  def initialize(name, offset, type, orig_field); end
  def put(ptr, value); end
end
class FFI::StructLayoutBuilder
  def add(name, type, offset = nil); end
  def add_array(name, type, count, offset = nil); end
  def add_field(name, type, offset = nil); end
  def add_struct(name, type, offset = nil); end
  def align(offset, align); end
  def alignment; end
  def alignment=(align); end
  def build; end
  def field_for_type(name, offset, type); end
  def initialize; end
  def packed=(packed); end
  def size; end
  def size=(size); end
  def union=(is_union); end
  def union?; end
end
class FFI::StructByReference
  def from_native(value, ctx); end
  def initialize(struct_class); end
  def native_type; end
  def struct_class; end
  def to_native(value, ctx); end
  include FFI::DataConverter
end
class FFI::Struct::ManagedStructConverter < FFI::StructByReference
  def from_native(ptr, ctx); end
  def initialize(struct_class); end
end
class FFI::Union < FFI::Struct
  def self.builder; end
end
class FFI::ManagedStruct < FFI::Struct
  def initialize(pointer = nil); end
end
module FFI::IO
  def self.for_fd(fd, mode = nil); end
  def self.native_read(io, buf, len); end
end
class FFI::AutoPointer < FFI::Pointer
  def autorelease=(autorelease); end
  def autorelease?; end
  def free; end
  def initialize(ptr, proc = nil, &block); end
  def self.from_native(val, ctx); end
  def self.native_type; end
  extend FFI::DataConverter
end
class FFI::AutoPointer::Releaser
  def autorelease; end
  def autorelease=(arg0); end
  def call(*args); end
  def free; end
  def initialize(ptr, proc); end
end
class FFI::AutoPointer::DefaultReleaser < FFI::AutoPointer::Releaser
  def release(ptr); end
end
class FFI::AutoPointer::CallableReleaser < FFI::AutoPointer::Releaser
  def release(ptr); end
end
class FFI::Enums
  def <<(enum); end
  def __map_symbol(symbol); end
  def find(query); end
  def initialize; end
end
class FFI::Enum
  def [](query); end
  def find(query); end
  def from_native(val, ctx); end
  def initialize(*args); end
  def native_type; end
  def symbol_map; end
  def symbols; end
  def tag; end
  def to_h; end
  def to_hash; end
  def to_native(val, ctx); end
  include FFI::DataConverter
end
class FFI::Bitmask < FFI::Enum
  def [](*query); end
  def from_native(val, ctx); end
  def initialize(*args); end
  def to_native(query, ctx); end
end
