class HomeController < ApplicationController
  def index

    temp_array1 = Array.new
    temp_array2 = Array.new

    temp_array1 = Article.where(vertical: 'Phrenology')

    temp_array2 = Article.where(vertical: 'Astacology')

    @sections = Array[temp_array1, temp_array2]

  end
end
