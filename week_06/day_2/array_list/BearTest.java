import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BearTest{
  Bear bear;
  Salmon salmon;

  @Before
  public void before(){
    bear = new Bear("Baloo");
    salmon = new Salmon();
  }

  @Test
  public void hasName(){
    assertEquals("Baloo", bear.getName());
  }

  @Test
  public void bellyStartsEmpty(){
    assertEquals( 0, bear.foodCount() );
  }

  @Test
  public void canEatSalmon(){
    bear.eat(salmon);
    assertEquals( 1, bear.foodCount() );
  }

  @Test
  public void shouldEmptyBellyAfterSleeping(){
    bear.eat(salmon);
    assertEquals( 1, bear.foodCount() );
    bear.sleep();
    assertEquals( 0, bear.foodCount() );
  }
  
}
