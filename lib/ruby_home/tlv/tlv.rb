require 'ruby_home/tlv/utf8_string'

module RubyHome
  module TLV
    class TLV < BinData::Record
      uint8 :type_id
      uint8 :len, value: -> { val.to_binary_s.length }
      choice :val, selection: -> { type_id.to_i } do
        string :default, read_length: :len

        uint8       0, read_length: :len
        utf8_string 1, read_length: :len
        string      2, read_length: :len
        string      3, read_length: :len
        string      4, read_length: :len
        string      5, read_length: :len
        uint8       6, read_length: :len
        uint8       7, read_length: :len
        uint8       8, read_length: :len
        string      9, read_length: :len
        string      10, read_length: :len
        uint8       11, read_length: :len
        string      12, read_length: :len
        string      13, read_length: :len
      end
    end
  end
end
