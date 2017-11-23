package example.codeclan.com.try_catch_start;

/**
 * Created by user on 11/09/2017.
 */

public class ArgumentNullException extends RuntimeException {
    public ArgumentNullException(String argumentName){
        super("Argument '" + argumentName + "' is null");
    }
}
