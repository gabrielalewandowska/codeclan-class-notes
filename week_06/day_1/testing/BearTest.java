import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

public class BearTest{

  Bear bear;

  @Before
  public void before(){
    bear = new Bear("Baloo", 25, 300.20);
  }

  @Test
  public void readyToHibernateIfHeavy(){
    assertEquals( true, bear.readyToHibernate() );
  }

  @Test
  public void notReadyToHibernateIfLight(){
    Bear thinBear = new Bear("Yogi", 12, 80);
    assertEquals( false, thinBear.readyToHibernate() );
  }

  @Test
  public void hasName(){
    assertEquals( "Baloo", bear.getName() );
  }

  @Test
  public void hasAge(){
    assertEquals(25, bear.getAge());
  }

  @Test
  public void hasWeight(){
    assertEquals( 300.20, bear.getWeight(), 0.01);
  }
}
