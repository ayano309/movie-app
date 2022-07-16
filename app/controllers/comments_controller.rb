class CommentsController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = current_user.comments.new(comment_params)
    @comment.movie_id = @movie.id
    unless @comment.save
      render 'error'  #comments/error.js.erbを参照する 
    end
      # redirect_to request.referer
      
  end
  
  def destroy
    @movie = Movie.find(params[:movie_id])
    comment = @movie.comments.find(params[:id])
    comment.destroy
    # redirect_to request.referer
    
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :kao)
  end

end