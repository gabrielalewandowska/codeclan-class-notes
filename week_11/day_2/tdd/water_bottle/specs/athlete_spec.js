var assert = require("assert");
var Athlete = require("../athlete");
var WaterBottle = require("../water_bottle");

describe("Athlete", function(){

  beforeEach(function(){
    athlete = new Athlete();
    bottle = new WaterBottle();
  });

  it("hydration should start at 100", function(){
    assert.strictEqual(athlete.hydration, 100);
  })

  it("distanceCovered should start at 0", function(){
    assert.strictEqual(athlete.distanceCovered, 0);
  })

  it("running decreases hydration", function(){
    athlete.run();
    assert.strictEqual(athlete.hydration, 90);
  })

  it("running increases distanceCovered", function(){
    athlete.run();
    assert.strictEqual(athlete.distanceCovered, 10);
  })

  it("drinking restores hydration", function(){
    athlete.drink(bottle);
    assert.strictEqual(athlete.hydration, 100);
  })

  it("drinking empties bottle", function(){
    athlete.drink(bottle);
    assert.strictEqual(bottle.volume, 0);
  })
  
});
