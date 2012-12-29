require 'test_helper'

class TasksadminsControllerTest < ActionController::TestCase
  setup do
    @tasksadmin = tasksadmins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasksadmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasksadmin" do
    assert_difference('Tasksadmin.count') do
      post :create, tasksadmin: { admin_mail: @tasksadmin.admin_mail, done: @tasksadmin.done, task: @tasksadmin.task, worker_mail: @tasksadmin.worker_mail }
    end

    assert_redirected_to tasksadmin_path(assigns(:tasksadmin))
  end

  test "should show tasksadmin" do
    get :show, id: @tasksadmin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasksadmin
    assert_response :success
  end

  test "should update tasksadmin" do
    put :update, id: @tasksadmin, tasksadmin: { admin_mail: @tasksadmin.admin_mail, done: @tasksadmin.done, task: @tasksadmin.task, worker_mail: @tasksadmin.worker_mail }
    assert_redirected_to tasksadmin_path(assigns(:tasksadmin))
  end

  test "should destroy tasksadmin" do
    assert_difference('Tasksadmin.count', -1) do
      delete :destroy, id: @tasksadmin
    end

    assert_redirected_to tasksadmins_path
  end
end
