def bar(x)
  x
end

def foo
  yield 42
end

foo do |x|
  bar(x)
  x = "str"
  redo if rand < 0.5
  x
end

__END__
# Classes
class Object
  def bar : (Integer | String) -> (Integer | String)
  def foo : { (Integer) -> String } -> String
end
