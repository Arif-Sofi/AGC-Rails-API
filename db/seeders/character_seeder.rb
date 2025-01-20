module CharacterSeeder
    def self.seed
      Character.create!(
        name: "吉田",
      )
      Character.create!(
        name: "沙優",
      )

      Character.create!(
        name: "高木さん",
      )
      Character.create!(
        name: "西片",
      )
    end
  end