package example.codeclan.com.enum_start_code;

/**
 * Created by user on 29/08/2017.
 */

public class Ring {

    private MetalType metal;
    private GemType gem;

    public Ring(MetalType metal, GemType gem) {
        this.metal = metal;
        this.gem = gem;
    }

    public MetalType getMetal(){
        return this.metal;
    }


    public GemType getGem() {
        return gem;
    }
}
