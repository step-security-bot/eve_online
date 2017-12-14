require 'forwardable'

module EveOnline
  module ESI
    class Alliance < Base
      extend Forwardable

      API_ENDPOINT = 'https://esi.tech.ccp.is/v3/alliances/%s/?datasource=tranquility'.freeze

      attr_reader :alliance_id

      def initialize(options)
        super

        @alliance_id = options[:alliance_id]
      end

      def_delegators :model, :as_json, :name, :ticker, :creator_id,
                     :creator_corporation_id, :executor_corporation_id,
                     :date_founded, :faction_id

      def model
        Models::Alliance.new(response)
      end
      memoize :model

      def scope; end

      def url
        API_ENDPOINT % alliance_id
      end
    end
  end
end
