require 'test_helper'

class BallonfahrersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ballonfahrer = ballonfahrers(:test)
  end

  test "should get index" do
    get ballonfahrers_url
    assert_response :success
  end

  test "should get new" do
    get new_ballonfahrer_url
    assert_response :success
  end

  test "should create ballonfahrer" do
    assert_difference('Ballonfahrer.count') do

    post ballonfahrers_url, params: { ballonfahrer: { name: @ballonfahrer.name, tel: @ballonfahrer.tel, geburtstag: @ballonfahrer.geburtstag , uebermich: @ballonfahrer.uebermich, email: @ballonfahrer.email, password: @ballonfahrer.password_digest, password_confirmation: @ballonfahrer.password_digest} }
    end

    assert_redirected_to ballonfahrer_url(Ballonfahrer.last)
  end

  test "should show ballonfahrer" do
    get ballonfahrer_url(@ballonfahrer)
    assert_response :success
  end

  test "should get edit" do
    get edit_ballonfahrer_url(@ballonfahrer)
    assert_response :success
  end

  test "should update ballonfahrer" do
    patch ballonfahrer_url(@ballonfahrer), params: { ballonfahrer: { geburtstag: @ballonfahrer.geburtstag, name: @ballonfahrer.name, tel: @ballonfahrer.tel, uebermich: @ballonfahrer.uebermich} }
    assert_redirected_to ballonfahrer_url(@ballonfahrer)
  end

  test "should destroy ballonfahrer" do
    assert_difference('Ballonfahrer.count', -1) do
      delete ballonfahrer_url(@ballonfahrer)
    end

    assert_redirected_to ballonfahrers_url
  end
end
