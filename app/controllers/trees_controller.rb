class TreesController < ApplicationController
  before_action :set_tree, only: [:show, :edit, :update, :destroy]

  def index
    @trees = Tree.all
  end

  def show
    @adoption = Adoption.new
    @adoptions = @tree.adoptions
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save!
      redirect_to tree_path(@tree), notice: 'Tree was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tree.update(tree_params)
      redirect_to tree_path(@tree), notice: 'Tree was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tree.destroy
    redirect_to tree_path(@tree), status: :see_other, notice: 'Tree was successfully destroyed.'
  end


  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :address, :description, :fruit_type, :price_per_year, :quantity_per_year)
  end
end
