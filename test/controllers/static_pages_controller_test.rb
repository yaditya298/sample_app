require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def set up
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title" , "#{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title" , "#{@base_title}"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title" , "#{@base_title}"
  end
  
  test "should get contact" do
    get :about
    assert_response :success
    assert_select "title" , "#{@base_title}"
  end

end