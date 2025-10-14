require "application_system_test_case"

class AufgabesTest < ApplicationSystemTestCase
  setup do
    @aufgabe = aufgabes(:one)
  end

  test "visiting the index" do
    visit aufgabes_url
    assert_selector "h1", text: "Aufgabes"
  end

  test "should create aufgabe" do
    visit aufgabes_url
    click_on "New aufgabe"

    fill_in "Aufgabe", with: @aufgabe.aufgabe
    fill_in "Dringlichkeit", with: @aufgabe.dringlichkeit
    fill_in "Schwierigkeit", with: @aufgabe.schwierigkeit
    click_on "Create Aufgabe"

    assert_text "Aufgabe was successfully created"
    click_on "Back"
  end

  test "should update Aufgabe" do
    visit aufgabe_url(@aufgabe)
    click_on "Edit this aufgabe", match: :first

    fill_in "Aufgabe", with: @aufgabe.aufgabe
    fill_in "Dringlichkeit", with: @aufgabe.dringlichkeit
    fill_in "Schwierigkeit", with: @aufgabe.schwierigkeit
    click_on "Update Aufgabe"

    assert_text "Aufgabe was successfully updated"
    click_on "Back"
  end

  test "should destroy Aufgabe" do
    visit aufgabe_url(@aufgabe)
    click_on "Destroy this aufgabe", match: :first

    assert_text "Aufgabe was successfully destroyed"
  end
end
