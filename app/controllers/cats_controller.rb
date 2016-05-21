class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_role

  # GET /cats
  # GET /cats.json
  def index
    @survey = Survey.find(params[:survey_id])
    @cats = @survey.cats.all
  end

  # GET /cats/1
  # GET /cats/1.json
  def show
    @survey = Survey.find(params[:survey_id])
    @cat = @survey.cats.find(params[:id])
  end

  # GET /cats/new
  def new
    @survey = Survey.find(params[:survey_id])
    @cat = @survey.cats.new
  end

  # GET /cats/1/edit
  def edit
    @survey = Survey.find(params[:survey_id])
    @cat = @survey.cats.find(params[:id])
  end

  # POST /cats
  # POST /cats.json
  def create
    @survey = Survey.find(params[:survey_id])
    @cat = @survey.cats.new(cat_params)
    # debugger
    respond_to do |format|
      if @cat.save
        format.html { redirect_to survey_path(@survey), notice: 'Cat was successfully created.' }
        format.json { render :show, status: :created, location: @cat }
      else
        format.html { render :new }
        format.json { render json: survey_cats_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cats/1
  # PATCH/PUT /cats/1.json
  def update
    @survey = Survey.find(params[:survey_id])
    @cat = @survey.cats.find(params[:id])
    respond_to do |format|
      # debugger
      if @cat.update(cat_params)
        format.html { redirect_to survey_path(@survey), notice: 'CAT was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat }
      else
        format.html { render :edit }
        format.json { render json: survey_cats_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cats/1
  # DELETE /cats/1.json
  def destroy
    @cat.destroy
    respond_to do |format|
      format.html { redirect_to survey_cats_path, notice: 'Cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat
      @survey = Survey.find(params[:survey_id])
      @cat = @survey.cats.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_params
      params.require(:cat).permit(:before_street, :before_city, :before_state, :before_zip, :before_type_id, :after_street, :after_city, :after_state, :after_zip, :after_type_id, :location_prompting_visit, :amount_spent_today)
    end

    def check_role
      if current_user.user?
        redirect_to '/pages/about', notice: 'You must be authorized to use the CAT surveys'
      end
    end
end
