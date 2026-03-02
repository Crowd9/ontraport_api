module OntraportApi
  module APIs
    module Transactions
      def new_transaction(transaction = {})
        query_transactions(:post, '/transaction/processManual', transaction)
      end

      def refund_transactions(criteria = {})
        query_transactions(:put, '/transaction/refund', criteria)
      end

      def convert_transactions_to_decline(id)
        query_transactions(:put, '/transaction/convertToDecline', { id: id })
      end

      def convert_transactions_to_collections(id)
        query_transactions(:put, '/transaction/convertToCollections', { id: id })
      end

      def void_transaction(criteria = {})
        query_transactions(:put, '/transaction/void', criteria)
      end

      def void_purchase(id)
        query_transactions(:put, '/transaction/voidPurchase', { id: id })
      end

      def rerun_commission(criteria = {})
        query_transactions(:put, '/transaction/rerunCommission', criteria)
      end

      def mark_paid(id)
        query_transactions(:put, '/transaction/markPaid', { id: id })
      end

      def rerun_transaction(criteria = {})
        query_transactions(:post, '/transaction/rerun', criteria)
      end

      def write_off_transaction(id)
        query_transactions(:put, '/transaction/writeOff', { id: id })
      end

      def get_order(id)
        query_transactions(:get, '/transaction/order', { id: id })
      end

      def update_order(payload = {})
        query_transactions(:put, '/transaction/order', payload)
      end

      def resend_invoice(payload = {})
        query_transactions(:post, '/transaction/resendInvoice', payload)
      end

      def query_transactions(method, path, payload)
        query(method, path, payload)
      end
    end
  end
end
