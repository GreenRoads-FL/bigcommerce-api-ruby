module Bigcommerce
  module V3
    class Cart < Resource
      include Bigcommerce::ResourceActions.new uri: 'carts/%s'

      class LineItem < Resource
        property :id
        property :sku
        property :name
        property :quantity
        property :list_price
        property :extended_list_price
        property :image_url
      end

      class CustomItem < LineItem; end

      class DigitalItem < LineItem
        property :product_id
        property :variant_id
        property :url
        property :is_taxable # in Checkout
        property :taxable # in Cart
        property :discounts
        property :discount_amount
        property :coupons
        property :coupon_amount
        property :original_price
        property :sale_price
        property :extended_sale_price
        property :is_require_shipping
        property :is_mutable
        property :parent_id
      end

      class PhysicalItem < DigitalItem
        property :gift_wrapping
        property :option_selections
      end

      class GiftCertificateItem < Resource
        property :id
        property :name
        property :theme
        property :amount
        property :quantity
        property :sender
        property :recipient
        property :taxable
        property :message
      end

      class LineItems < Resource
        property :physical_items, coerce: Array[PhysicalItem]
        property :digital_items, coerce: Array[DigitalItem]
        property :gift_certificates, coerce: Array[GiftCertificateItem]
        property :custom_items, coerce: Array[CustomItem]
      end

      property :id
      property :customer_id
      property :email
      property :tax_included
      property :base_amount
      property :discount_amount
      property :cart_amount
      property :line_items, coerce: LineItems
      property :coupons
      property :discounts
      property :created_time
      property :updated_time
      property :redirect_urls
      property :channel_id
    end
  end
end

