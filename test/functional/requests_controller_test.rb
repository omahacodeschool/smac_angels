require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { after_photo_url: @request.after_photo_url, angel_id: @request.angel_id, anon_angel: @request.anon_angel, anon_req: @request.anon_req, before_photo_url: @request.before_photo_url, external_url: @request.external_url, obo: @request.obo, requester_id: @request.requester_id, ship_address: @request.ship_address, ship_city: @request.ship_city, ship_state: @request.ship_state, ship_zipcode: @request.ship_zipcode, story: @request.story }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    put :update, id: @request, request: { after_photo_url: @request.after_photo_url, angel_id: @request.angel_id, anon_angel: @request.anon_angel, anon_req: @request.anon_req, before_photo_url: @request.before_photo_url, external_url: @request.external_url, obo: @request.obo, requester_id: @request.requester_id, ship_address: @request.ship_address, ship_city: @request.ship_city, ship_state: @request.ship_state, ship_zipcode: @request.ship_zipcode, story: @request.story }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
