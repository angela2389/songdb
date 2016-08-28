require "rails_helper"

describe "When an artist is created" do
  it "it saved its name" do
    artist1 = Artist.create(name: "Bowie")

    assert(artist1.name == "Bowie")

  end
end
