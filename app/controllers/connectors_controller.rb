class ConnectorsController < ApplicationController
  before_action :set_connector, only: [:show, :edit, :update, :destroy]

  def index
    @connectors = Connector.all
  end

  def show
  end

  def new
    @connector = Connector.new
  end

  def edit
  end

  def create
    @connector = Connector.new(connector_params)

    if @connector.save
      redirect_to @connector, notice: 'Connector was successfully created.'
    else
      render :new
    end
  end

  def update
    if @connector.update(connector_params)
      redirect_to @connector, notice: 'Connector was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @connector.destroy

    redirect_to connectors_url, notice: 'Connector was successfully destroyed.'
  end

  private

  def set_connector
    @connector = Connector.find(params[:id])
  end

  def connector_params
    params.require(:connector).permit(:title, :adapter, :database, :username, :password, :host, :port)
  end
end
