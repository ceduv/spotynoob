class MusicsController < ApplicationController

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to lists_path
    else
      render :new
    end
  end

  private

  def music_params
    params.require(:music).permit(:title, :author)
  end
end
