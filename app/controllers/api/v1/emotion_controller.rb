class Api::V1::EmotionController < ApplicationController
  def index
    @emotions = Emotion.all
    render json: @emotions
  end

  def show
    @emotion = Emotion.find(params[:id])
    render json: @emotion
  end
end
