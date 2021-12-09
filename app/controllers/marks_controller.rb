class MarksController < ApplicationController

  def new
    @mark = Mark.new
    @music = Music.all
    @auhtor = @music.pluck(:author).uniq
  end

  def create
    @mark = Mark.new
    @music = Music.all
    @mark.list = params[:list_id]
    @mark.music = @music
    @mark.save
    redirect_to list_path(params[:list_id])
  end
end
