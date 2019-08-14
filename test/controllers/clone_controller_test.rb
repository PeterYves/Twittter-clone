require 'test_helper'

class CloneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clone_index_url
    assert_response :success
  end

end
