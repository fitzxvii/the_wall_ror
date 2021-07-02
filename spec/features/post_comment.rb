require 'rails_helper'
feature "post comment" do
    before(:each) do
        visit new_user_path
        fill_in "username", with: "fitzxvii"
        click_button "Login"
        fill_in "message", with: "Sample messagse"
        click_button "Post Message"
    end

    scenario "will add comment if data is valid" do
        fill_in "comment", with: "Hello there"
        click_button "Post Comment"
        expect(page).to have_content("Hello there")
    end

    scenario "will display errors if content field is empty" do
        click_button "Post Comment"
        expect(page).to have_content("Comment must be minimum of 5 characters.")
    end
end