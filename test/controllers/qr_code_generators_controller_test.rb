require 'test_helper'

class QrCodeGeneratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qr_code_generator = qr_code_generators(:one)
  end

  test "should get index" do
    get qr_code_generators_url
    assert_response :success
  end

  test "should get new" do
    get new_qr_code_generator_url
    assert_response :success
  end

  test "should create qr_code_generator" do
    assert_difference('QrCodeGenerator.count') do
      post qr_code_generators_url, params: { qr_code_generator: { text: @qr_code_generator.text } }
    end

    assert_redirected_to qr_code_generator_url(QrCodeGenerator.last)
  end

  test "should show qr_code_generator" do
    get qr_code_generator_url(@qr_code_generator)
    assert_response :success
  end

  test "should get edit" do
    get edit_qr_code_generator_url(@qr_code_generator)
    assert_response :success
  end

  test "should update qr_code_generator" do
    patch qr_code_generator_url(@qr_code_generator), params: { qr_code_generator: { text: @qr_code_generator.text } }
    assert_redirected_to qr_code_generator_url(@qr_code_generator)
  end

  test "should destroy qr_code_generator" do
    assert_difference('QrCodeGenerator.count', -1) do
      delete qr_code_generator_url(@qr_code_generator)
    end

    assert_redirected_to qr_code_generators_url
  end
end
