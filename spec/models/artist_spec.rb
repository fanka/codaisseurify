require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it  { is_expected.to validate_presence_of(:name) }
  end

  describe ".order_by_name" do
   let!(:artist1) { create :artist, name: "Berty" }
   let!(:artist2) { create :artist, name: "Alain" }
   let!(:artist3) { create :artist, name: "Claude" }

    it "returns a sorted array of artists by names" do
     # note that they should not come out in the order that they were created
     expect(Artist.order_by_name).to eq([artist2, artist1, artist3])
    end
  end

    describe "associations with Songs" do
          it  { is_expected.to have_many(:songs) }
    end

    describe "deletes all assotiated songs" do
      let!(:artist1) { create :artist, name: "Berty" }
      let!(:song1) { create :song, artist: artist1 }

      it "deletes associated songs" do
        expect { artist1.destroy }.to change(Song, :count).by(-1)
      end
    end

end
