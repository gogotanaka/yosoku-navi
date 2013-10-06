require 'test_helper'

class ToushikomonsControllerTest < ActionController::TestCase
  setup do
    @toushikomon = toushikomons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toushikomons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toushikomon" do
    assert_difference('Toushikomon.count') do
      post :create, toushikomon: { adress: @toushikomon.adress, contents: @toushikomon.contents, kinsyo: @toushikomon.kinsyo, name: @toushikomon.name, owner: @toushikomon.owner, phone: @toushikomon.phone, site_name: @toushikomon.site_name, url: @toushikomon.url }
    end

    assert_redirected_to toushikomon_path(assigns(:toushikomon))
  end

  test "should show toushikomon" do
    get :show, id: @toushikomon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toushikomon
    assert_response :success
  end

  test "should update toushikomon" do
    put :update, id: @toushikomon, toushikomon: { adress: @toushikomon.adress, contents: @toushikomon.contents, kinsyo: @toushikomon.kinsyo, name: @toushikomon.name, owner: @toushikomon.owner, phone: @toushikomon.phone, site_name: @toushikomon.site_name, url: @toushikomon.url }
    assert_redirected_to toushikomon_path(assigns(:toushikomon))
  end

  test "should destroy toushikomon" do
    assert_difference('Toushikomon.count', -1) do
      delete :destroy, id: @toushikomon
    end

    assert_redirected_to toushikomons_path
  end
end
