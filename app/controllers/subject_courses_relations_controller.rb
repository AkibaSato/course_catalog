class SubjectCoursesRelationsController < ApplicationController
  before_action :set_subject_courses_relation, only: [:show, :edit, :update, :destroy]

  # GET /subject_courses_relations
  # GET /subject_courses_relations.json
  def index
    @subject_courses_relations = SubjectCoursesRelation.all
  end

  # GET /subject_courses_relations/1
  # GET /subject_courses_relations/1.json
  def show
  end

  # GET /subject_courses_relations/new
  def new
    @subject_courses_relation = SubjectCoursesRelation.new
  end

  # GET /subject_courses_relations/1/edit
  def edit
  end

  # POST /subject_courses_relations
  # POST /subject_courses_relations.json
  def create
    @subject_courses_relation = SubjectCoursesRelation.new(subject_courses_relation_params)

    respond_to do |format|
      if @subject_courses_relation.save
        format.html { redirect_to @subject_courses_relation, notice: 'Subject courses relation was successfully created.' }
        format.json { render :show, status: :created, location: @subject_courses_relation }
      else
        format.html { render :new }
        format.json { render json: @subject_courses_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_courses_relations/1
  # PATCH/PUT /subject_courses_relations/1.json
  def update
    respond_to do |format|
      if @subject_courses_relation.update(subject_courses_relation_params)
        format.html { redirect_to @subject_courses_relation, notice: 'Subject courses relation was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_courses_relation }
      else
        format.html { render :edit }
        format.json { render json: @subject_courses_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_courses_relations/1
  # DELETE /subject_courses_relations/1.json
  def destroy
    @subject_courses_relation.destroy
    respond_to do |format|
      format.html { redirect_to subject_courses_relations_url, notice: 'Subject courses relation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_courses_relation
      @subject_courses_relation = SubjectCoursesRelation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_courses_relation_params
      params.require(:subject_courses_relation).permit(:subject_id, :course_id)
    end
end
