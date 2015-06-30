class EditorsController < ApplicationController
  before_action :authenticate_editor!

  def dashboard
    #code
  end

  def new
    @editor = Editor.new
  end

  def create
    @editor = Editor.new(editor_params)

    if @editor.save!
      flash[:message] = "Success!"
      redirect_to editor_panel_path
    else
      flash[:error] = 'Whoops! Something Happened'
    end
  end

  def index
    @editors = Editor.where.not(email: ['jgandhi2@jhu.edu','webmaster@saisjournal.org'])
  end

  def destroy
    @editor = Editor.find_by_id(params[:id])

    if @editor.nil?
      redirect_to editors_path
    elsif @editor.email == 'jgandhi2@jhu.edu'
      flash[:message] = 'Ahahah, you didn\'t say the magic word!'
      redirect_to editor_dashboard_path
    elsif @editor.destroy!
      redirect_to editor_dashboard_path
    end
  end

  private

    def editor_params
      params[:editor].permit(
        'email',
        'password',
        'password_confirmation'
      )
    end

end
