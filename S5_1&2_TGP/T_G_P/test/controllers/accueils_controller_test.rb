require 'test_helper'

class AccueilsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accueils_index_url
    assert_response :success
  end

end
