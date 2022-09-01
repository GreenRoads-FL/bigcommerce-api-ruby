# frozen_string_literal: true

# Customer form field values
# https://developer.bigcommerce.com/api-reference/store-management/customers-v3/customer-form-field-values/customerformfieldsget
require 'bigcommerce/resources/v3/option_value.rb'

module Bigcommerce
  module V3
    class CustomerFormFieldValue < Resource
      include Bigcommerce::ResourceActions.new uri: 'customers/form-field-values', disable: %i[create update destroy]
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :address_id
      property :customer_id

      property :name
      property :value
    end
  end
end
