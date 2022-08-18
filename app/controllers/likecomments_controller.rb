class LikecommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @like = Like.find_by(movie_id: @movie.id, user_id: current_user.id)
    @like_comments = current_user.likecomments.new(likecomments_params)
    @like_comments.movie_id = @movie.id
    @like_comments.like_id = @like.id
    @like_comments.save
    redirect_to request.referer
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @like_comments = @movie.likecomments.find(params[:id])
    @like_comments.destroy
    redirect_to request.referer
  end

  def likecomments_params
    params.require(:likecomment).permit(:shape, :color, :smell)
  end
end
