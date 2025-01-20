module EmotionSeeder
    def self.seed
      Emotion.create!(
        name: "Happy",
      )
      
      Emotion.create!(
        name: "Sad",
      )

      Emotion.create!(
        name: "Angry",
      )
    end
  end