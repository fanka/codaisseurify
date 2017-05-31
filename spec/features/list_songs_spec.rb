require 'rails_helper'

describe "Viewing the list of songs for chosen artist" do

  let(:artist1) { create :artist, name:"Artist1" }

  let!(:song1) { create :song, name: "Song Name 1", artist: artist1 }
  let!(:song2) { create :song, name: "Song Name 2", artist: artist1 }
  let!(:song3) { create :song, name: "Song Name 3", artist: artist1 }

  it "shows all his songs on the show page" do
    visit artist_url(artist1)

    expect(page).to have_text("Song Name 1")
    expect(page).to have_text("Song Name 2")
    expect(page).to have_text("Song Name 3")
  end

  it "shows all his songs on the index page" do
    visit artists_url

    expect(page).to have_text("Song Name 1")
    expect(page).to have_text("Song Name 2")
    expect(page).to have_text("Song Name 3")
  end



end
