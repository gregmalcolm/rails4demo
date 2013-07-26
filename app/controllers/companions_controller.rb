class CompanionsController < ApplicationController
  before_action :set_companion, only: [:show, :edit, :update, :destroy]

  # GET /companions
  # GET /companions.json
  def index
    @companions = Companion.all
  end

  # GET /companions/1
  # GET /companions/1.json
  def show
  end

  # GET /companions/new
  def new
    @companion = Companion.new
  end

  # GET /companions/1/edit
  def edit
  end

  # POST /companions
  # POST /companions.json
  def create
    @companion = Companion.new(companion_params)

    respond_to do |format|
      if @companion.save
        format.html { redirect_to @companion, notice: 'Companion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @companion }
      else
        format.html { render action: 'new' }
        format.json { render json: @companion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companions/1
  # PATCH/PUT /companions/1.json
  def update
    respond_to do |format|
      if @companion.update(companion_params)
        format.html { redirect_to @companion, notice: 'Companion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @companion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companions/1
  # DELETE /companions/1.json
  def destroy
    @companion.destroy
    respond_to do |format|
      format.html { redirect_to companions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companion
      @companion = Companion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companion_params
      params.require(:companion).permit(:name, :skills)
    end
end
