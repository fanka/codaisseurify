require 'rails_helper'

feature 'Update songs list', js: true do
let(:artist1) { create :artist, name: "Artist 1"}

  scenario 'add a new song' do


    visit artist_path(artist1)

    click_on "[New Song]"

    fill_in('Name of your song', with: 'Belle')

    click_on 'Add a new song'

    expect(page).to have_content('Belle')

  end

let!(:song1) { create :song, artist: artist1 }
let!(:song2) { create :song, artist: artist1 }

  scenario 'delete a song' do


  visit artist_path(artist1)

  click_on('Delete', match: :first)



page.driver.browser.switch_to.alert.accept

  expect(page).not_to have_content(song1.name || song2.name)

  end


end
