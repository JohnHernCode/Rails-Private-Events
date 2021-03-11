require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'create new user' do
    before(:each) do
      visit '/users/new'

    end

    scenario 'should succeed' do
      within '.simple_form' do
        fill_in 'user_username', with: 'clownman'
      end
      click_button 'Create'
      expect(page).to have_content('was created')
    end
    
    scenario 'should fail' do
      within '.simple_form' do
        fill_in 'user_username', with: ''
      end
      click_button 'Create'
      expect(page).to have_content('User was not created')
    end

  end
end
