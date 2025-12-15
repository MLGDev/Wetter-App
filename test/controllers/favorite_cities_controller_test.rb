require "test_helper"

class FavoriteCitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_cities_index_url
    assert_response :success
  end
end
