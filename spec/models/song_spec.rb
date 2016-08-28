require "rails_helper"

describe "When a song is created" do
  it "is connected to an artist" do
    johnlegend = Artist.create( name: 'John Legend')
    allofme = Song.create({ title: 'All of me', artist: johnlegend })

    assert(johnlegend.songs.last == allofme)
  end
end
