package com.example.user.polymorphism;

import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 06/09/2017.
 */

public class BearTest {

    @Test
    public void canEatSalmon() {
        Bear bear = new Bear();
        Salmon fishy = new Salmon();
        bear.eat(fishy);
        assertEquals(200, bear.getEnergy());
    }

    @Test
    public void canEatTrout(){
        Bear bear = new Bear();
        Trout fishy = new Trout();
        bear.eat(fishy);
        assertEquals(50, bear.getEnergy());
    }
}

