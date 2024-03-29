class Api::MoodLogsController < ApplicationController
  before_action :set_mood_log, only: %i[ show update destroy ]

  # GET /mood_logs
  def index
    @mood_logs = MoodLog.all

    render json: @mood_logs, include: [:scale_items => {:include => [:moodscale => {:include => :scale_items}]}]
  end

  # GET /mood_logs/1
  def show
    render json: @mood_log, include: [:scale_items => {:include => [:moodscale => {:include => :scale_items}]}]
  end

  # POST /mood_logs
  def create
    @mood_log = MoodLog.new(mood_log_params)

    if @mood_log.save
      render json: @mood_log, status: :created, location: api_mood_log_url(@mood_log)
    else
      render json: @mood_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mood_logs/1
  def update
    if @mood_log.update(mood_log_params)
      render json: @mood_log
    else
      render json: @mood_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mood_logs/1
  def destroy
    @mood_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood_log
      @mood_log = MoodLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mood_log_params
      params.require(:mood_log).permit(:notes, scale_item_ids: []).tap do |mood_log_params|
        mood_log_params.require(:scale_item_ids)
      end
    end
end
