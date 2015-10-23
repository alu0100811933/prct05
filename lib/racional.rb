# Implementar en este fichero la clase para crear objetos racionales
require "./gcd.rb" 

class Fraccion 
attr_reader :n, :d
  
def initialize(n, d)
    @n, @d = n, d 
  end

  def to_s

a=gcd(@n,@d)

if a!=1
 num=@n/a
 den=@d/a
    "#{num}/#{den}"
else

    "#{@n}/#{@d}"

end #if

  end

  def *(other)

a=@n*other.n
b=@d*other.d
g=gcd(a, b)

if g!=1

a=a/g
b=b/g
end
    Fraccion.new(a, b)
  end


  def /(other)

a=@n*other.d
b=@d*other.n
g=gcd(a, b)

if g!=1

a=a/g
b=b/g
end #if
    Fraccion.new(a, b)
  end

  def +(other)

den=@d*other.d
num1 = ( den / @d ) * @n
num2 = ( den / other.d ) * other.n
num = num1 + num 2

a=gcd(num, den)

if a != 1
num=num/a
den=den/a

    Fraccion.new(num,  den)

else

	Fraccion.new(num, den)
end #if

  end


def -(other)

den=@d*other.d 
num1 = ( den / @d ) * @n 
 num2 = ( den / other.d ) * other.n 
num = num1 - num 2 

 a=gcd(num, den) 

if a != 1 

num=num/a 
den=den/a

    Fraccion.new(num, den) 
else
        Fraccion.new(num, den)
end #if


end
