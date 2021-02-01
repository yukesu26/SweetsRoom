require 'test_helper'

class RecetteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recette_index_url
    assert_response :success
  end

end
