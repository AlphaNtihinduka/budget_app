class SplashesController < ApplicationController
  before_action :set_splash, only: %i[ show edit update destroy ]


  # GET /splashes or /splashes.json
  def index
    @splashes = Splash.all
  end
end
