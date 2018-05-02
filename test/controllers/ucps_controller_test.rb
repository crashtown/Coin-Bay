require 'test_helper'

class UcpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ucp = ucps(:one)
  end

  test "should get index" do
    get ucps_url
    assert_response :success
  end

  test "should get new" do
    get new_ucp_url
    assert_response :success
  end

  test "should create ucp" do
    assert_difference('Ucp.count') do
      post ucps_url, params: { ucp: {  } }
    end

    assert_redirected_to ucp_url(Ucp.last)
  end

  test "should show ucp" do
    get ucp_url(@ucp)
    assert_response :success
  end

  test "should get edit" do
    get edit_ucp_url(@ucp)
    assert_response :success
  end

  test "should update ucp" do
    patch ucp_url(@ucp), params: { ucp: {  } }
    assert_redirected_to ucp_url(@ucp)
  end

  test "should destroy ucp" do
    assert_difference('Ucp.count', -1) do
      delete ucp_url(@ucp)
    end

    assert_redirected_to ucps_url
  end
end
