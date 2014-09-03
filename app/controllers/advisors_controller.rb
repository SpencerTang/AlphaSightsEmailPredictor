class AdvisorsController < ApplicationController
  before_action :set_advisor, only: [:show, :edit, :update, :destroy]

  # GET /advisors
  # GET /advisors.json
  def index
    @advisors = Advisor.all
    @advisor = Advisor.new
  end

  # GET /advisors/1
  # GET /advisors/1.json
  def show
  end

  # GET /advisors/new

  # GET /advisors/1/edit

  # POST /advisors
  # POST /advisors.json
  def create

    @advisor = Advisor.new
    @mail = Advisor.predict_email(params["advisor"])

      respond_to do |format|
        format.html { redirect_to @advisor, notice: 'Advisor was successfully created.' }
        format.json { render :show, status: :created, location: @advisor }
        format.js
      end
    end

  # PATCH/PUT /advisors/1
  # PATCH/PUT /advisors/1.json
  def update
    respond_to do |format|
      if @advisor.update(advisor_params)
        format.html { redirect_to @advisor, notice: 'Advisor was successfully updated.' }
        format.json { render :show, status: :ok, location: @advisor }
      else
        format.html { render :edit }
        format.json { render json: @advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advisors/1
  # DELETE /advisors/1.json
  def destroy
    @advisor.destroy
    respond_to do |format|
      format.html { redirect_to advisors_url, notice: 'Advisor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advisor
      @advisor = Advisor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advisor_params
      params.require(:advisor).permit(:domain_name, :first_name, :last_name)
    end
end
