module OntraportApi
  module APIs
    module Tags
      TAGS_OBJECT_ID = 14

      def get_tags(condition = '')
        query_tags(:get, '/objects', { condition: condition })
      end

      def new_tag(tag_name)
        query_tags(:post, '/objects', { tag_name: tag_name })
      end

      def query_tags(method, path, payload = {})
        query(method, path, payload.merge({ objectID: TAGS_OBJECT_ID }))
      end
    end
  end
end
