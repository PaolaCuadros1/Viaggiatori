# frozen_string_literal: true

class Admin::AdminsController < Admin::BaseController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admin/admins
  # GET /admin/admins.json
  def index
    @admins = Admin.all
  end

  # GET /admin/admins/1
  # GET /admin/admins/1.json
  def show
  end

  # GET /admin/admins/new
  def new
    @admin = Admin.new
  end

  # GET /admin/admins/1/edit
  def edit
  end

  # POST /admin/admins
  # POST /admin/admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to admin_admin_url(@admin), notice: t('activerecord.attributes.admin.admin_created') }
        format.json { render :show, status: :created, location: admin_admin_url(@admin) }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/admins/1
  # PATCH/PUT /admin/admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to admin_admin_url(@admin), notice: t('activerecord.attributes.admin.admin_updated') }
        format.json { render :show, status: :ok, location: admin_admin_url(@admin) }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/admins/1
  # DELETE /admin/admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admin_admins_path, notice: t('activerecord.attributes.admin.admin_removed') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :age, :city, :address, :email, :password, :password_confirmation, :role, :identification_card, :avatar, :birthdate, :status)
    end
end
