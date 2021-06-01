# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/option_value.rb'

module Bigcommerce
  module V3
    class CustomerAttributeValues < Resource
      include Bigcommerce::ResourceActions.new(uri: 'customers/attribute-values', disable: %i[create update destroy])
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :attribute_id
      property :customer_id

      property :id

      property :value
      property :attribute_value
    end
  end
end
