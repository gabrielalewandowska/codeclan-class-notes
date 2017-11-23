package com.example.user.tddintro;

import org.junit.Assert.*;
import org.junit.Test;
import org.junit.*;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 05/09/2017.
 */

public class RobotTest {

    Robot robot;

    @Before
    public void before(){
       robot = new Robot("C3PO", "Gold");
    }

    @Test
    public void testRobotSetup(){
        assertEquals("C3PO", robot.getName());
        assertEquals("Gold", robot.getColour());
    }

    @Test
    public void checkBattery(){
        assertEquals(100.0, robot.getBattery(), 0.01);
    }

    @Test
    public void checkMakeDrink(){
        assertEquals("I am making tea", robot.makeDrink("tea"));
        assertEquals(90.0, robot.getBattery(), 0.01 );
    }

    @Test
    public void checkWashDishes(){
        assertEquals("I am washing the dishes", robot.washDishes());
        assertEquals(70.0, robot.getBattery(), 0.01);
    }

    @Test
    public void checkDoDusting(){
        assertEquals("I am dusting", robot.doDusting());
        assertEquals(80.0, robot.getBattery(), 0.01);
    }

    @Test
    public void checkRechargeBattery(){
        robot.rechargeBattery();
        assertEquals(100.0, robot.getBattery(), 0.01);
    }
}
