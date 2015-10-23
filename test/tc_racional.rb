# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion
require "../lib/racional.rb" 
require "test/unit" 

class Test_Fraccion < Test::Unit::TestCase

def test_simple
    #assert_equal(4, Fraccion.new(2).add(2) ) 
    assert_equal(1/5, Fraccion.new(1,2).multiply(Fraccion.new(1,3)) )
  end

end
