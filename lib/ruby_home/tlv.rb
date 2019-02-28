require 'bindata'
require 'ruby_home/tlv/constants'
require 'ruby_home/tlv/tlv'
require 'ruby_home/tlv/version'

module RubyHome
  module TLV
    READER = BinData::Array.new(type: :tlv, read_until: :eof)

    class << self
      def decode(string)
        READER.clear
        READER.read(string)
        READER.snapshot.each_with_object({}) do |(hash), memo|
          type = TYPE_NAMES[hash[:type_id]]
          next unless type

          if memo[type]
            memo[type] << hash[:val]
          else
            memo[type] = hash[:val]
          end
        end
      end

      def encode(hash)
        hash.each_with_object(String.new) do |(key, value), memo|
          type_id = NAME_TYPES[key]
          next unless type_id

          fragments = if value.is_a?(String)
            value.scan(/.{1,255}/m)
          else
            [value]
          end

          fragments.each do |frame_value|
            tlv = TLV.new(type_id: type_id, val: frame_value)
            memo << tlv.to_binary_s
          end
        end
      end
    end
  end
end
