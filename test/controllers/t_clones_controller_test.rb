require 'test_helper'

class TClonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_clone = t_clones(:one)
  end

  test "should get index" do
    get t_clones_url
    assert_response :success
  end

  test "should get new" do
    get new_t_clone_url
    assert_response :success
  end

  test "should create t_clone" do
    assert_difference('TClone.count') do
      post t_clones_url, params: { t_clone: { content: @t_clone.content } }
    end

    assert_redirected_to t_clone_url(TClone.last)
  end

  test "should show t_clone" do
    get t_clone_url(@t_clone)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_clone_url(@t_clone)
    assert_response :success
  end

  test "should update t_clone" do
    patch t_clone_url(@t_clone), params: { t_clone: { content: @t_clone.content } }
    assert_redirected_to t_clone_url(@t_clone)
  end

  test "should destroy t_clone" do
    assert_difference('TClone.count', -1) do
      delete t_clone_url(@t_clone)
    end

    assert_redirected_to t_clones_url
  end
end
