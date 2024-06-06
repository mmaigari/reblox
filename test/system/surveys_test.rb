require "application_system_test_case"

class SurveysTest < ApplicationSystemTestCase
  setup do
    @survey = surveys(:one)
  end

  test "visiting the index" do
    visit surveys_url
    assert_selector "h1", text: "Surveys"
  end

  test "should create survey" do
    visit surveys_url
    click_on "New survey"

    fill_in "Age", with: @survey.age
    fill_in "Challenge", with: @survey.challenge
    fill_in "Comfort", with: @survey.comfort
    fill_in "Email", with: @survey.email
    fill_in "Goals", with: @survey.goals
    fill_in "Ifso", with: @survey.ifso
    check "Invested" if @survey.invested
    fill_in "Liquidity", with: @survey.liquidity
    fill_in "Location", with: @survey.location
    check "Ready" if @survey.ready
    fill_in "Solution", with: @survey.solution
    fill_in "Solution desc", with: @survey.solution_desc
    click_on "Create Survey"

    assert_text "Survey was successfully created"
    click_on "Back"
  end

  test "should update Survey" do
    visit survey_url(@survey)
    click_on "Edit this survey", match: :first

    fill_in "Age", with: @survey.age
    fill_in "Challenge", with: @survey.challenge
    fill_in "Comfort", with: @survey.comfort
    fill_in "Email", with: @survey.email
    fill_in "Goals", with: @survey.goals
    fill_in "Ifso", with: @survey.ifso
    check "Invested" if @survey.invested
    fill_in "Liquidity", with: @survey.liquidity
    fill_in "Location", with: @survey.location
    check "Ready" if @survey.ready
    fill_in "Solution", with: @survey.solution
    fill_in "Solution desc", with: @survey.solution_desc
    click_on "Update Survey"

    assert_text "Survey was successfully updated"
    click_on "Back"
  end

  test "should destroy Survey" do
    visit survey_url(@survey)
    click_on "Destroy this survey", match: :first

    assert_text "Survey was successfully destroyed"
  end
end
