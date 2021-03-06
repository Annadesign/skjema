class FormletsController < ApplicationController
  before_action :set_formlet, only: [:show, :edit, :update, :destroy]

  def index
    unless current_moderator
      redirect_to login_url
    else
      @formlets = Formlet.all
    end
  end

  def show
    unless current_moderator
        redirect_to login_url
    end    
  end

  def new
    @formlet = Formlet.new
  end

  def edit
    unless current_moderator
        redirect_to login_url
    end
  end

  def create
    @formlet = Formlet.new(formlet_params)

    respond_to do |format|
      if @formlet.save
        format.html { redirect_to formlet_path(@formlet), notice: 'Takk for din søknad.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @formlet.update(formlet_params)
        format.html { redirect_to edit_formlet_url, notice: 'Søknad er oppdatert.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @formlet.destroy
    respond_to do |format|
      format.html { redirect_to formlets_url, notice: 'Søknaden er slettet.' }
 
    end
  end

  private

    def set_formlet
      @formlet = Formlet.find(params[:id])
    end

    def formlet_params
      params.require(:formlet).permit(:name, :email, :company, :position, :duration, :education, :challenge, :motivation, :grounds, :document)
    end
end
