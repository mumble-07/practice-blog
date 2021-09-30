# frozen_string_literal: true

class CommentsController < ApplicationController
  # before action, parang callback
  # gusto natin na before action dito sa comments, kailangan niyang mag query ng article
  # which is yung ginawa natin rin sa routes, pwede rin namang hindi ganun yung nasa routes, but gusto natin an everytime
  # na pupunta siya sa comments kukuha muna tayo ng article

  before_action :get_article # ito yung taga query

  def index
    # @comments = Comment.all #ito ay lahat ng comments
    @comments = @article.comments
  end

  def new
    @comment = @article.comments.build # instead of .new para sa has_many .build ang gagamitin
  end

  def create
    @comment = @article.comments.build(comment_params) # papasahan na ng params

    if @comment.save
      redirect_to article_comments_path # galing sa rails/info which is yung indexcomments
    else
      render :new
    end
  end

  private # since naka befor action, dito muna siya pupunta beore niya gawin yung ma other methods/actions

  def get_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :article_id) # need pa rin isama si :article_id kasi hahanapin ata ni rails itong parameter
  end
end
