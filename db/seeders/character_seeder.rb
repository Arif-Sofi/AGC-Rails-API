module CharacterSeeder
    def self.seed
      

      #higehiro
      higehiro = Anime.find(1)
      Character.create!(
        name: "吉田",
        anime_id: higehiro.id,
      )
      Character.create!(
        name: "沙優",
        anime_id: higehiro.id,
      )

      # takagisan
      takagisan = Anime.find(2)
      Character.create!(
        name: "高木さん",
        anime_id: takagisan.id,
      )
      Character.create!(
        name: "西片",
        anime_id: takagisan.id,
      )
    end
  end