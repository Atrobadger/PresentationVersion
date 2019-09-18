require 'test_helper'

class SitePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get site_pages_home_url
    assert_response :success
  end

  test "should get login" do
    get site_pages_login_url
    assert_response :success
  end

  test "should get profile" do
    get site_pages_profile_url
    assert_response :success
  end

  test "should get listings" do
    get site_pages_listings_url
    assert_response :success
  end

end
