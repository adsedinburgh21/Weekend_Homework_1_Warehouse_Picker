require( 'minitest/autorun' )
require_relative( '../homework_week1_warehouse_picker.rb' )

class TestHomeworkWeek1WarehousePicker < MiniTest::Test

  def setup
    
    @warehouse = {
      a10: "rubber band",
      a9: "glow stick",
      a8: "model car",
      a7: "bookmark",
      a6: "shovel",
      a5: "rubber duck",
      a4: "hanger",
      a3: "blouse",
      a2: "stop sign",
      a1: "needle",
      c1: "rusty nail",
      c2: "drill press",
      c3: "chalk",
      c4: "word search",
      c5: "thermometer",
      c6: "face wash",
      c7: "paint brush",
      c8: "candy wrapper",
      c9: "shoe lace",
      c10: "leg warmers",
      b1: "tyre swing",
      b2: "sharpie",
      b3: "picture frame",
      b4: "photo album",
      b5: "nail filer",
      b6: "tooth paste",
      b7: "bath fizzers",
      b8: "tissue box",
      b9: "deodorant",
      b10: "cookie jar"
    }
  end

  #   #1
  def test_return_item()
    result= return_item(:b5)
    assert_equal("nail filer", result)
  end


  #  #2
  def test_return_bay()
    result = return_bay("nail filer")
    assert_equal(:b5, result)
  end


  #  #3
  def test_return_multi_items()
    result = return_multi_items(:b5, :b10, :b6)
    assert_equal(["nail filer", "cookie jar", "tooth paste"], result)
  end

  def test_number_of_bays_apart()
    result= number_of_bays_apart(:b5, :b10, :b6)
    assert_equal( 5, result)
  end


  #  #4
  def test_return_multi_bays()
    result= return_multi_bays("shoe lace", "rusty nail", "leg warmers")
    assert_equal([:c9, :c1, :c10], result)
  end

















end


