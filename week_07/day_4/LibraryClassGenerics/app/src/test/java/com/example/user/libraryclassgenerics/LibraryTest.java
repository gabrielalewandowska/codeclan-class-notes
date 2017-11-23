package com.example.user.libraryclassgenerics;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

/**
 * Created by user on 14/09/2017.
 */

public class LibraryTest {
    private Library<Book> library;
    private Borrower borrower1;
    private Book book1;

    @Before
    public void before(){
        library = new Library<>();
        borrower1 = new Borrower("Stephen Fry");
        book1 = new Book("Brave New World");
    }

    @Test
    public void libraryStockStartsEmpty(){
        assertEquals(0, library.getStock().size());
    }

    @Test
    public void borrowerStartsWithoutItems(){
        assertEquals(0, borrower1.getBorrowedItems().size());
    }

    @Test
     public void libraryCanAddItem(){
        library.addItemToStock(book1);
        assertEquals(1, library.getStock().size());
        assertEquals(book1, library.getStock().get(0));
    }

    @Test
    public void libraryCanIssueItem(){
        library.issueItemToBorrower(book1, borrower1);
        assertEquals(0, library.getStock().size());
        assertEquals(1, library.getLent().size());
        assertEquals(book1, borrower1.getBorrowedItems().get(0));
    }

    @Test
    public void borrowerCanReturnItem(){
        library.issueItemToBorrower(book1, borrower1);
        library.returnItemFromBorrower(book1, borrower1);
        assertEquals(0, borrower1.getBorrowedItems().size());
    }
}
