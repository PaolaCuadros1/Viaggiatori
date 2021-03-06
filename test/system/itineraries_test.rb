require "application_system_test_case"

class ItinerariesTest < ApplicationSystemTestCase
  setup do
    @itinerary = itineraries(:one)
  end

  test "visiting the index" do
    visit itineraries_url
    assert_selector "h1", text: "Itineraries"
  end

  test "creating a Itinerary" do
    visit itineraries_url
    click_on "New Itinerary"

    fill_in "Description", with: @itinerary.description
    fill_in "Discount", with: @itinerary.discount
    fill_in "Discount date", with: @itinerary.discount_date
    fill_in "Image", with: @itinerary.image
    fill_in "Place", with: @itinerary.place
    fill_in "Title", with: @itinerary.title
    fill_in "Value", with: @itinerary.value
    click_on "Create Itinerary"

    assert_text "Itinerary was successfully created"
    click_on "Back"
  end

  test "updating a Itinerary" do
    visit itineraries_url
    click_on "Edit", match: :first

    fill_in "Description", with: @itinerary.description
    fill_in "Discount", with: @itinerary.discount
    fill_in "Discount date", with: @itinerary.discount_date
    fill_in "Image", with: @itinerary.image
    fill_in "Place", with: @itinerary.place
    fill_in "Title", with: @itinerary.title
    fill_in "Value", with: @itinerary.value
    click_on "Update Itinerary"

    assert_text "Itinerary was successfully updated"
    click_on "Back"
  end

  test "destroying a Itinerary" do
    visit itineraries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itinerary was successfully destroyed"
  end
end
