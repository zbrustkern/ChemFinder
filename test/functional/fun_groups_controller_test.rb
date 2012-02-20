require 'test_helper'

class FunGroupsControllerTest < ActionController::TestCase
  setup do
    @fun_group = fun_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fun_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fun_group" do
    assert_difference('FunGroup.count') do
      post :create, fun_group: @fun_group.attributes
    end

    assert_redirected_to fun_group_path(assigns(:fun_group))
  end

  test "should show fun_group" do
    get :show, id: @fun_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fun_group
    assert_response :success
  end

  test "should update fun_group" do
    put :update, id: @fun_group, fun_group: @fun_group.attributes
    assert_redirected_to fun_group_path(assigns(:fun_group))
  end

  test "should destroy fun_group" do
    assert_difference('FunGroup.count', -1) do
      delete :destroy, id: @fun_group
    end

    assert_redirected_to fun_groups_path
  end
end
