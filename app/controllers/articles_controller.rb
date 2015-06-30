class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

  def index
    @articles = Article.all.order(created_at: 'asc')
  end

  def show
    @article = Article.
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    @article.build_slug()

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'article was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render action: 'new' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def update
    @article.build_slug()

    respond_to do |format|
      if @article.update!(article_params)
        format.html { redirect_to @article, notice: 'post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to manage_posts_path }
      format.json { head :no_content }
    end
  end

  private
    def set_article
      @article = Article.find_by_slug(params[:id])
    end

    def article_params
      params[:article].permit(
        :title,
        :subtitle,
        :publish_date,
        :is_cover_story,
        :sections_attributes[
          :position,
          :has_image,
          :image_url,
          :body,
          :header,
          :_destroy,
        ],
      )
    end
  end
end
