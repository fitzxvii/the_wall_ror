require 'rails_helper'
feature "User logs out" do
    before(:each) do
        visit new_user_path
        fill_in "username", with: "fitzxvii"
        click_button "Login"
    end

    scenario "Redirecting to login page" do
        click_on "Log Out"
        expect(page).to have_current_path(new_user_path)
    end

    scenario "Sessions will be cleared" do
        click_on "Log Out"
        visit wall_path
        expect(page).to have_current_path(new_user_path)
    end
end