package com.example.user.wordcounterandroid;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class WordCounter extends AppCompatActivity {

    public static int countWords(String userInput){
        if(userInput == null || userInput.trim().isEmpty()){
            return 0;
        }
        return userInput.split(" ").length;
    }


}
