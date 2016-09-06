package com.haozhi.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CgroupMapperTest {
	
	@Autowired
	private CgroupMapper groupMapper;
	
	@Test
	public void testGetListGroups() {
		System.out.println(groupMapper.getHostGroups());
	}
	
	@Test
	public void testGetNewGroups() {
		System.out.println(groupMapper.getNewGroups());
	}
	
	@Test
	public void testSearchGroups() {
		System.out.println(groupMapper.searchGroups("英语"));
	}

}
