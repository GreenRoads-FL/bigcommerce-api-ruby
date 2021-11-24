# frozen_string_literal: true

# Order Metafield

module Bigcommerce
  module V3
    class OrderMetafield < Resource
      include Bigcommerce::SubresourceActions.new(uri: 'orders/%d/metafields/%d')
      include Hashie::Extensions::DeepLocate
      include Hashie::Extensions::DeepFind

      property :id
      property :permission_set
      property :namespace
      property :key
      property :value
      property :description
      property :resource_type
      property :resource_id
      property :created_at
      property :updated_at
    end
  end
end
