require 'test_helper'

class SockmonkeysControllerTest < ActionController::TestCase
  setup do
    @sockmonkey = sockmonkeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sockmonkeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sockmonkey" do
    assert_difference('Sockmonkey.count') do
      post :create, sockmonkey: { cancertype: @sockmonkey.cancertype, description: @sockmonkey.description, favcolor: @sockmonkey.favcolor, image_url: @sockmonkey.image_url, name: @sockmonkey.name }
    end

    assert_redirected_to sockmonkey_path(assigns(:sockmonkey))
  end

  test "should show sockmonkey" do
    get :show, id: @sockmonkey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sockmonkey
    assert_response :success
  end

  test "should update sockmonkey" do
    put :update, id: @sockmonkey, sockmonkey: { cancertype: @sockmonkey.cancertype, description: @sockmonkey.description, favcolor: @sockmonkey.favcolor, image_url: @sockmonkey.image_url, name: @sockmonkey.name }
    assert_redirected_to sockmonkey_path(assigns(:sockmonkey))
  end

  test "should destroy sockmonkey" do
    assert_difference('Sockmonkey.count', -1) do
      delete :destroy, id: @sockmonkey
    end

    assert_redirected_to sockmonkeys_path
  end
end
