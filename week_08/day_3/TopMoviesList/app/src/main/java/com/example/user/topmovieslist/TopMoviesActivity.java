package com.example.user.topmovieslist;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

import static java.security.AccessController.getContext;

public class TopMoviesActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_top_movies);

        TopMovies topMovies = new TopMovies();
        ArrayList<Movie> list = topMovies.getList();

        TopMoviesAdapter movieAdapter = new TopMoviesAdapter(this, list);

        ListView listView = (ListView) findViewById(R.id.list);
        listView.setAdapter(movieAdapter);


    }

    public void getMovie(View listItem){
        Movie movie = (Movie) listItem.getTag();
        Log.d("Movie Title:", movie.getTitle());

        Intent intent = new Intent(this, FavouritesActivity.class);
        intent.putExtra("movieToAdd", movie);
        startActivity(intent);
    }




}
