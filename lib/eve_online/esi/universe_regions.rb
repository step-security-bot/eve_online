# frozen_string_literal: true

module EveOnline
  module ESI
    class UniverseRegions < Base
      API_PATH = "/v1/universe/regions/"

      def universe_region_ids
        response
      end

      def scope
      end

      def path
        API_PATH
      end
    end
  end
end
