# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `websocket-extensions` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module WebSocket
end

class WebSocket::Extensions
  def initialize; end

  def activate(header); end
  def add(ext); end
  def close; end
  def generate_offer; end
  def generate_response(header); end
  def process_incoming_message(message); end
  def process_outgoing_message(message); end
  def valid_frame_rsv(frame); end
  def valid_frame_rsv?(frame); end

  private

  def reserve(ext); end
  def reserved?(ext); end
end

class WebSocket::Extensions::ExtensionError < ::ArgumentError
end

WebSocket::Extensions::MESSAGE_OPCODES = T.let(T.unsafe(nil), Array)

class WebSocket::Extensions::Parser
  class << self
    def parse_header(header); end
    def serialize_params(name, params); end
  end
end

WebSocket::Extensions::Parser::EXT = T.let(T.unsafe(nil), Regexp)

WebSocket::Extensions::Parser::EXT_LIST = T.let(T.unsafe(nil), Regexp)

WebSocket::Extensions::Parser::NOTOKEN = T.let(T.unsafe(nil), Regexp)

WebSocket::Extensions::Parser::NUMBER = T.let(T.unsafe(nil), Regexp)

WebSocket::Extensions::Parser::PARAM = T.let(T.unsafe(nil), Regexp)

class WebSocket::Extensions::Parser::ParseError < ::ArgumentError
end

WebSocket::Extensions::Parser::QUOTED = T.let(T.unsafe(nil), Regexp)

WebSocket::Extensions::Parser::TOKEN = T.let(T.unsafe(nil), Regexp)

module WebSocket::Mask
  class << self
    def mask(_arg0, _arg1); end
  end
end

class WebSocket::Extensions::Offers
  def initialize; end

  def by_name(name); end
  def each_offer(&block); end
  def push(name, params); end
  def to_a; end
end
