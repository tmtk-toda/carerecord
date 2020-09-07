class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  def index
    @clients = Client.all
  end
  def new
    @client = Client.new
  end
  def create
    Client.create(params.require(:client).permit(:name, :sex, :born_on, :age, :information))
  redirect_to clients_path
  end
  def show
    @client = Client.find(params[:id])
  end
  def edit
    @client = Client.find(params[:id])
  end  
  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to clients_path, notice: "編集しました"
    else
      render :edit
    end
  end
  def destroy
    @client.destroy
    redirect_to clients_path, notice:"削除しました"
  end
  private
  def client_params
    params.require(:client).permit(:name, :sex, :born_on, :age, :information)
  end
  def set_client
    @client = Client.find(params[:id])
  end
end 
