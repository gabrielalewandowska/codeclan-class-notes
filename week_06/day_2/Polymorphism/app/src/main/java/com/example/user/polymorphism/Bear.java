package com.example.user.polymorphism;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by user on 06/09/2017.
 */

public class Bear {
    private int energy;

    public Bear(){
        energy = 0;
    }

    public void eat(Edible food) {
        energy += food.getCalories();
    }

    public int getEnergy(){
        return energy;
    }
}
