require 'test_helper'

class BallonfahrerTest < ActiveSupport::TestCase
  # test "the truth" do
  test "uebermich_in_kurzform_anzeigen" do
  	g = Ballonfahrer.create({:name => "sample", :uebermich =>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
  	assert_equal "Lorem...", g.kurzform_uebermich(8)
  	assert_equal "Lorem ipsum d...",g.kurzform_uebermich(16)
  	assert_equal "Lorem ipsum dolor...", g.kurzform_uebermich(20)
  end

  test "kurzform_uebermich should not change already kurzform_uebermich" do
    g = Ballonfahrer.create({:name => "sample", :uebermich => "Lorem ipsum"})
    assert_equal "Lorem ipsum", g.kurzform_uebermich(11)
    assert_equal "Lorem ipsum", g.kurzform_uebermich(26)
  end
  
  test "kurzform_uebermich default length should be 20" do
    g = Ballonfahrer.create({:name => "sample", :uebermich => "Lorem ipsum dolor sit amet"})
    assert_equal "Lorem ipsum dolor...", g.kurzform_uebermich
  end
  #   assert true
  # end
end
