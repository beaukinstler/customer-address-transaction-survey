class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_role


  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
    @user = current_user
    @cats = Cat.all
    if @user.admin?
      respond_to do |format|
        format.html
        format.csv { send_data @cats.to_csv }
        format.xls # { send_data @cats.to_csv(col_sep: "\t") }
      end
    end
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
    @search = @survey.cats.ransack(params[:q])
    @cats = @search.result.order(id: :desc)
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
    if !current_user.admin?
      redirect_to root
    end
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to survey_cats_path(@survey), notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:name, :description, :source)
    end

  def check_role
    if current_user.user?
      redirect_to '/pages/about', notice: 'You must be authorized to use the CAT surveys'
    end
  end

end
