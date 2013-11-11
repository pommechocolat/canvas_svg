describe "Basket class", ->
  
  test = {}
 
  beforeEach ->
    test.basket = new Basket()
    test.item = new Item 1, "MacBookAir", "Newer, thinner, better", 799
    test.item2 = new Item 2, "magic track pad", "beter than mouse", 50
#    
#    #describe "Test set 1", ->
#  afterEach -> 
#    test.basket = null
#    test.item = null
#    test.item2 = null
    
  it "Should be able to add item to basket", ->
    priorCountVal = test.basket.distinctCount
    test.basket.add(test.item, 1)
    expect(test.basket.distinctCount).toEqual priorCountVal+1
#    
#    #describe "Test set 2", ->
#    
  it "should be able to update quantity when adding an item already in the basket", ->
    test.basket.add(test.item, 1)
    priorCountVal = test.basket.getQuantity(1)
    test.basket.add(test.item, 1)
    expect(test.basket.getQuantity(1)).toEqual priorCountVal+1

    