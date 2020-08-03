class PersonalPropertiesController < ApplicationController
  before_action :set_personal_property, only: [:show, :update, :destroy]

  # GET /personal_properties
  def index
    @personal_properties = PersonalProperty.all

    render json: @personal_properties
  end

  # GET /personal_properties/1
  def show
    render json: @personal_property
  end

  # POST /personal_properties
  def create
    @personal_property = PersonalProperty.new(personal_property_params)

    if @personal_property.save
      render json: @personal_property, status: :created, location: @personal_property
    else
      render json: @personal_property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personal_properties/1
  def update
    if @personal_property.update(personal_property_params)
      render json: @personal_property
    else
      render json: @personal_property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personal_properties/1
  def destroy
    @personal_property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_property
      @personal_property = PersonalProperty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def personal_property_params
      params.require(:personal_property).permit(:description, :address, :city, :state, :zip, :user_id)
    end
end
