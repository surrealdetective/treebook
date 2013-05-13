require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login routes to login page" do
		get '/login'
		assert_response :success		
	end
	test "that /logout routes to logout page" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'		
	end
	test "that /register routes to register page" do
		get '/register'
		assert_response :success		
	end
	test "that a profile page works" do
    	get '/danau'
    	assert_response :success
  	end
end
