require 'test_helper'

class BallonfahrersLoginTest < ActionDispatch::IntegrationTest

    def setup
    @ballonfahrer = ballonfahrers(:Michi)
    end


  test "login with valid information followed by logout" do
    get login_path
    session[:ballonfahrer_id] = @ballonfahrer_id
    get login_path
    assert_response :success
    post login_path, :session => {email: @ballonfahrer.email, password: 'password'} 
    assert is_logged_in?
    assert_redirected_to @ballonfahrer
    follow_redirect!
    assert_template 'ballonfahrers/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", ballonfahrer_path(@ballonfahrer)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", user_path(@user), count: 0

  end


  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, :session => {email: "test@test.de", password: "1234" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end