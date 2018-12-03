require 'rails_helper.rb'

feature"User adds a movie" do
    scenario "User successfully navigates to the New Movies page from the Listing Movies page" do
    visit movies_path
    expect(page).to have_content("Listing movies")
    click_link "New Movie"
    expect(page).to have_content("New Movie")
    expect(page).to have_field("Title")
    expect(page).to have_field("Synopsis")
    end
    
    scenario "User successfully creates a new moive" do
    visit new_movie_path
    expect(page).to have_content("New Movie")
    fill_in "Title", with: "Test Title"
    fill_in "Synopsis", with: "Test Synopsis"
    click_button "Create Movie"
    expect(page).to have_content("Test Title")
    expect(page).to have_content("Test Synopsis")
    end
end