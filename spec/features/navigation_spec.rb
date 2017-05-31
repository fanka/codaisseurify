require 'rails_helper'

describe "Navigating artists" do

  let(:artist1) { create :artist, name: "Artist 1"}
  let!(:song1) { create :song , artist: artist1 }

  it "allows navigation from the index page to the artist's page" do
    visit artists_url

    click_link "Artist 1"

    expect(current_path).to eq(artist_path(artist1))
  end

  it "allows navigation from the index page to creating new artist" do
    visit artists_url

    click_link "+Add an artist"

    expect(current_path).to eq(new_artist_path)
  end

  it "allows navigation from artist's page to edit page" do
    visit artist_url(artist1)

    click_link "Edit artist"

    expect(current_path).to eq(edit_artist_path(artist1))
  end


  describe "Navigating songs" do

    let(:artist1) { create :artist, name: "Artist 1"}
    let!(:song1) { create :song, name: "Song 1", artist: artist1 }


    it "allows navigation from the index page to the song page" do
      visit artists_url

      click_link "Song 1"

      expect(current_path).to eq(artist_song_path(artist1, song1))
    end

    it "allows navigation from the artist's page to the song page" do
      visit artist_url(artist1)

      click_link "Song 1"

      expect(current_path).to eq(artist_song_path(artist1, song1))
    end

    it "allows navigation from the song page to edit song page" do
      visit artist_song_url(artist1, song1)

      click_link "Edit"

      expect(current_path).to eq(edit_song_path(song1))
    end
  end

end
