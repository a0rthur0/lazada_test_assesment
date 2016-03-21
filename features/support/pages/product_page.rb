class ProductPage
  include PageObject

  h1 :product_title, xpath: '//div[@class="prod_header_title"]/h1'
  span :price_box, xpath: '//div[@class="prod_pricebox_price_final"]/span[@itemprop="price"]'
  button :add_to_cart_button, class: 'buy_btn'
  div :cart_page_button, class: 'headCart'
  div :cart_popup, class: 'ch-container'
  link :cart_popup_close_btn, class: 'nyroModalCloseButton'
  div :cart_popup_artifact, class: 'nyroModalBg'

  def
    get_product_name
    product_title.strip!
  end

  def get_product_price
    price_box
  end

  def click_add_to_cart
    wait_until {add_to_cart_button_element.visible?}
    add_to_cart_button
    wait_until {cart_popup_element.visible?}
    cart_popup_close_btn_element.click
  end

  def go_to_cart_page
    wait_until {!cart_popup_artifact_element.visible?}
    cart_page_button_element.click
  end
end