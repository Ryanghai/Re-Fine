class ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: [:show, :edit, :update, :destroy]

  # GET /exhibitions
  # GET /exhibitions.json
  def index
    @exhibitions = Exhibition.all
  end

  # GET /exhibitions/1
  # GET /exhibitions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibition
      @exhibition = Exhibition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exhibition_params
      params.require(:exhibition).permit(:exhibition_name, :place, :address, :detail, :category)
    end
end
