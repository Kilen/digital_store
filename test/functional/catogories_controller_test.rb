require 'test_helper'

class CatogoriesControllerTest < ActionController::TestCase
  setup do
    @catogory = catogories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catogories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catogory" do
    assert_difference('Catogory.count') do
      post :create, :catogory => @catogory.attributes
    end

    assert_redirected_to catogory_path(assigns(:catogory))
  end

  test "should show catogory" do
    get :show, :id => @catogory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @catogory
    assert_response :success
  end

  test "should update catogory" do
    put :update, :id => @catogory, :catogory => @catogory.attributes
    assert_redirected_to catogory_path(assigns(:catogory))
  end

  test "should destroy catogory" do
    assert_difference('Catogory.count', -1) do
      delete :destroy, :id => @catogory
    end

    assert_redirected_to catogories_path
  end
end
