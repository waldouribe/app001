class PasswordResetsController < ApplicationController
  before_action :set_password_reset, only: [:show, :edit, :update, :destroy]

  # GET /password_resets
  # GET /password_resets.json
  def index
    @password_resets = PasswordReset.all
  end

  # GET /password_resets/1
  # GET /password_resets/1.json
  def show
  end

  # GET /password_resets/new
  def new
    @password_reset = PasswordReset.new
  end

  # GET /password_resets/1/edit
  def edit
  end

  # POST /password_resets
  # POST /password_resets.json
  def create
    @password_reset = PasswordReset.new(password_reset_params)

    respond_to do |format|
      if @password_reset.save
        format.html { redirect_to @password_reset, notice: 'Password reset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @password_reset }
      else
        format.html { render action: 'new' }
        format.json { render json: @password_reset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /password_resets/1
  # PATCH/PUT /password_resets/1.json
  def update
    respond_to do |format|
      if @password_reset.update(password_reset_params)
        format.html { redirect_to @password_reset, notice: 'Password reset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @password_reset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /password_resets/1
  # DELETE /password_resets/1.json
  def destroy
    @password_reset.destroy
    respond_to do |format|
      format.html { redirect_to password_resets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_password_reset
      @password_reset = PasswordReset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def password_reset_params
      params.require(:password_reset).permit(:user_id, :token, :datetime, :used)
    end
end
