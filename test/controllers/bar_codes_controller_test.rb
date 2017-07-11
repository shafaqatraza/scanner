require 'test_helper'

class BarCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bar_code = bar_codes(:one)
  end

  test "should get index" do
    get bar_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_bar_code_url
    assert_response :success
  end

  test "should create bar_code" do
    assert_difference('BarCode.count') do
      post bar_codes_url, params: { bar_code: { text: @bar_code.text } }
    end

    assert_redirected_to bar_code_url(BarCode.last)
  end

  test "should show bar_code" do
    get bar_code_url(@bar_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_bar_code_url(@bar_code)
    assert_response :success
  end

  test "should update bar_code" do
    patch bar_code_url(@bar_code), params: { bar_code: { text: @bar_code.text } }
    assert_redirected_to bar_code_url(@bar_code)
  end

  test "should destroy bar_code" do
    assert_difference('BarCode.count', -1) do
      delete bar_code_url(@bar_code)
    end

    assert_redirected_to bar_codes_url
  end
end
