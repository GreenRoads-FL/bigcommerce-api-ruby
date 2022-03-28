module Bigcommerce
  module V3
    class EmailTemplate < Resource
      include Bigcommerce::ResourceActions.new uri: 'marketing/email-templates/%s'

      property :type_id
      property :subject
      property :body
      property :translations, coerce: Array
    end
  end
end