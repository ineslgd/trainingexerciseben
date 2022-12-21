class AdoptionsController < ApplicationController
  before_action :set_tree, only: %i[ create destroy]

  def create
    @adoption = Adoption.new(adoption_params)
    @adoption.tree = @tree
    @adoption.user = current_user
    @adoption.starts_at = Date.today
    @adoption.ends_at = Date.today + 1.year
    if @adoption.save!
      redirect_to tree_path(@adoption.tree)
    else
      render 'trees/show', status: :unprocessable_entity
    end
  end

  def destroy
    @adoption = Adoption.find(params[:id])
    @adoption.destroy
    redirect_to tree_path(@adoption.tree), status: :see_other
  end

  private

  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

  def adoption_params
    params.require(:adoption).permit(:name)
  end
end
