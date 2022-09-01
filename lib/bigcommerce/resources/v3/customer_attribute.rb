# frozen_string_literal: true

# Product
# Catalog of saleable items in the store.
# https://developer.bigcommerce.com/api/stores/v3/products
require 'bigcommerce/resources/v3/option_value.rb'

module Bigcommerce
  module V3
    class CustomerAttribute < Resource
      include Bigcommerce::ResourceActions.new uri: 'customers/attributes'
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id

      property :name
      property :type
      property :date_created
      property :date_modified
    end
  end
end
