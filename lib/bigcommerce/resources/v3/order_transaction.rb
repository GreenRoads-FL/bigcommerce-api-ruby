# frozen_string_literal: true

# Order Metafield

module Bigcommerce
  module V3
    class OrderTransaction < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'orders/%d/transactions/%d')
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :event, coerce: String
      property :method, coerce: String
      property :amount
      property :currency, coerce: String
      property :gateway, coerce: String
      property :gateway_transaction_id, coerce: String
      property :date_created, coerce: String
      property :test
      property :status, coerce: String
      property :fraud_review
      property :reference_transaction_id
      property :offline
      property :custom
      property :payment_method_id

      property :id
      property :order_id
      property :payment_instrument_token
      property :avs_result
      property :cvv_result
      property :credit_card
      property :gift_certificate
      property :store_credit
    end
  end
end
