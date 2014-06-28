require 'spec_helper'

feature 'User can manage a list of projects' do
  scenario 'User can add a project to a list' do
    visit '/projects'
    click_on 'Add project'
    fill_in 'Project name', :with => 'Make t-shirt quilt'
    click_on 'Add project'
    expect(page).to have_content('Look at all the stuff you want to do!')
    expect(page).to have_content('Make t-shirt quilt')
  end

  scenario 'User can see project\'s show page' do
    visit '/projects'
    click_on 'Add project'
    fill_in 'Project name', :with => 'Make t-shirt quilt'
    click_on 'Add project'
    click_on 'Make t-shirt quilt'
    expect(page).to_not have_content('Look at all the stuff you want to do!')
    expect(page).to have_content('Make t-shirt quilt')
  end

  scenario 'User can update projects' do
    visit '/projects'
    click_on 'Add project'
    fill_in 'Project name', :with => 'Make t-shirt quilt'
    click_on 'Add project'
    click_on 'Make t-shirt quilt'
    click_on 'Edit'
    fill_in 'Project name', :with => 'Make T-Shirt quilt'
    click_on 'Update'
    expect(page).to_not have_content('Make t-shirt quilt')
    expect(page).to have_content('Make T-Shirt quilt')
  end

end
