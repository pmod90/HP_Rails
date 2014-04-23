require 'test_helper'

class MessesControllerTest < ActionController::TestCase
  setup do
    @mess = messes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mess" do
    assert_difference('Mess.count') do
      post :create, mess: { content: @mess.content, title: @mess.title }
    end

    assert_redirected_to mess_path(assigns(:mess))
  end

  test "should show mess" do
    get :show, id: @mess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mess
    assert_response :success
  end

  test "should update mess" do
    patch :update, id: @mess, mess: { content: @mess.content, title: @mess.title }
    assert_redirected_to mess_path(assigns(:mess))
  end

  test "should destroy mess" do
    assert_difference('Mess.count', -1) do
      delete :destroy, id: @mess
    end

    assert_redirected_to messes_path
  end
end
