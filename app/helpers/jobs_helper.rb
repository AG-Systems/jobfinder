module JobsHelper
   def post_params
    params.require(:job).permit(:title, :body, :image)
  end
end
