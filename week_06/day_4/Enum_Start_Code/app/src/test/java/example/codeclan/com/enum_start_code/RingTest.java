package example.codeclan.com.enum_start_code;

/**
 * Created by user on 29/08/2017.
 */

import static org.junit.Assert.*;
import org.junit.*;

public class RingTest {

    Ring ring;

    @Before
    public void before(){
        ring = new Ring(MetalType.GOLD, GemType.AMBER);
    }

    @Test
    public void canGetMetal(){
        assertEquals(MetalType.GOLD,ring.getMetal());
    }

    @Test
    public void testGetMetal(){
        assertEquals(MetalType.GOLD, ring.getMetal());
    }

    @Test
    public void testGetGem(){
        assertEquals(GemType.AMBER, ring.getGem());
    }

}