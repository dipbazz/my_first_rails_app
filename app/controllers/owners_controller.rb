class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      flash[:notice] = "Owner successfully created."
      redirect_to @owner
    else
      render :new
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update(owner_params)
      redirect_to @owner
    else
      render :edit
    end
  end

  def destroy
    Owner.find(params[:id]).destroy
    flash[:notice] = "Owner successfully destroyed."
    redirect_to owners_url
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :contact, :email)
  end
end
