require "application_system_test_case"

class TransportSystemsTest < ApplicationSystemTestCase
  setup do
    @transport_system = transport_systems(:one)
  end

  test "visiting the index" do
    visit transport_systems_url
    assert_selector "h1", text: "Transport Systems"
  end

  test "creating a Transport system" do
    visit transport_systems_url
    click_on "New Transport System"

    fill_in "Model", with: @transport_system.model
    fill_in "Name", with: @transport_system.name
    click_on "Create Transport system"

    assert_text "Transport system was successfully created"
    click_on "Back"
  end

  test "updating a Transport system" do
    visit transport_systems_url
    click_on "Edit", match: :first

    fill_in "Model", with: @transport_system.model
    fill_in "Name", with: @transport_system.name
    click_on "Update Transport system"

    assert_text "Transport system was successfully updated"
    click_on "Back"
  end

  test "destroying a Transport system" do
    visit transport_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transport system was successfully destroyed"
  end
end
