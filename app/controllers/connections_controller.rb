class ConnectionsController < ApplicationController
  before_filter :authenticate_user!
  include ConnectionsHelper
  def index
      @connections = Connection.all
      @jobs = Job.all
      @users = User.all
  end
  def new
      @connection = Connection.new
  end
  def create
    @connection = Connection.new(connection_params)
    @connection.save
  end

  def destroy
    @connection = Connection.find(params[:id])   
      if @connection.talent == current_user.email
        @connection.destroy
        redirect_to "connections"
      end
  end
  
  def show
      @connection = Connection.find(params[:id])        
  end

end
