package com.example.user.wordcounterandroid;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class WordCounterActivity extends AppCompatActivity {
    EditText userInputEditText;
    Button countWordsButton;
    TextView resultText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_word_counter);

        userInputEditText = (EditText) findViewById(R.id.userInputEditText);
        countWordsButton = (Button) findViewById(R.id.countButton);
        resultText = (TextView) findViewById(R.id.countResultText);
    }

    public void onCountButtonClicked(View button){
        String userInput = userInputEditText.getText().toString();
        int numberOfWords = WordCounter.countWords(userInput);
        String numberOfWordsAsString = Integer.toString(numberOfWords);
        resultText.setText(numberOfWordsAsString);
    }
}
