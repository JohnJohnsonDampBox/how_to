class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  before_filter :get_alcohol
  # GET /steps
  # GET /steps.json
  def index
    @steps = @alcohol.steps
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = @alcohol.steps.find(params[:id])
  end

  # GET /steps/new
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = @alcohol.steps.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to [@alcohol,@step], notice: 'Step was successfully created.' }
        format.json { render json: [@alcohol, @step],
                              status: :created,
                              location: [@alcohol, @step] }
      else
        format.html { render action: 'new' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to [@alcohol,@step], notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to alcohol_steps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:step_number, :description)
    end

    def get_alcohol
      @alcohol = Alcohol.find(params[:alcohol_id])
    end
end
