require 'test_helper'

class RoastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roasts_index_url
    assert_response :success
  end

  test "should get new" do
    get roasts_new_url
    assert_response :success
  end

end
