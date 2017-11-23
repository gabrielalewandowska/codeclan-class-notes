class Play{
  public static void main(String args[]){

    double[] myArray = {1.9, 1.2, 4.7, 2.1};


  // STANDARD FOR LOOP
    // for(int i = 0; i < myArray.length; i++){
    //   System.out.println(myArray[i]);
    // }

  // ENHANCED FOR LOOP
    for(double element: myArray){
      System.out.println(element);
    }


    // do {
    //   System.out.println("value of x : " + x);
    //   x++;
    // } while( x < 20 );


    // while( x < 20 ){
    //   System.out.println("value of x : " + x);
    //   x++;
    // }




    // char grade = 'C';


    // switch(grade){
    //   case 'A' :
    //     System.out.println("Excellent");
    //     break;
    //   case 'B' :
    //     System.out.println("Well done");
    //     break;
    //   case 'C' :
    //     System.out.println("Decent");
    //     break;
    //   case 'D' :
    //     System.out.println("Passed");
    //     break;
    //   default:
    //     System.out.println("Failed");
    // }
    // if(x < 20){
    //   System.out.println("Is less than 20");
    // } else{
    //   System.out.println("Is greater than 20");
    // }
  }
}
