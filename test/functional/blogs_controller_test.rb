require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
      post :create, blog: { describe: @blog.describe, image: @blog.image, in: @blog.in, month_in: @blog.month_in, out: @blog.out, title: @blog.title, url: @blog.url, week_in: @blog.week_in }
    end

    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should show blog" do
    get :show, id: @blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog
    assert_response :success
  end

  test "should update blog" do
    put :update, id: @blog, blog: { describe: @blog.describe, image: @blog.image, in: @blog.in, month_in: @blog.month_in, out: @blog.out, title: @blog.title, url: @blog.url, week_in: @blog.week_in }
    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete :destroy, id: @blog
    end

    assert_redirected_to blogs_path
  end
end
