class BallonfahrersController < ApplicationController
  before_action :set_ballonfahrer, only: [:show, :edit, :update, :destroy]
  #before_action :authorize, :except => [:index, :show]
  # GET /ballonfahrers
  # GET /ballonfahrers.json
  def index
    @ballonfahrers = Ballonfahrer.all.order('name')
  end

  # GET /ballonfahrers/1
  # GET /ballonfahrers/1.json
  def show
  end

  # GET /ballonfahrers/new
  def new
    @ballonfahrer = Ballonfahrer.new
  end

  # GET /ballonfahrers/1/edit
  def edit
  end

  # POST /ballonfahrers
  # POST /ballonfahrers.json
  def create
    @ballonfahrer = Ballonfahrer.new(ballonfahrer_params)

    respond_to do |format|
      if @ballonfahrer.save
        log_in @ballonfahrer
        format.html { redirect_to @ballonfahrer, notice: 'Ballonfahrer was successfully created.' }
        format.json { render :show, status: :created, location: @ballonfahrer }
      else
        format.html { render :new }
        format.json { render json: @ballonfahrer.errors, status: :unprocessable_entity }
      end

    end
  end

  # PATCH/PUT /ballonfahrers/1
  # PATCH/PUT /ballonfahrers/1.json
  def update
    respond_to do |format|
      if @ballonfahrer.update(ballonfahrer_params)
        format.html { redirect_to @ballonfahrer, notice: 'Ballonfahrer was successfully updated.' }
        format.json { render :show, status: :ok, location: @ballonfahrer }
      else
        format.html { render :edit }
        format.json { render json: @ballonfahrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballonfahrers/1
  # DELETE /ballonfahrers/1.json
  def destroy

  @ballonfahrer = Ballonfahrer.find(params[:id])

   # if @ballonfahrer.destroy
   #     redirect_to root_url, notice: "User deleted."
   # end

    @ballonfahrer.destroy
    respond_to do |format|
      format.html { redirect_to ballonfahrers_url, notice: 'Ballonfahrer was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballonfahrer
      @ballonfahrer = Ballonfahrer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ballonfahrer_params
      params.require(:ballonfahrer).permit(:name,:tel, :geburtstag, :uebermich, :email, :password, :password_confirmation)
    end
end
