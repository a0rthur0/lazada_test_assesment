class HomePage
  include PageObject

  page_url('http://lazada.vn/')

  links :categories, class: 'split'
  div(:popup_ad_block, :class => 'popup-block')
  link(:close_popup_ad_block, :class => 'popup-banner__button-close')

  def open_category_page
    index = rand(categories_elements.length)
    categories_elements[index].click
  end

end