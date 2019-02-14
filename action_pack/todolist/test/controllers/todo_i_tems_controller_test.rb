require 'test_helper'

class TodoITemsControllerTest < ActionController::TestCase
  setup do
    @todo_i_tem = todo_i_tems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_i_tems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_i_tem" do
    assert_difference('TodoITem.count') do
      post :create, todo_i_tem: { completed: @todo_i_tem.completed, description: @todo_i_tem.description, due_date: @todo_i_tem.due_date, title: @todo_i_tem.title }
    end

    assert_redirected_to todo_i_tem_path(assigns(:todo_i_tem))
  end

  test "should show todo_i_tem" do
    get :show, id: @todo_i_tem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todo_i_tem
    assert_response :success
  end

  test "should update todo_i_tem" do
    patch :update, id: @todo_i_tem, todo_i_tem: { completed: @todo_i_tem.completed, description: @todo_i_tem.description, due_date: @todo_i_tem.due_date, title: @todo_i_tem.title }
    assert_redirected_to todo_i_tem_path(assigns(:todo_i_tem))
  end

  test "should destroy todo_i_tem" do
    assert_difference('TodoITem.count', -1) do
      delete :destroy, id: @todo_i_tem
    end

    assert_redirected_to todo_i_tems_path
  end
end
