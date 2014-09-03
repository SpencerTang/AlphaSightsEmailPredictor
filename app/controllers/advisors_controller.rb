class AdvisorsController < ApplicationController
  before_action :set_advisor, only: [:show, :edit, :update, :destroy]

  # GET /advisors
  # GET /advisors.json
  def index
    @advisors = Advisor.all
    @advisor = Advisor.new
  end

  def create

    @advisor = Advisor.new
    @mail = Advisor.predict_email(params["advisor"])

      respond_to do |format|
        format.html { redirect_to @advisor, notice: 'Advisor was successfully created.' }
        format.json { render :show, status: :created, location: @advisor }
        format.js
      end
    end

end
