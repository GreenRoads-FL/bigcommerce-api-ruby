module Bigcommerce
  module V3
    module Promotions
      class Code < Resource
        include Bigcommerce::SubresourceActions.new(uri: 'promotions/%d/codes/%d')

        property :code, coerce: String
        property :max_uses, coerce: Integer
        property :max_uses_per_customer, coerce: Integer

        property :id, coerce: String
        property :current_uses, coerce: Integer
        property :created, coerce: String
      end
    end
  end
end
