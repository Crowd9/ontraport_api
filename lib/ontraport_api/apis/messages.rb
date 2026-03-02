module OntraportApi
  module APIs
    module Messages
      def get_message(id)
        query_messages(:get, '/message', {id: id})
      end

      def query_messages(method, path, payload)
        query(method, path, payload)
      end
    end
  end
end
