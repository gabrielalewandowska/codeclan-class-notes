package example.codeclan.com.sql_start_point;

/**
 * Created by user on 30/08/2017.
 */

public class Runner {

    public static void main(String[] args) {
        Artist artist1 = new Artist("Led Zeppelin");
        artist1.save();
        Album album1 = new Album("Title", "Genre", artist1);
        album1.save();
        Album.all();
    }
}
