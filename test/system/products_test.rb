# test/system/products_test.rb
require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # "/"
    assert_selector "h1", text: "Awesome Products"
  end

  test "counting correct number of products" do
    visit root_url # "/"
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:george) #login_as is coming from Warden::TestHelpers
    visit "/products/new"
    # save_screenshot

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"

    click_on "Create Product"
    # save_screenshot

    assert_text "Change your life: Learn to code"
  end

end
