# rubocop:disable Metrics/BlockLength
require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  before(:each) do
    visit '/users/new'
  end

  context 'Validate presence of username' do
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
  context 'Validates unique username' do
    scenario 'should succeed' do
      within '.simple_form' do
        fill_in 'user_username', with: 'topman'
      end
      click_button 'Create'
      expect(page).to have_content('was created')
    end
    scenario 'should fail' do
      User.new(username:"topman").save
      within '.simple_form' do
        fill_in 'user_username', with: 'topman'
      end
      click_button 'Create'
      expect(page).to have_content('User was not created')
    end
  end
  context 'Validates size of username' do
    scenario 'should succeed' do
      within '.simple_form' do
        fill_in 'user_username', with: 'ghostman'
      end
      click_button 'Create'
      expect(page).to have_content('was created')      
    end
    scenario 'should fail' do
      within '.simple_form' do
        fill_in 'user_username', with: 'to'
      end
      click_button 'Create'
      expect(page).to have_content('User was not created')
    end
  end
end
# rubocop:enable Metrics/BlockLength