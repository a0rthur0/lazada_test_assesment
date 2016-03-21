class CartPage
  include PageObject
  div :cartpage_product_title, class: 'productdescription'
  span :cartpage_price_box, class: 'sale-price'

  def have_product_name? product_name
    cartpage_product_title == product_name
  end

  def have_price? product_price
    cartpage_price_box.gsub(" VND",'').to_f == product_price.to_f
  end

end