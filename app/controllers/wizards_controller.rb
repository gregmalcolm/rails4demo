class WizardsController < ApplicationController
  before_action :set_wizard, only: [:show, :edit, :update, :destroy]

  def index
    @wizards = Wizard.all
  end

  def create
    @wizard = Wizard.new(wizard_params)

    respond_to do |format|
      if @wizard.save
        format.html { redirect_to @wizard, notice: 'Wizard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wizard }
      else
        format.html { render action: 'new' }
        format.json { render json: @wizard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wizards/1
  # PATCH/PUT /wizards/1.json
  def update
    respond_to do |format|
      if @wizard.update(wizard_params)
        format.html { redirect_to @wizard, notice: 'Wizard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wizard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wizards/1
  # DELETE /wizards/1.json
  def destroy
    @wizard.destroy
    respond_to do |format|
      format.html { redirect_to wizards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wizard
      @wizard = Wizard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wizard_params
      params.require(:wizard).permit(:name, :alignment, :spells, :bag_of_holding)
    end
end
