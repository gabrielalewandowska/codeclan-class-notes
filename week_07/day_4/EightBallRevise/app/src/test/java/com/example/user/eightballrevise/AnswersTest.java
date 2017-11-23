package com.example.user.eightballrevise;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

/**
 * Created by user on 14/09/2017.
 */

public class AnswersTest {


    @Before
    public void before(){
        Answers answers = new Answers;
    }

    @Test
    public void startsWithNoAnswers(){
        Answers answers = new Answers();
        assertEquals(0, answers.numberOfAnswers());
    }
}
