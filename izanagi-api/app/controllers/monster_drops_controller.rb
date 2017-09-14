class MonsterDropsController < ApplicationController
  before_action :set_monster_drop, only: [:show, :update, :destroy]

  # GET /monster_drops
  def index
    @monster_drops = MonsterDrop.all

    render json: @monster_drops
  end

  # GET /monster_drops/1
  def show
    render json: @monster_drop
  end

  # POST /monster_drops
  def create
    @monster_drop = MonsterDrop.new(monster_drop_params)

    if @monster_drop.save
      render json: @monster_drop, status: :created, location: @monster_drop
    else
      render json: @monster_drop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monster_drops/1
  def update
    if @monster_drop.update(monster_drop_params)
      render json: @monster_drop
    else
      render json: @monster_drop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monster_drops/1
  def destroy
    @monster_drop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_drop
      @monster_drop = MonsterDrop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monster_drop_params
      params.fetch(:monster_drop, {})
    end
end
