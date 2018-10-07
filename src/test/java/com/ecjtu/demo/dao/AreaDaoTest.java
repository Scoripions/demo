package com.ecjtu.demo.dao;

import com.ecjtu.demo.entity.Area;
import javafx.application.Application;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AreaDaoTest {


    @Autowired
    private AreaDao areaDao;

    @Test
    @Ignore
    public void queryArea() {
        List<Area> areas = areaDao.queryArea();
        assertEquals(4,areas.size());
    }

    @Test
    @Ignore
    public void queryAreaById() {
        Area area = areaDao.queryAreaById(1);
        assertEquals("西苑",area.getAreaName());
    }

    @Test
    @Ignore
    public void insertArea() {
        Area area = new Area();
        area.setAreaName("中英街");
        area.setPriority(5);
        int i = areaDao.insertArea(area);
        System.out.println(i);
    }

    @Test
    @Ignore
    public void updateArea() {
        Area area = areaDao.queryAreaById(5);
        area.setLastEditTime(new Date());
        int i = areaDao.updateArea(area);
        System.out.println(i);
    }

    @Test
    public void deleteArea() {
        int i = areaDao.deleteArea(5);
        System.out.println(i);
    }
}