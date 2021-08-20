require 'test_helper'

class Product1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product1 = product1s(:one)
  end

  test "should get index" do
    get product1s_url
    assert_response :success
  end

  test "should get new" do
    get new_product1_url
    assert_response :success
  end

  test "should create product1" do
    assert_difference('Product1.count') do
      post product1s_url, params: { product1: { Name: @product1.Name, Price: @product1.Price } }
    end

    assert_redirected_to product1_url(Product1.last)
  end

  test "should show product1" do
    get product1_url(@product1)
    assert_response :success
  end

  test "should get edit" do
    get edit_product1_url(@product1)
    assert_response :success
  end

  test "should update product1" do
    patch product1_url(@product1), params: { product1: { Name: @product1.Name, Price: @product1.Price } }
    assert_redirected_to product1_url(@product1)
  end

  test "should destroy product1" do
    assert_difference('Product1.count', -1) do
      delete product1_url(@product1)
    end

    assert_redirected_to product1s_url
  end
end
