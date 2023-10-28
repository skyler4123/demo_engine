require "test_helper"

module Tsi
  class SubSeasonsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @sub_season = tsi_sub_seasons(:one)
    end

    test "should get index" do
      get sub_seasons_url
      assert_response :success
    end

    test "should get new" do
      get new_sub_season_url
      assert_response :success
    end

    test "should create sub_season" do
      assert_difference("SubSeason.count") do
        post sub_seasons_url, params: { sub_season: { name: @sub_season.name, season_id: @sub_season.season_id } }
      end

      assert_redirected_to sub_season_url(SubSeason.last)
    end

    test "should show sub_season" do
      get sub_season_url(@sub_season)
      assert_response :success
    end

    test "should get edit" do
      get edit_sub_season_url(@sub_season)
      assert_response :success
    end

    test "should update sub_season" do
      patch sub_season_url(@sub_season), params: { sub_season: { name: @sub_season.name, season_id: @sub_season.season_id } }
      assert_redirected_to sub_season_url(@sub_season)
    end

    test "should destroy sub_season" do
      assert_difference("SubSeason.count", -1) do
        delete sub_season_url(@sub_season)
      end

      assert_redirected_to sub_seasons_url
    end
  end
end
