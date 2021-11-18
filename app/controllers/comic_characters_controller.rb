class ComicCharactersController < ApplicationController
  before_action :set_comic_character, only: [:show, :edit, :update, :destroy]

  def index
    @comic_characters = sort(filter(ComicCharacter.all)).limit(100)
  end

  def show
  end

  def new
    @comic_character = ComicCharacter.new
  end

  def edit
  end

  def create
    @comic_character = ComicCharacter.new(comic_character_params)

    respond_to do |format|
      if @comic_character.save
        format.html { redirect_to @comic_character, notice: 'Comic character was successfully created.' }
        format.json { render :show, status: :created, location: @comic_character }
      else
        format.html { render :new }
        format.json { render json: @comic_character.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @comic_character.update(comic_character_params)
        format.html { redirect_to @comic_character, notice: 'Comic character was successfully updated.' }
        format.json { render :show, status: :ok, location: @comic_character }
      else
        format.html { render :edit }
        format.json { render json: @comic_character.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comic_character.destroy
    respond_to do |format|
      format.html { redirect_to comic_characters_url, notice: 'Comic character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_comic_character
    @comic_character = ComicCharacter.find(params[:id])
  end

  def comic_character_params
    params.require(:comic_character).permit(:publisher, :real_name, :alias, :url, :appearances, :alive, :gender, :identity_type, :alignment, :intro_in)
  end
end
