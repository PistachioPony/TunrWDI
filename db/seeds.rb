Song.destroy_all
Artist.destroy_all

kesha = Artist.create(name: "Ke$ha")

kesha.songs << Song.new(name: "Warrior", spotify_uri: "spotify:track:0EX9OHeYY10o6QWPa1nuAQ")