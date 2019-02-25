class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
  end

  private
  def article_params
  params.require(:article).permit(
      :title,
      :description,
      :price,
      :published,
      :category_id,
      :level,
      :country)
  end
end
