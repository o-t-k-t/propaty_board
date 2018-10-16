class PropatiesController < ApplicationController
  before_action :set_propaty, only: %i[show edit update destroy]

  # GET /propaties
  def index
    @propaties = Propaty.all
  end

  # GET /propaties/1
  def show
  end

  # GET /propaties/new
  def new
    @propaty = Propaty.new
  end

  # GET /propaties/1/edit
  def edit
  end

  # POST /propaties
  def create
    @propaty = Propaty.new(propaty_params)

    if @propaty.save
      redirect_to @propaty, notice: 'Propaty was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /propaties/1
  def update
    if @propaty.update(propaty_params)
      redirect_to @propaty, notice: 'Propaty was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /propaties/1
  def destroy
    @propaty.destroy
    redirect_to propaties_url, notice: 'Propaty was successfully destroyed.'
  end

  private

  def set_propaty
    @propaty = Propaty.find(params[:id])
  end

  def propaty_params
    params.require(:propaty).permit(:name, :rent, :address, :age, :note)
  end
end
