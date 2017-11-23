package com.example.user.inheritance;

/**
 * Created by user on 05/09/2017.
 */

public abstract class Vehicle{

    int numWheels = 4;

    public Vehicle(int numWheels){
        this.numWheels = numWheels;
    }

    public int getNumWheels() {
        return this.numWheels;
    }

    public String startEngine(){
        return "Vrrrm";
    }
}
