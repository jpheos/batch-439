require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit products_url

    assert_selector "h2", text: "Skello"
    assert_selector ".card-product", count: Product.count
  end

  test "create a new product" do
    visit new_product_path
    fill_in 'Name', with: 'My awesome product'
    fill_in 'Tagline', with: 'Your future will be nice'
    click_button 'Create Product'

    assert_selector "h1", text: "My awesome product"
    assert_text "Your future will be nice"
  end
end
