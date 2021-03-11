require 'rails_helper'

RSpec.feature "Events", type: :feature do

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

  context 'create new event' do

    scenario 'should succeed' do
      click_button 'Create'
      within '#new_event' do
        fill_in 'description', with: 'Party Time!'
        fill_in 'date', with: "2021-03-10"
      end

      find('#create_event').click
      expect(page).to have_content('Event was created')
    end
    
    scenario 'should fail' do
      click_button 'Create'
      within '#new_event' do
        fill_in 'description', with: ''
        fill_in 'date', with: "2021-03-10"
      end

      find('#create_event').click
      expect(page).not_to have_content('Event was created')
      
    end

  end

  context 'create new attend' do
    scenario 'should succeed' do
      
    end
    
    scenario 'should fail' do
      
    end

  end

end
