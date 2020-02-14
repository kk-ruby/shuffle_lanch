class EmplosController < ApplicationController
  before_action :set_emplo, only: [:show, :edit, :update, :destroy]

  # GET /emplos
  # GET /emplos.json
  def index
    @seizou = Emplo.where(section: "製造").order(:id)
    @jimu = Emplo.where(section: "事務").order(:id)
  end

  # GET /emplos/1
  # GET /emplos/1.json
  def show
  end

  # GET /emplos/new
  def new
    @emplo = Emplo.new
  end

  # GET /emplos/1/edit
  def edit
  end

  # POST /emplos
  # POST /emplos.json
  def create
    @emplo = Emplo.new(emplo_params)

    respond_to do |format|
      if @emplo.save
        format.html { redirect_to emplos_path, notice: 'Emplo was successfully created.' }
        format.json { render :show, status: :created, location: @emplo }
      else
        format.html { render :new }
        format.json { render json: @emplo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emplos/1
  # PATCH/PUT /emplos/1.json
  def update
    respond_to do |format|
      if @emplo.update(emplo_params)
        format.html { redirect_to @emplo, notice: 'Emplo was successfully updated.' }
        format.json { render :show, status: :ok, location: @emplo }
      else
        format.html { render :edit }
        format.json { render json: @emplo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emplos/1
  # DELETE /emplos/1.json
  def destroy
    @emplo.destroy
    respond_to do |format|
      format.html { redirect_to emplos_url, notice: 'Emplo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emplo
      @emplo = Emplo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emplo_params
      params.require(:emplo).permit(:name, :section, :last)
    end
end
