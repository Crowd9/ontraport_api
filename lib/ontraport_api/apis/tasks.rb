module OntraportApi
  module APIs
    module Tasks
      def cancel_task(criteria = {})
        query_tasks(:post, '/task/cancel', criteria)
      end

      def complete_task(criteria = {}, data = {})
        query_tasks(:post, '/task/complete', { criteria: criteria, data: data })
      end

      def query_tasks(method, path, payload)
        query(method, path, payload)
      end
    end
  end
end
