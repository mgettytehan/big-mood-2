class Api::MoodscalesController < ApplicationController
  before_action :set_moodscale, only: %i[ show update destroy ]

  # GET /moodscales
  def index
    @moodscales = Moodscale.all

    render json: @moodscales, include: :scale_items
  end

  # GET /moodscales/1
  def show
    render json: @moodscale, include: :scale_items
  end

  # POST /moodscales
  def create
    @moodscale = Moodscale.new(moodscale_params)

    if @moodscale.save
      render json: @moodscale, status: :created, location: api_moodscale_url(@moodscale)
    else
      render json: @moodscale.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /moodscales/1
  def update
    if @moodscale.update(moodscale_params)
      render json: @moodscale
    else
      render json: @moodscale.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moodscales/1
  def destroy
    @moodscale.update({deleted_at: Time.current})

    # @moodscale.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moodscale
      @moodscale = Moodscale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def moodscale_params
      params.require(:moodscale).permit(:name, :scale_type, scale_items_attributes: [:index, :alias]).tap do |mood_log_params|
        mood_log_params.require(:scale_items_attributes)
      end
    end
end
