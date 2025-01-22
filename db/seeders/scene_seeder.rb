module SceneSeeder
    def self.seed
      happy =  Emotion.find_by(name: "Happy")
      sad =  Emotion.find_by(name: "Sad")
      angry =  Emotion.find_by(name: "Angry")
      surprised =  Emotion.find_by(name: "Surprised")
      
      #higehiro
      higehiro = Anime.find(1)
      yoshida = higehiro.characters.find_by(name: "吉田")
      sayu = higehiro.characters.find_by(name: "沙優")
      Scene.create!(
        audio_url: "\assets\higehiro\吉田、沙優：なんだ！？お前！なんだって言われても…。\1.wav",
        image_url: "app\assets\higehiro\吉田、沙優：なんだ！？お前！なんだって言われても…。\1.png",
        anime_id: higehiro.id,
        character_id: yoshida.id,
        emotion_id: surprised.id,
      )
    end
  end