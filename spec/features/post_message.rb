require 'rails_helper'
feature "Post message" do
    before(:each) do
        visit new_user_path
        fill_in "username", with: "fitzxvii"
        click_button "Login"
    end

    scenario "if data is valid" do
        fill_in "message", with: "Sample message"
        click_button "Post Message"
        expect(page).to have_content("Sample message")
    end

    scenario "displays errors if message is too short" do
        fill_in "message", with: "short"
        click_button "Post Message"
        expect(page).to have_content("Message must be minimum of 10 characters.")
    end
end