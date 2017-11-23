package com.example.user.exceptionsexample;

/**
 * Created by user on 11/09/2017.
 */

public class Runner {
    public static void main(String[] args){
        try {
            int one = 1;
            int zero = 0;
            System.out.println(one / zero);
            System.out.println("Hello!");
        } catch (ArithmeticException e){
            System.out.println("ERROR: " + e.getMessage());

        } catch(Exception e) {
            System.out.println("Unspecified error");
        }
    }
}
