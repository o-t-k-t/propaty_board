class PropatiesController < ApplicationController
  before_action :set_propaty, only: [:show, :edit, :update, :destroy]

  # GET /propaties
  # GET /propaties.json
  def index
    @propaties = Propaty.all
  end

  # GET /propaties/1
  # GET /propaties/1.json
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
  # POST /propaties.json
  def create
    @propaty = Propaty.new(propaty_params)

    respond_to do |format|
      if @propaty.save
        format.html { redirect_to @propaty, notice: 'Propaty was successfully created.' }
        format.json { render :show, status: :created, location: @propaty }
      else
        format.html { render :new }
        format.json { render json: @propaty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propaties/1
  # PATCH/PUT /propaties/1.json
  def update
    respond_to do |format|
      if @propaty.update(propaty_params)
        format.html { redirect_to @propaty, notice: 'Propaty was successfully updated.' }
        format.json { render :show, status: :ok, location: @propaty }
      else
        format.html { render :edit }
        format.json { render json: @propaty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propaties/1
  # DELETE /propaties/1.json
  def destroy
    @propaty.destroy
    respond_to do |format|
      format.html { redirect_to propaties_url, notice: 'Propaty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propaty
      @propaty = Propaty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propaty_params
      params.require(:propaty).permit(:name, :rent, :address, :age, :note)
    end
end
