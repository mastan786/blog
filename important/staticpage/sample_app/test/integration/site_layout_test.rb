require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root, count: 2
    assert_select "a[href=?]", help
    assert_select "a[href=?]", about
    assert_select "a[href=?]", contact
    get signup_path
    assert_select "title", full_title("Sign up")
  end
end