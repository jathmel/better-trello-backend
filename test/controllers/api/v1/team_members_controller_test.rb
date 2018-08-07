require 'test_helper'

class Api::V1::TeamMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_team_members_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_team_members_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_team_members_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_team_members_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_team_members_delete_url
    assert_response :success
  end

end
