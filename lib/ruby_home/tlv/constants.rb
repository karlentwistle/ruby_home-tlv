module RubyHome
  module TLV
    ERROR_CODES = {
      unknown: 1,
      authentication: 2,
      backoff: 3,
      max_peers: 4,
      max_tries: 5,
      unavailable: 6,
      busy: 7,
    }.freeze

    NAME_TYPES = {
      method: 0,
      identifier: 1,
      salt: 2,
      public_key: 3,
      proof: 4,
      encrypted_data: 5,
      state: 6,
      error: 7,
      retry_delay: 8,
      certificate: 9,
      signature: 10,
      permissions: 11,
      fragment_data: 12,
      fragment_last: 13,
    }.freeze

    TYPE_NAMES = NAME_TYPES.invert.freeze
  end
end
