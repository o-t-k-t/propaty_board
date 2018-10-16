require 'test_helper'

class PropatiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propaty = propaties(:one)
  end

  test "should get index" do
    get propaties_url
    assert_response :success
  end

  test "should get new" do
    get new_propaty_url
    assert_response :success
  end

  test "should create propaty" do
    assert_difference('Propaty.count') do
      post propaties_url, params: { propaty: { address: @propaty.address, age: @propaty.age, name: @propaty.name, note: @propaty.note, rent: @propaty.rent } }
    end

    assert_redirected_to propaty_url(Propaty.last)
  end

  test "should show propaty" do
    get propaty_url(@propaty)
    assert_response :success
  end

  test "should get edit" do
    get edit_propaty_url(@propaty)
    assert_response :success
  end

  test "should update propaty" do
    patch propaty_url(@propaty), params: { propaty: { address: @propaty.address, age: @propaty.age, name: @propaty.name, note: @propaty.note, rent: @propaty.rent } }
    assert_redirected_to propaty_url(@propaty)
  end

  test "should destroy propaty" do
    assert_difference('Propaty.count', -1) do
      delete propaty_url(@propaty)
    end

    assert_redirected_to propaties_url
  end
end
