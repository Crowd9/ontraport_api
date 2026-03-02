module OntraportApi
  module APIs
    module Objects
      def get_object(id, object_id)
        query_objects(:get, '/object', {id: id}, object_id)
      end

      def new_object(payload = {}, object_id)
        query_objects(:post, '/objects', payload, object_id)
      end

      def update_object(id, payload = {}, object_id)
        query_objects(:put, '/objects', payload.merge(id: id), object_id)
      end

      def get_objects(conditions = {}, object_id)
        conditions = { condition: conditions } if conditions.is_a? String
        default_conditions = {
          performAll: true,
          sortDir: 'asc',
          searchNotes: 'true'
        }
        payload = default_conditions.merge(conditions)
        query_objects(:get, '/objects', payload, object_id)
      end

      def query_objects(method, path, payload, object_id)
        query(method, path, payload.merge({ objectID: object_id }))
      end

    end
  end
end
