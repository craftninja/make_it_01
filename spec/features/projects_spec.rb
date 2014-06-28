require 'spec_helper'

feature 'User can manage a list of projects' do
  scenario 'User is welcomed on homepage' do
    visit '/'
    expect(page).to have_content('Welcome to the project manager.')
  end
end
