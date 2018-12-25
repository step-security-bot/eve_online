# frozen_string_literal: true

module EveOnline
  module ESI
    class AllianceCorporations < Base
      API_ENDPOINT = 'https://esi.evetech.net/v1/alliances/%<alliance_id>s/corporations/?datasource=%<datasource>s'

      attr_reader :alliance_id

      def initialize(options)
        super

        @alliance_id = options.fetch(:alliance_id)
      end

      def etag
        current_etag
      end

      def corporation_ids
        response
      end

      def scope; end

      def url
        format(API_ENDPOINT, alliance_id: alliance_id, datasource: datasource)
      end
    end
  end
end
