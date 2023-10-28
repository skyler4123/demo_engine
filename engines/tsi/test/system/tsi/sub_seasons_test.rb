require "application_system_test_case"

module Tsi
  class SubSeasonsTest < ApplicationSystemTestCase
    setup do
      @sub_season = tsi_sub_seasons(:one)
    end

    test "visiting the index" do
      visit sub_seasons_url
      assert_selector "h1", text: "Sub seasons"
    end

    test "should create sub season" do
      visit sub_seasons_url
      click_on "New sub season"

      fill_in "Name", with: @sub_season.name
      fill_in "Season", with: @sub_season.season_id
      click_on "Create Sub season"

      assert_text "Sub season was successfully created"
      click_on "Back"
    end

    test "should update Sub season" do
      visit sub_season_url(@sub_season)
      click_on "Edit this sub season", match: :first

      fill_in "Name", with: @sub_season.name
      fill_in "Season", with: @sub_season.season_id
      click_on "Update Sub season"

      assert_text "Sub season was successfully updated"
      click_on "Back"
    end

    test "should destroy Sub season" do
      visit sub_season_url(@sub_season)
      click_on "Destroy this sub season", match: :first

      assert_text "Sub season was successfully destroyed"
    end
  end
end
