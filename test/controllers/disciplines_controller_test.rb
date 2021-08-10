require "test_helper"

class DisciplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline = disciplines(:one)
  end

  test "should get index" do
    get disciplines_url, as: :json
    assert_response :success
  end

  test "should create discipline" do
    assert_difference('Discipline.count') do
      post disciplines_url, params: { discipline: { action: @discipline.action, reason: @discipline.reason, user_id: @discipline.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show discipline" do
    get discipline_url(@discipline), as: :json
    assert_response :success
  end

  test "should update discipline" do
    patch discipline_url(@discipline), params: { discipline: { action: @discipline.action, reason: @discipline.reason, user_id: @discipline.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy discipline" do
    assert_difference('Discipline.count', -1) do
      delete discipline_url(@discipline), as: :json
    end

    assert_response 204
  end
end
