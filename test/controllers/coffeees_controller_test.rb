require 'test_helper'

class CoffeeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffeee = coffeees(:one)
  end

  test "should get index" do
    get coffeees_url
    assert_response :success
  end

  test "should get new" do
    get new_coffeee_url
    assert_response :success
  end

  test "should create coffeee" do
    assert_difference('Coffeee.count') do
      post coffeees_url, params: { coffeee: { desctrption: @coffeee.desctrption, home: @coffeee.home, img: @coffeee.img, name: @coffeee.name, something: @coffeee.something, type: @coffeee.type } }
    end

    assert_redirected_to coffeee_url(Coffeee.last)
  end

  test "should show coffeee" do
    get coffeee_url(@coffeee)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffeee_url(@coffeee)
    assert_response :success
  end

  test "should update coffeee" do
    patch coffeee_url(@coffeee), params: { coffeee: { desctrption: @coffeee.desctrption, home: @coffeee.home, img: @coffeee.img, name: @coffeee.name, something: @coffeee.something, type: @coffeee.type } }
    assert_redirected_to coffeee_url(@coffeee)
  end

  test "should destroy coffeee" do
    assert_difference('Coffeee.count', -1) do
      delete coffeee_url(@coffeee)
    end

    assert_redirected_to coffeees_url
  end
end
