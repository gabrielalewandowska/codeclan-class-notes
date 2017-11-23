package codeclan.com.packagesexample.human;

import codeclan.com.packagesexample.animal.*;

public class Trainer extends Human {
    public void teach(Dog dog) {
        super.talk();
        dog.setName("Pet");
    }
}
