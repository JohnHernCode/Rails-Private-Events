require 'rails_helper'

RSpec.feature "Events", type: :feature do
  context 'create new event' do
    before(:all) do
      visit '/users/new'
      within '.simple_form' do
        fill_in 'user_username', with: 'clownman'
      end
      click_button 'Create'
    end
    before(:each) do
      visit '/login'
      within '.simple_form' do
        fill_in 'username', with: 'clownman'
      end
      click_button 'Login User'
    end

    scenario 'should succeed' do
      
    end
    
    scenario 'should fail' do
      
    end

  end

  context 'create new attend' do
    scenario 'should succeed' do
      
    end
    
    scenario 'should fail' do
      
    end

  end

end
