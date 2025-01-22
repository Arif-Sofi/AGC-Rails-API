class Api::V1::SceneCotroller < ApplicationController
  def index
    @scenes = Scene.all
    render json: @scenes
  end

  def show
    @scene = Scene.find(params[:id])
    render json: @scene
  end
end
