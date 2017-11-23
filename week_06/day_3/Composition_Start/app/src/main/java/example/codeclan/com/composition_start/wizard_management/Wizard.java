package example.codeclan.com.composition_start.wizard_management;

/**
 * Created by user on 28/08/2017.
 */

public class Wizard {
    String name;
    Flying ride;

    public Wizard(String name, Flying ride){
        this.name = name;
        this.ride = ride;
    }

    public String getName(){
        return this.name;
    }

    public Flying getRide(){
        return this.ride;
    }

    public String fly(){
        return this.ride.fly();
    }

    public void setRide(Flying ride){
        this.ride = ride;
    }

}
