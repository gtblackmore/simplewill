class SpousesController < ApplicationController
  before_action :set_spouse, only: [:show, :update, :destroy]

  # GET /spouses
  def index
    @spouses = Spouse.all

    render json: @spouses
  end

  # GET /spouses/1
  def show
    render json: @spouse
  end

  # POST /spouses
  def create
    @spouse = Spouse.new(spouse_params)

    if @spouse.save
      render json: @spouse, status: :created, location: @spouse
    else
      render json: @spouse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spouses/1
  def update
    if @spouse.update(spouse_params)
      render json: @spouse
    else
      render json: @spouse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spouses/1
  def destroy
    @spouse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spouse
      @spouse = Spouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spouse_params
      params.require(:spouse).permit(:first_name, :last_name, :user_id)
    end
end
