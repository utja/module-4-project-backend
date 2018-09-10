class Api::V1::ScoresController < ApplicationController

  # get scores
  def index
    scores = Score.all
    render json: scores
  end

  # post/create score
  def create
    score = Score.create(score_params)
    render json:score
  end

  private

  def score_params
    params.permit(:score, :user_id)
  end

end
