class WillsController < ApplicationController
  before_action :set_will, only: [:show, :edit, :update, :destroy]

  # GET /wills
  # GET /wills.json
  def index
    @wills = Will.all
  end

  # GET /wills/1
  # GET /wills/1.json
  def show
  end

  # GET /wills/new
  def new
    @will = Will.new
  end

  # GET /wills/1/edit
  def edit
  end

  # POST /wills
  # POST /wills.json
  def create
    @will = Will.new(will_params)

    respond_to do |format|
      if @will.save
        format.html { redirect_to @will, notice: 'Will was successfully created.' }
        format.json { render :show, status: :created, location: @will }
      else
        format.html { render :new }
        format.json { render json: @will.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wills/1
  # PATCH/PUT /wills/1.json
  def update
    respond_to do |format|
      if @will.update(will_params)
        format.html { redirect_to @will, notice: 'Will was successfully updated.' }
        format.json { render :show, status: :ok, location: @will }
      else
        format.html { render :edit }
        format.json { render json: @will.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wills/1
  # DELETE /wills/1.json
  def destroy
    @will.destroy
    respond_to do |format|
      format.html { redirect_to wills_url, notice: 'Will was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_will
      @will = Will.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def will_params
      params.require(:will).permit(:user_id, :client_id, :spouse, :spouse_name, :relationship, :spouse_executor, :second_executor, :second_executor_name, :second_executor_city, :alternate_executor, :alternate_executor_name, :alternate_executor_city, :alternate_executor_country, :children, :spouse_guardian, :alternate_guardian, :alternate_guardian_address, :gift_conditions, :gift_conditions_age, :specific_gifts, :estate_residue, :wipeout_clause, :wipeout_distribution, :pets, :pet_details_carers, :additional_clauses, :notes, :draft_created, :draft_sent_to_client, :client_approval, :final_version_sent_to_client, :payment_received, :completed)
    end
end
