package example.codeclan.com.start_point;

/**
 * Created by user on 29/08/2017.
 */

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;

import org.junit.*;
import org.mockito.Mockito;

public class GameTest {

    Game game;
    Rollable dice;
    Rollable spyDice;

    @Before
    public void before(){
        dice = Mockito.mock(Rollable.class);
        game = new Game(dice);
    }

    @Test
    public void testTakeTurnWinEhen4(){
        Mockito.when(dice.roll()).thenReturn(3);
        boolean result = game.nextTurn();

        Mockito.verify(dice, Mockito.times(1)).roll();
        assertEquals(true, result);
    }

}
