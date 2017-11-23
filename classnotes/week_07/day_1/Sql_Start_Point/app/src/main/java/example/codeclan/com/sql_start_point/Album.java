package example.codeclan.com.sql_start_point;

/**
 * Created by user on 30/08/2017.
 */

import db.SqlRunner;

public class Album {

    private String title;
    private String genre;
    private Artist artist;
    private int id;

    public Album(String title, String genre, Artist artist) {
        this.title = title;
        this.genre = genre;
        this.artist = artist;
    }

    public String getTitle() {
        return this.title;
    }

    public String getGenre() {
        return this.genre;
    }

    public Artist getArtist()  {
        return this.artist;
    }

    public void save() {
        String sql = "";
        this.id = SqlRunner.executeUpdate(sql);
        SqlRunner.closeConnection();
    }

}