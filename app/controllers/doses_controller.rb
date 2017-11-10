class DosesController < ApplicationController
  def create
    @dose = Dose.new(doses_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktail_path(@cocktail)
    end
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    if @dose.update_attributes(doses_params)
      redirect_to cocktail_path(@dose.cocktail)
    else
      render 'edit'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    if @dose.destroy
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktail_path(@cocktail)
    end
  end

  private

  def doses_params
    params.require(:dose).permit(:amount, :description, :ingredient_id)
  end
end
