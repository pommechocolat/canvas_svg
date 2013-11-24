describe "Basket class", ->
  
  test = {}
 
  beforeEach ->
    test.basket = new Basket()
    test.item = new Item 1, "MacBookAir", "Newer, thinner, better", 799
    test.item2 = new Item 2, "magic track pad", "beter than mouse", 50
    test.basket.add(test.item2, 1)
    
#    #describe "Test set 1", ->
  afterEach -> 
    test.basket = null
    test.item = null
    test.item2 = null
    
  it "Should be able to add item to basket", ->
    priorCountVal = test.basket.distinctCount
    test.basket.add(test.item, 1)
    expect(test.basket.distinctCount).toEqual priorCountVal + 1

  #describe "Test set 2", ->
  it "should be able to update quantity when adding an item already in the basket", ->
    test.basket.add(test.item, 1)
    priorCountVal = test.basket.getQuantity(1)
    test.basket.add(test.item, 1)
    expect(test.basket.getQuantity(1)).toEqual priorCountVal + 1
  it "should update the total count by 1 when adding a brand new item", ->
    priorCountVal = test.basket.totalCount 
    test.basket.add(test.item, 1)
    expect(test.basket.totalCount).toEqual priorCountVal + 1
  it "should increase total count by 1 when adding one more of an item that already exists", ->
    test.basket.add(test.item, 1)
    priorCountVal = test.basket.totalCount
    test.basket.add(test.item, 1)
    expect(test.basket.totalCount).toEqual priorCountVal + 1
  it "should update distinct count when adding brand new item", ->
    priorCountVal = test.basket.distinctCount
    test.basket.add(test.item, 1)
    expect(test.basket.distinctCount).toEqual priorCountVal + 1
  it "should not update distinct count when adding more of an item that already exists", ->
    test.basket.add(test.item, 1)
    priorCountVal = test.basket.distinctCount
    test.basket.add(test.item, 2)
    expect(test.basket.distinctCount).toEqual priorCountVal
        
  describe "Basket helper fonctions", ->
    describe "getQuantity", ->
      it "doit renvoyer false si l'id de l'item n'est pas dans le tableau des items", ->
        expect(test.basket.getQuantity(12345)).toBeFalsy()
      it "doit renvoyer false si l'id n'est pas un bon argument (ex string)", ->
        expect(test.basket.getQuantity("Hello !!")).toBeFalsy()
      it "doit renvoyer la bonne quantité pour un id valide", ->
        expect(test.basket.getQuantity(2)).toEqual(1)
        
    describe "itemExistsInBasket", ->
      it "should return false if item id does not exist", ->
        expect(test.basket.itemExistsInBasket(23455)).toBeFalsy()
      it "should return true if item id does exist", ->
        expect(test.basket.itemExistsInBasket(2)).toBeTruthy()
      it "should return false if given an invalid argument, such as a string", ->
        expect(test.basket.itemExistsInBasket("hello")).toBeFalsy()

    describe "getItemLocation", ->
      it "should return the location of item when given valid id", ->
        expect(test.basket.getItemLocation(2)).toEqual 0 
      it "should return false if item doesn't exist", ->
        expect(test.basket.getItemLocation(39)).toBeFalsy()
      it "should return false if given a invalid input", ->
        expect(test.basket.getItemLocation("hello")).toBeFalsy()