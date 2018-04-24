require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get favorites" do
    get pages_favorites_url
    assert_response :success
  end
  test "should get my_listings" do
    get my_listings_favorites_url
    assert_response :success
  end

end
