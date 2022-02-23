class TenantsController < ApplicationController
  before_action :set_apartment, only: [:index, :create]

  before_action :set_tenant, only: [:show, :update, :destroy]

  def index
    @tenants = @apartment.tenants
    render json: @tenants
  end

  def show
    render json: @tenant
  end

  def create
    @tenant = @apartment.tenants.new(new_tenant_params)

    if @tenant.save
      render json: {show: true, message: "Tenant \"#{@tenant.name}\" was successfully created!"}
    else
      render json: @tenant.errors
    end
  end

  def update
    if @tenant.update(tenant_params)
      render json: {show: true, message: "Tenant \"#{@tenant.name}\" was successfully updated!"}
    else
      render json: @tenant.errors
    end
  end

  def destroy
    @tenant.destroy
    render json: {show: true, message: "Tenant \"#{@tenant.name}\" was successfully deleted!"}
  end

  private
  def set_apartment
    @apartment = Apartment.find(params[:apartment_id])
  end

  def set_tenant
    @tenant = Tenant.find(params[:id])
  end

  def new_tenant_params
    params.permit(:name, :email)
  end

  def tenant_params
    params.require(:tenant).permit(:name, :email)
  end
end
