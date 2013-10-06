require 'test_helper'

class BeginnersControllerTest < ActionController::TestCase
  setup do
    @beginner = beginners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beginners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beginner" do
    assert_difference('Beginner.count') do
      post :create, beginner: { contents: @beginner.contents, title: @beginner.title }
    end

    assert_redirected_to beginner_path(assigns(:beginner))
  end

  test "should show beginner" do
    get :show, id: @beginner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beginner
    assert_response :success
  end

  test "should update beginner" do
    put :update, id: @beginner, beginner: { contents: @beginner.contents, title: @beginner.title }
    assert_redirected_to beginner_path(assigns(:beginner))
  end

  test "should destroy beginner" do
    assert_difference('Beginner.count', -1) do
      delete :destroy, id: @beginner
    end

    assert_redirected_to beginners_path
  end
end
