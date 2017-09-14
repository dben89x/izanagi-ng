class MonsterDropRecordsController < ApplicationController
  before_action :set_monster_drop_record, only: [:show, :update, :destroy]

  # GET /monster_drop_records
  def index
    @monster_drop_records = MonsterDropRecord.all

    render json: @monster_drop_records
  end

  # GET /monster_drop_records/1
  def show
    render json: @monster_drop_record
  end

  # POST /monster_drop_records
  def create
    @monster_drop_record = MonsterDropRecord.new(monster_drop_record_params)

    if @monster_drop_record.save
      render json: @monster_drop_record, status: :created, location: @monster_drop_record
    else
      render json: @monster_drop_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monster_drop_records/1
  def update
    if @monster_drop_record.update(monster_drop_record_params)
      render json: @monster_drop_record
    else
      render json: @monster_drop_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monster_drop_records/1
  def destroy
    @monster_drop_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_drop_record
      @monster_drop_record = MonsterDropRecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monster_drop_record_params
      params.require(:monster_drop_record).permit(:count)
    end
end
