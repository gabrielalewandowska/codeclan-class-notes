package com.example.user.libraryclassgenerics;

import java.lang.reflect.Array;
import java.util.ArrayList;

/**
 * Created by user on 14/09/2017.
 */

public class Borrower<T> {

    private String name;
    private ArrayList<T> borrowedItems;

    public Borrower(String name) {
        this.name = name;
        this.borrowedItems = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public void addBorrowedItem(T item) {
        this.borrowedItems.add(item);
    }

    public void returnBorrowedItem(T item){
        this.borrowedItems.remove(item);
    }

    public ArrayList<T> getBorrowedItems() {
        return borrowedItems;
    }



}
