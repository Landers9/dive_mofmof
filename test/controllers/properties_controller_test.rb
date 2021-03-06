require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Propertie.count') do
      post properties_url, params: { property: { text: @property.text } }
    end

    assert_redirected_to property_url(Propertie.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { text: @property.text } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Propertie.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
