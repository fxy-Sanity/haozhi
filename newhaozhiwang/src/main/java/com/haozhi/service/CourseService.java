package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.Course;
import com.haozhi.entity.StudyCourse;

public interface CourseService {
	List<Course> getAllCourse();  //查询所有课程
	
	List<Course> getHostCourse(); //查询热门课程显示前三个 
	
	boolean insertCourse(Course course);  //插入课程
	
	List<Course> getCourseByCtid(Integer ctid);  //通过课程类型查所有课程
	
	List<Course> getHostByCtid(Integer ctid);  //通过课程类型查热门课程的头三条
	
	List<Course> getCourseDescTime(Integer ctid);  //查询课程按创建时间排序
	
	List<Course> getAllHostCourse();  //查询所有热门课程


	List<Course> getAllCourseBypage(int rows, int page);

	int findAlltype();

	
	Course getCourseById(Integer courseid); // 通过课程号查课程

	List<StudyCourse> getAllStudentNumber(Integer courseid);

	List<Course> getStudentsbypageDescTime(Integer p, Integer courseid);
}
