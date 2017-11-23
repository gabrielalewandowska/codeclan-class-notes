public class Bear{

    private String name;
    private Salmon[] belly;

    public Bear(String name){
      this.name = name;
      this.belly = new Salmon[5];
    }

    public void eat(Salmon salmon){
      if ( this.isBellyFull() ){
        return;
      }

      int foodCount = foodCount();
      belly[foodCount] = salmon;
    }

    public String getName(){
      return this.name;
    }

    public int foodCount(){
      int count = 0;
      for(Salmon salmon : this.belly){
        if (salmon != null){
          count++;
        }
      }
      return count;
    }

    public boolean isBellyFull(){
      return this.foodCount() == this.belly.length;
    }

    public void sleep(){
      //this.belly = new Salmon[5];
      for ( int i= 0; i < belly.length; i++){
        belly[i] = null;
      }
      // for(Salmon foodItem : this.belly){
      //   foodItem = null;
      // }
    }
}
