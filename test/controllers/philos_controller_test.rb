require "test_helper"

class PhilosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get philos_index_url
    assert_response :success
  end

  test "should get show" do
    get philos_show_url
    assert_response :success
  end

  test "should get new" do
    get philos_new_url
    assert_response :success
  end

  test "should get edit" do
    get philos_edit_url
    assert_response :success
  end
end
