package example.codeclan.com.composition_start;

/**
 * Created by user on 28/08/2017.
 */

import static junit.framework.Assert.assertEquals;
import static org.junit.Assert.*;
import org.junit.*;

import example.codeclan.com.composition_start.wizard_management.*;

public class WizardTest {

    Wizard wizard;
    Broomstick broomstick;

    @Before
    public void before(){
        broomstick = new Broomstick("Nimbus", 10);
        wizard = new Wizard("Toby", broomstick);
    }

    @Test
    public void hasName(){
        assertEquals("Toby", wizard.getName());
    }

    @Test
    public void hasBroomstick(){
        Flying ride = wizard.getRide();
        Broomstick broomstick = (Broomstick)ride;
        assertEquals("Nimbus", broomstick.getBrand());
    }

    @Test
    public void canFly(){
        assertEquals(broomstick.fly(),"mounting broom, running, skipping, flying!");
    }

    @Test
    public void canFlyMagicCarpet(){
        Flying carpet = new MagicCarpet("red");
        Wizard aladdin = new Wizard("Aladdin", carpet);
        String result = aladdin.fly();
        assertEquals("Hovering up, straightening out, flying off!", result);
    }
}
