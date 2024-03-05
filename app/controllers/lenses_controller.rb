class LensesController < ApplicationController
  def new
    @lens = Lens.new
  end

  def create
    @lens = current_user.lenses.new(lens_params)
    if @lens.save
      redirect_to @lens, notice: 'Lens was successfully created.'
    else
      render :new
    end
  end

  def show
    @lens = current_user.lenses.find(params[:id])
  end
  private

  def lens_params
    params.require(:lens).permit(:user_id, :lens_type, :opening_date, :next_replacement_date)
  end
end
