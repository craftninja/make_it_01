require 'spec_helper'

feature 'User can manage a list of projects' do
  scenario 'User can add a project to a list' do
    visit '/projects'
    click_on 'Add project'
    fill_in 'Project name', :with => 'Make t-shirt quilt'
    click_on 'Add project'
    expect(page).to have_content('Make t-shirt quilt')
  end

end
