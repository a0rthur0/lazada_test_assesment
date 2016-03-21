class CategoryPage
  include PageObject
  divs :products, xpath: '//div[@data-component="product_list"]/div'

  def open_product_page
    index = rand(products_elements.length)
    products_elements[index].click
  end
end