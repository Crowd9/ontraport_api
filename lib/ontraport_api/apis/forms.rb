module OntraportApi
  module APIs
    module Forms
      def get_form(id)
        query_forms(:get, '/form', {id: id})
      end

      def query_forms(method, path, payload)
        query(method, path, payload)
      end
    end
  end
end
