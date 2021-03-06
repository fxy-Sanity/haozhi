package com.haozhi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Course;
import com.haozhi.entity.CourseType;
import com.haozhi.entity.StudyCourse;
import com.haozhi.mapper.CourseMapper;
import com.haozhi.service.CourseService;

@Service("courseService")
public class CourseServiceImpl implements CourseService {
	@Autowired
	private  CourseMapper courseMapper;
	
	@Override
	public List<Course> getAllCourse() {
		return courseMapper.getAllCourse();
	}
	
	@Override
	public List<Course> getHostCourse() {
		return courseMapper.getHostCourse();
	}

	@Override
	public boolean insertCourse(Course course) {
		if(courseMapper.insertCourse(course)>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Course> getCourseByCtid(Integer ctid) {
		return courseMapper.getCourseByCtid(ctid);
	}

	@Override
	public List<Course> getHostByCtid(Integer ctid) {
		return courseMapper.getHostByCtid(ctid);
	}

	@Override
	public List<Course> getCourseDescTime(Integer ctid) {
		return courseMapper.getCourseDescTime(ctid);
	}

	@Override
	public List<Course> getAllHostCourse() {
		return courseMapper.getAllHostCourse();
	}

	@Override

	public List<Course> getAllCourseBypage(int rows, int page) {
		// TODO Auto-generated method stub
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagenumber",page);
		map.put("pagesize", rows);
		List<Course> list=courseMapper.getCoursebypageDescTime(map);
		
		return list;
	}

	@Override
	public int findAlltype() {
		// TODO Auto-generated method stub
		return courseMapper.countCoursenumber();
	}
	@Override
	public Course getCourseById(Integer courseid) {
		return courseMapper.getCourseById(courseid);

	}

	@Override
	public List<StudyCourse> getAllStudentNumber(Integer courseid) {
		// TODO Auto-generated method stub
		return courseMapper.getAllStudents(courseid);
	}

	@Override
	public List<Course> getStudentsbypageDescTime(Integer p, Integer courseid) {
		// TODO Auto-generated method stub
		Map<String,Object> hashmap=new HashMap<String,Object>();
		hashmap.put("pagesize", 24);
		hashmap.put("pagenumber", p);
		hashmap.put("courseid", courseid);
		return courseMapper.getStudentsbypageDescTime(hashmap);
	}

	

}
