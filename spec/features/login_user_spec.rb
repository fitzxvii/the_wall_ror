require 'rails_helper'
feature "User logs in" do 
    scenario "will be redirected if visiting wall before login" do
        visit wall_path
        expect(page).to have_current_path(new_user_path)
    end

    before(:each) do
        visit new_user_path
    end

    scenario "will receive errors if username is at least 5 characters long" do
        fill_in "username", with: "Fitz"
        click_button "Login"
        expect(page).to have_content "Username must be minimum of 6 characters."
    end

    scenario "will create user with valid information" do
        fill_in "username", with: "fitzxvii"
        click_button "Login"
        expect(page).to have_content "Welcome, fitzxvii!"
    end

    scenario "will log in if user information exists" do
        fill_in "username", with: "fitzxvii"
        click_button "Login"
        visit logout_path
        fill_in "username", with: "fitzxvii"
        click_button "Login"
        expect(page).to have_content "Welcome, fitzxvii!"
    end
end