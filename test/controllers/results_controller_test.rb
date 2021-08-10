require "test_helper"

class ResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result = results(:one)
  end

  test "should get index" do
    get results_url, as: :json
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post results_url, params: { result: { female_player_id: @result.female_player_id, male_player_id: @result.male_player_id, schedule_id: @result.schedule_id } }, as: :json
    end

    assert_response 201
  end

  test "should show result" do
    get result_url(@result), as: :json
    assert_response :success
  end

  test "should update result" do
    patch result_url(@result), params: { result: { female_player_id: @result.female_player_id, male_player_id: @result.male_player_id, schedule_id: @result.schedule_id } }, as: :json
    assert_response 200
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete result_url(@result), as: :json
    end

    assert_response 204
  end
end
