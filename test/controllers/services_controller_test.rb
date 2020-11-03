require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get bikes" do
    get services_bikes_url
    assert_response :success
  end

  test "should get gear" do
    get services_gear_url
    assert_response :success
  end

  test "should get services" do
    get services_services_url
    assert_response :success
  end

end
