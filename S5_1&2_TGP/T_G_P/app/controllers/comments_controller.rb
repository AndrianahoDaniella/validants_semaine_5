class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end
	def create
		@comment = Comment.new(content: params[:content], user_id: 11, gossip_id: params[:gossip_id])
		@comment.save
		redirect_to gossip_path(params[:gossip_id])
	end
	def destroy
		@comment = Comment.find(params[:id])
		
		 @comment.destroy
  	
		    redirect_to gossip_path(params[:gossip_id])
		  
	end
end