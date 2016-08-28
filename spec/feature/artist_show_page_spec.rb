require 'rails_helper'

feature 'View artist songs', js: true do
  scenario 'go to show page' do
    johnlegend = Artist.create( name: 'John Legend')

    visit artists_path

    click_link('John Legend')

    expect(page).to have_content('John Legend')
  end

  scenario 'show the songs' do
  johnlegend = Artist.create( name: 'John Legend')
  Song.create( title: 'All of me', artist: johnlegend )
  Song.create( title: 'Tonight', artist: johnlegend )

  visit artists_path

  click_link('John Legend')

  expect(page).to have_content('All of me')
  expect(page).to have_content('Tonight')
  end
end
