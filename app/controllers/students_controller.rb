class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :remove_course]


  def remove_course

    @course_id = @student.course_id
    @student.course_id = nil

    if @student.save
      redirect_to(setup_courses_path(@course_id), notice: "Etudiant retiré du cours")
    else
      redirect_to(setup_courses_path(@course_id), notice: "L'étudiant n'a pas pu être retiré du cours")
    end
  end

   def index 
     @students= Student.all
     @courses= Course.all
  end

  def show
    begin
      @student = Student.find params[:id]
    rescue => exception
      redirect_to students_path, :flash => { :error => "L'étudiant #{params[:id]} est introuvable, vous avez été redirigé " }
    end
  end

  def new
   @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, :flash => { :notice => 'Etudiant créé avec succès'} }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Mise à jour effectuée' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy 
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_path, notice: 'Etudiant détruit' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      begin
        @student = Student.find(params[:id])
      rescue
        @student = 0
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :age, :picture)
    end

end
