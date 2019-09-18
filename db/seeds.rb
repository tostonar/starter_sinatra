drake = Artist.create(name: "Drake")
adele = Artist.create(name: "Adele")


hotline_bling = Song.create(name: "Hotline Bling", lyrics: "You used to call me on my cell phone", artist_id: drake.id)
forever = Song.create(name: "Forever", lyrics: "It may not mean nothing to y'all", artist_id: drake.id)
one_dance = Song.create(name: "One Dance", lyrics: "Baby, I like your style", artist_id: drake.id)
nonstop = Song.create(name: "Nonstop", lyrics: "Look, I just flipped the switch", artist_id: drake.id)

hello = Song.create(name: "Hello", lyrics: "Hello, it's me", artist_id: adele.id)
someone = Song.create(name: "Someone Like You", lyrics: "I heard that you're settled down", artist_id: adele.id)
rolling = Song.create(name: "Rolling in The Deep", lyrics: "There's a fire starting in my heart", artist_id: adele.id)
fire = Song.create(name: "Set Fire to The Rain", lyrics: "I let it fall, my heart", artist_id: adele.id)

