#require 'test_helper'

class BallonfahrersSignupTest < ActionDispatch::IntegrationTest
  
  test "valid signup information" do
    get signup_path
    puts "sucesse"
    assert_difference 'Ballonfahrer.count', 1 do
    puts "sucesse2"
    follow_redirect! ballonfahrers_path, ballonfahrer: { 
                                            name:  "Example User",
                                            tel:"3214",
                                            geburtstag: "1234",
                                            email: "user@example.com",
                                            uebermich: "wahnsinns",
                                            password_digest:"password",
                                            password_confirmation: "password" }

    puts "sucesse3"
    end
    assert_template 'ballonfahrers/show'
    assert is_logged_in?
  end
end