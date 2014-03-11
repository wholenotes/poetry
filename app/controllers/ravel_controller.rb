class RavelController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index

  end

  def warp_and_weft

  end
end