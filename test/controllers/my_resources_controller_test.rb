require 'test_helper'

class MyResourcesControllerTest < ActionController::TestCase
  setup do
    @my_resource = my_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_resource" do
    assert_difference('MyResource.count') do
      post :create, my_resource: { fields: @my_resource.fields, my_application_id: @my_resource.my_application_id, name: @my_resource.name }
    end

    assert_redirected_to my_resource_path(assigns(:my_resource))
  end

  test "should show my_resource" do
    get :show, id: @my_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_resource
    assert_response :success
  end

  test "should update my_resource" do
    patch :update, id: @my_resource, my_resource: { fields: @my_resource.fields, my_application_id: @my_resource.my_application_id, name: @my_resource.name }
    assert_redirected_to my_resource_path(assigns(:my_resource))
  end

  test "should destroy my_resource" do
    assert_difference('MyResource.count', -1) do
      delete :destroy, id: @my_resource
    end

    assert_redirected_to my_resources_path
  end
end
