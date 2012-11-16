require 'test_helper'

class ScotchesControllerTest < ActionController::TestCase
  setup do
    @scotch = scotches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scotches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scotch" do
    assert_difference('Scotch.count') do
      post :create, scotch: { area: @scotch.area, address: @scotch.address, taste: @scotch.taste, name: @scotch.name, picture: @scotch.picture }
    end

    assert_redirected_to scotch_path(assigns(:scotch))
  end

  test "should show scotch" do
    get :show, id: @scotch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scotch
    assert_response :success
  end

  test "should update scotch" do
    put :update, id: @scotch, scotch: { area: @scotch.area, address: @scotch.address, taste: @scotch.taste, name: @scotch.name, picture: @scotch.picture }
    assert_redirected_to scotch_path(assigns(:scotch))
  end

  test "should destroy scotch" do
    assert_difference('Scotch.count', -1) do
      delete :destroy, id: @scotch
    end

    assert_redirected_to scotches_path
  end
end
