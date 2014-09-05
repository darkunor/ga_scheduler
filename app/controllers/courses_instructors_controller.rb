class CoursesInstructorsController < ApplicationController
  # GET /courses_instructors
  # GET /courses_instructors.json
  def index
    @courses_instructors = CoursesInstructor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses_instructors }
    end
  end

  # GET /courses_instructors/1
  # GET /courses_instructors/1.json
  def show
    @courses_instructor = CoursesInstructor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @courses_instructor }
    end
  end

  # GET /courses_instructors/new
  # GET /courses_instructors/new.json
  def new
    @courses_instructor = CoursesInstructor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @courses_instructor }
    end
  end

  # GET /courses_instructors/1/edit
  def edit
    @courses_instructor = CoursesInstructor.find(params[:id])
  end

  # POST /courses_instructors
  # POST /courses_instructors.json
  def create
    @courses_instructor = CoursesInstructor.new(params[:courses_instructor])

    respond_to do |format|
      if @courses_instructor.save
        format.html { redirect_to @courses_instructor, notice: 'Courses instructor was successfully created.' }
        format.json { render json: @courses_instructor, status: :created, location: @courses_instructor }
      else
        format.html { render action: "new" }
        format.json { render json: @courses_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses_instructors/1
  # PUT /courses_instructors/1.json
  def update
    @courses_instructor = CoursesInstructor.find(params[:id])

    respond_to do |format|
      if @courses_instructor.update_attributes(params[:courses_instructor])
        format.html { redirect_to @courses_instructor, notice: 'Courses instructor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @courses_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses_instructors/1
  # DELETE /courses_instructors/1.json
  def destroy
    @courses_instructor = CoursesInstructor.find(params[:id])
    @courses_instructor.destroy

    respond_to do |format|
      format.html { redirect_to courses_instructors_url }
      format.json { head :no_content }
    end
  end
end
