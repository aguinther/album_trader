require 'rails_helper'

feature 'Create Album' do
  scenario 'Allow a logged in user to Create an Album' do
    @user = FactoryGirl.create(:user)

    visit login_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Login'

    visit new_album_path

    fill_in 'Title', with: 'Hemispheres'
    fill_in 'Artist', with: 'Rush'
    fill_in 'Release date', with: 1978

    click_button 'Create Album'

    expect(page).to have_content('Hemispheres')
    expect(page).to have_content('Rush')
    expect(page).to have_content('1978')
  end

  scenario 'Do not allow an unlogged user to Create an Album' do
    visit new_album_path

    expect(page).to have_content('You must be logged in to do that')
    expect(page).to have_content('login')
  end
end
