class Api::ScaleItemsController < ApplicationController
  before_action :set_scale_item, only: %i[ show update destroy ]

  # GET /scale_items
  def index
    @scale_items = ScaleItem.all

    render json: @scale_items
  end

  # GET /scale_items/1
  def show
    render json: @scale_item
  end

  # POST /scale_items
  def create
    @scale_item = ScaleItem.new(scale_item_params)

    if @scale_item.save
      render json: @scale_item, status: :created, location: @scale_item
    else
      render json: @scale_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scale_items/1
  def update
    if @scale_item.update(scale_item_params)
      render json: @scale_item
    else
      render json: @scale_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scale_items/1
  def destroy
    @scale_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scale_item
      @scale_item = ScaleItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scale_item_params
      params.require(:scale_item).permit(:index, :alias, :moodscale_id)
    end
end
