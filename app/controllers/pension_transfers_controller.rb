class PensionTransfersController < ApplicationController
  before_action :set_pension_transfer, only: [:show, :edit, :update, :destroy]

  # GET /pension_transfers
  # GET /pension_transfers.json
  def index
    @pension_transfers = PensionTransfer.all
  end

  # GET /pension_transfers/1
  # GET /pension_transfers/1.json
  def show
  end

  # GET /pension_transfers/new
  def new
    @pension_transfer = PensionTransfer.new
  end

  # GET /pension_transfers/1/edit
  def edit
  end

  # POST /pension_transfers
  # POST /pension_transfers.json
  def create
    @pension_transfer = PensionTransfer.new(pension_transfer_params)

    respond_to do |format|
      if @pension_transfer.save
        format.html { redirect_to @pension_transfer, notice: 'Pension transfer was successfully created.' }
        format.json { render :show, status: :created, location: @pension_transfer }
      else
        format.html { render :new }
        format.json { render json: @pension_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pension_transfers/1
  # PATCH/PUT /pension_transfers/1.json
  def update
    respond_to do |format|
      if @pension_transfer.update(pension_transfer_params)
        format.html { redirect_to @pension_transfer, notice: 'Pension transfer was successfully updated.' }
        format.json { render :show, status: :ok, location: @pension_transfer }
      else
        format.html { render :edit }
        format.json { render json: @pension_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pension_transfers/1
  # DELETE /pension_transfers/1.json
  def destroy
    @pension_transfer.destroy
    respond_to do |format|
      format.html { redirect_to pension_transfers_url, notice: 'Pension transfer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pension_transfer
      @pension_transfer = PensionTransfer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pension_transfer_params
      params.require(:pension_transfer).permit(:client_id, :user_id, :loa_signed, :loa_sent_to_provider, :completed)
    end
end
