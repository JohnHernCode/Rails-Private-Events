require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'create new user' do
    before(:each) do
      visit '/users/new'
      within '.simple_form' do
        fill_in 'user_username', with: 'clownman'
      end
    end

    scenario 'should succeed' do
      click_button 'Create'
      expect(page).to have_content('was created')
    end
    
    scenario 'should fail' do
      
    end

  end
end
