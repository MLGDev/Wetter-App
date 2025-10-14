require "test_helper"

class AufgabesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aufgabe = aufgabes(:one)
  end

  test "should get index" do
    get aufgabes_url
    assert_response :success
  end

  test "should get new" do
    get new_aufgabe_url
    assert_response :success
  end

  test "should create aufgabe" do
    assert_difference("Aufgabe.count") do
      post aufgabes_url, params: { aufgabe: { aufgabe: @aufgabe.aufgabe, dringlichkeit: @aufgabe.dringlichkeit, schwierigkeit: @aufgabe.schwierigkeit } }
    end

    assert_redirected_to aufgabe_url(Aufgabe.last)
  end

  test "should show aufgabe" do
    get aufgabe_url(@aufgabe)
    assert_response :success
  end

  test "should get edit" do
    get edit_aufgabe_url(@aufgabe)
    assert_response :success
  end

  test "should update aufgabe" do
    patch aufgabe_url(@aufgabe), params: { aufgabe: { aufgabe: @aufgabe.aufgabe, dringlichkeit: @aufgabe.dringlichkeit, schwierigkeit: @aufgabe.schwierigkeit } }
    assert_redirected_to aufgabe_url(@aufgabe)
  end

  test "should destroy aufgabe" do
    assert_difference("Aufgabe.count", -1) do
      delete aufgabe_url(@aufgabe)
    end

    assert_redirected_to aufgabes_url
  end
end
