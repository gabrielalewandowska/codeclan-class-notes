package com.example.user.libraryclassgenerics;

import java.util.ArrayList;

/**
 * Created by user on 14/09/2017.
 */

public class Library<T> {
    private ArrayList<T> stock;
    private ArrayList<T> lent;

    public Library() {
        this.stock = new ArrayList<>();
        this.lent = new ArrayList<>();
    }

    public ArrayList<T> getStock() {
        return stock;
    }

    public ArrayList<T> getLent() {
        return lent;
    }



    public void addItemToStock(T item){
        this.stock.add(item);
    }

    public void issueItemToBorrower(T item, Borrower borrower){
        this.stock.remove(item);
        this.lent.add(item);
        borrower.addBorrowedItem(item);
    }

    public void returnItemFromBorrower(T item, Borrower borrower){
        borrower.returnBorrowedItem(item);
        this.lent.remove(item);
        this.stock.add(item);
    }
}
