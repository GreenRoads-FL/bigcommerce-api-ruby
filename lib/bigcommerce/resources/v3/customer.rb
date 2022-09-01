# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/customer_address.rb'
require 'bigcommerce/resources/v3/customer_attribute_value.rb'

module Bigcommerce
  module V3
    class Customer < Resource
      include Bigcommerce::ResourceActions.new uri: 'customers/%d'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :email
      property :first_name
      property :last_name

      property :company
      property :phone
      property :registration_ip_address
      property :notes
      property :tax_exempt_category
      property :customer_group_id
      property :date_modified
      property :tax_exempt_category
      property :date_created
      property :address_count
      property :attribute_count
      property :authentication
      property :addresses, coerce: Array[Bigcommerce::V3::CustomerAddress]
      property :attributes, coerce: Array[Bigcommerce::V3::CustomerAttributeValue]
      property :form_fields, coerce: Array
      property :store_credit_amounts
      property :accepts_product_review_abandoned_cart_emails
    end
  end
end
