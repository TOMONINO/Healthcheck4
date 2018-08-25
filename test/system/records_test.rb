require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Bmi", with: @record.bmi
    fill_in "Compareweight", with: @record.compareweight
    fill_in "Day", with: @record.day
    fill_in "Diary", with: @record.diary
    fill_in "Height", with: @record.height
    fill_in "Highblood", with: @record.highblood
    fill_in "Lowblood", with: @record.lowblood
    fill_in "Picture", with: @record.picture
    fill_in "Targetbmi", with: @record.targetbmi
    fill_in "Targetweight", with: @record.targetweight
    fill_in "Weight", with: @record.weight
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Bmi", with: @record.bmi
    fill_in "Compareweight", with: @record.compareweight
    fill_in "Day", with: @record.day
    fill_in "Diary", with: @record.diary
    fill_in "Height", with: @record.height
    fill_in "Highblood", with: @record.highblood
    fill_in "Lowblood", with: @record.lowblood
    fill_in "Picture", with: @record.picture
    fill_in "Targetbmi", with: @record.targetbmi
    fill_in "Targetweight", with: @record.targetweight
    fill_in "Weight", with: @record.weight
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
