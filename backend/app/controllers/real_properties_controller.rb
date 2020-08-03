class RealPropertiesController < ApplicationController
  before_action :set_real_property, only: [:show, :update, :destroy]

  # GET /real_properties
  def index
    @real_properties = RealProperty.all

    render json: @real_properties
  end

  # GET /real_properties/1
  def show
    render json: @real_property
  end

  # POST /real_properties
  def create
    @real_property = RealProperty.new(real_property_params)

    if @real_property.save
      render json: @real_property, status: :created, location: @real_property
    else
      render json: @real_property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /real_properties/1
  def update
    if @real_property.update(real_property_params)
      render json: @real_property
    else
      render json: @real_property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /real_properties/1
  def destroy
    @real_property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_property
      @real_property = RealProperty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def real_property_params
      params.require(:real_property).permit(:address, :city, :state, :zip, :user_id)
    end
end
