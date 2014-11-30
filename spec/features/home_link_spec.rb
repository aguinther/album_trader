require 'rails_helper'

feature 'Home Links' do
  scenario 'Home Page' do
    visit '/'

    expect(page).to have_link('Home')

    click_link 'Home'

    expect(page).to have_text('Welcome')
  end

  scenario 'Login Page' do
    visit login_path

    expect(page).to have_link('Home')

    click_link 'Home'

    expect(page).to have_text('Welcome')
  end

  scenario 'Signup Page' do
    visit new_user_path

    expect(page).to have_link('Home')

    click_link 'Home'

    expect(page).to have_text('Welcome')
  end
end
