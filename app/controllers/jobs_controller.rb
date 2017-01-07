class JobsController < ApplicationController
    before_filter :authenticate_user!, :only => [:new]
    include JobsHelper
    def index
         @jobs = Job.select("id, body, title, image").all
    end
    def new
        @job = Job.new
    end
    
    def create
        @job = Job.new(post_params)
        @job.save
    
        redirect_to job_path(@job)
    end
    
    def show
      @job = Job.find(params[:id])        
    end
    
    def update
      @job = Post.find(params[:id])
      @job.update(post_params)
    
      flash.notice = "Article '#{@job.title}' Updated!"
    
      redirect_to job_path(@job)
    end
    
    def upvote
      @job = Job.find(params[:id])
      @job.upvote_by current_user
      redirect_to job_path
    end
    
    def downvote
      @job = Job.find(params[:id])
      @job.downvote_by current_user
      redirect_to job_path
    end
end
