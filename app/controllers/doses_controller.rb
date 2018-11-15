class DosesController < ApplicationController
  def create
    dose = Dose.new(dose_params)
    dose.cocktail_id = params[:cocktail_id]
    dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def destroy
    dose = Dose.find(params[:id]).destroy
    cocktail = Cocktail.find(dose.cocktail_id)
    redirect_to cocktail
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
