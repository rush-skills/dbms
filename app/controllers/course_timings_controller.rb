class CourseTimingsController < ApplicationController
  before_action :set_course_timing, only: [:show, :edit, :update, :destroy]

  # GET /course_timings
  # GET /course_timings.json
  def index
    @course_timings = CourseTiming.all
  end

  # GET /course_timings/1
  # GET /course_timings/1.json
  def show
  end

  # GET /course_timings/new
  def new
    @course_timing = CourseTiming.new
  end

  # GET /course_timings/1/edit
  def edit
  end

  # POST /course_timings
  # POST /course_timings.json
  def create
    @course_timing = CourseTiming.new(course_timing_params)

    respond_to do |format|
      if @course_timing.save
        format.html { redirect_to @course_timing, notice: 'Course timing was successfully created.' }
        format.json { render :show, status: :created, location: @course_timing }
      else
        format.html { render :new }
        format.json { render json: @course_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_timings/1
  # PATCH/PUT /course_timings/1.json
  def update
    respond_to do |format|
      if @course_timing.update(course_timing_params)
        format.html { redirect_to @course_timing, notice: 'Course timing was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_timing }
      else
        format.html { render :edit }
        format.json { render json: @course_timing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_timings/1
  # DELETE /course_timings/1.json
  def destroy
    @course_timing.destroy
    respond_to do |format|
      format.html { redirect_to course_timings_url, notice: 'Course timing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_timing
      @course_timing = CourseTiming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_timing_params
      params.require(:course_timing).permit(:timing_id, :course_offering_id, :classroom_id)
    end
end
