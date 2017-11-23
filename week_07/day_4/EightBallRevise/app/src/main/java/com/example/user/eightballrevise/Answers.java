package com.example.user.eightballrevise;

import org.junit.Before;

import java.util.ArrayList;

/**
 * Created by user on 14/09/2017.
 */

public class Answers {
    private ArrayList<String> answers;

    public Answers(){
        this.answers = new ArrayList<>();
    }

    public int numberOfAnswers(){
        return answers.size();
    }
}
