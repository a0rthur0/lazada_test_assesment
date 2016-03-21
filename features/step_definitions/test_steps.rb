Given(/^I open homepage$/) do
  visit HomePage
end

When(/^I click on category page$/) do
  on(HomePage).open_category_page
end

When(/^On category page I click on product$/) do
  on(CategoryPage).open_product_page
end

When(/^On product details page I remember product name and price$/) do
  @product_page_name = on(ProductPage).get_product_name
  @product_page_price = on(ProductPage).get_product_price
end

When(/^On product details page I click Add to Cart button$/) do
  on(ProductPage).click_add_to_cart
end

When(/^I click to My Cart button$/) do
  on(ProductPage).go_to_cart_page
end

Then(/^On cart page I compare product page and cart page$/) do
 on(CartPage).have_price?(@product_page_price) && on(CartPage).have_product_name?(@product_page_name)
end
