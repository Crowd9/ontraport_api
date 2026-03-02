module OntraportApi
  module APIs
    module Sequences
      SEQUENCES_OBJECT_ID = 5

      def get_sequences(condition = '')
        query_sequences(:get, '/objects', { condition: condition })
      end

      def query_sequences(method, path, payload = {})
        query(method, path, payload.merge({ objectID: SEQUENCES_OBJECT_ID }))
      end
    end
  end
end
