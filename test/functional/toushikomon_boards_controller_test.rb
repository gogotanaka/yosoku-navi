require 'test_helper'

class ToushikomonBoardsControllerTest < ActionController::TestCase
  setup do
    @toushikomon_board = toushikomon_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toushikomon_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toushikomon_board" do
    assert_difference('ToushikomonBoard.count') do
      post :create, toushikomon_board: { title: @toushikomon_board.title, toushikomon_id: @toushikomon_board.toushikomon_id }
    end

    assert_redirected_to toushikomon_board_path(assigns(:toushikomon_board))
  end

  test "should show toushikomon_board" do
    get :show, id: @toushikomon_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toushikomon_board
    assert_response :success
  end

  test "should update toushikomon_board" do
    put :update, id: @toushikomon_board, toushikomon_board: { title: @toushikomon_board.title, toushikomon_id: @toushikomon_board.toushikomon_id }
    assert_redirected_to toushikomon_board_path(assigns(:toushikomon_board))
  end

  test "should destroy toushikomon_board" do
    assert_difference('ToushikomonBoard.count', -1) do
      delete :destroy, id: @toushikomon_board
    end

    assert_redirected_to toushikomon_boards_path
  end
end
