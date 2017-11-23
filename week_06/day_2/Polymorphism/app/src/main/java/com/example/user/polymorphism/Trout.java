package com.example.user.polymorphism;

/**
 * Created by user on 06/09/2017.
 */

public class Trout implements Edible {
    private int calories;

    public Trout(){
        calories = 50;
    }

    public int getCalories() {
        return calories;
    }
}
