module ConnectionsHelper
  def connection_params
    params.require(:connection).permit(:talent, :company, :body)
  end
end
