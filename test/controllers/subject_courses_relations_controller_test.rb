require 'test_helper'

class SubjectCoursesRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_courses_relation = subject_courses_relations(:one)
  end

  test "should get index" do
    get subject_courses_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_courses_relation_url
    assert_response :success
  end

  test "should create subject_courses_relation" do
    assert_difference('SubjectCoursesRelation.count') do
      post subject_courses_relations_url, params: { subject_courses_relation: { course_id: @subject_courses_relation.course_id, subject_id: @subject_courses_relation.subject_id } }
    end

    assert_redirected_to subject_courses_relation_url(SubjectCoursesRelation.last)
  end

  test "should show subject_courses_relation" do
    get subject_courses_relation_url(@subject_courses_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_courses_relation_url(@subject_courses_relation)
    assert_response :success
  end

  test "should update subject_courses_relation" do
    patch subject_courses_relation_url(@subject_courses_relation), params: { subject_courses_relation: { course_id: @subject_courses_relation.course_id, subject_id: @subject_courses_relation.subject_id } }
    assert_redirected_to subject_courses_relation_url(@subject_courses_relation)
  end

  test "should destroy subject_courses_relation" do
    assert_difference('SubjectCoursesRelation.count', -1) do
      delete subject_courses_relation_url(@subject_courses_relation)
    end

    assert_redirected_to subject_courses_relations_url
  end
end
