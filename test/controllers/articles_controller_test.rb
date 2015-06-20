require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

  def index
    #code
  end

  def show
    #code
  end

  def new
    @article = Article.new
  end

  def edit
    #code
  end

  def create
    Article.create(params[:article])

  end

  def update
    #code
  end

  def destroy
    #code
  end

  private

    def article_params
      params.require(:article).permit(
        :title,
        :subtitle,
        :image_url,
      )
    end

end
