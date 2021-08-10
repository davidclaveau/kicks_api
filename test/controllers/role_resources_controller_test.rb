require "test_helper"

class RoleResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @role_resource = role_resources(:one)
  end

  test "should get index" do
    get role_resources_url, as: :json
    assert_response :success
  end

  test "should create role_resource" do
    assert_difference('RoleResource.count') do
      post role_resources_url, params: { role_resource: { resource_id: @role_resource.resource_id, role: @role_resource.role } }, as: :json
    end

    assert_response 201
  end

  test "should show role_resource" do
    get role_resource_url(@role_resource), as: :json
    assert_response :success
  end

  test "should update role_resource" do
    patch role_resource_url(@role_resource), params: { role_resource: { resource_id: @role_resource.resource_id, role: @role_resource.role } }, as: :json
    assert_response 200
  end

  test "should destroy role_resource" do
    assert_difference('RoleResource.count', -1) do
      delete role_resource_url(@role_resource), as: :json
    end

    assert_response 204
  end
end
