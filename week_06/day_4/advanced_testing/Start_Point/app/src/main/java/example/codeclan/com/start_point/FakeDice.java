package example.codeclan.com.start_point;

/**
 * Created by user on 07/09/2017.
 */

public class FakeDice implements Rollable {
    private int result;

    public FakeDice(int result){
        this.result = result;
    }

    public int roll(){
        return result;
    }
}
