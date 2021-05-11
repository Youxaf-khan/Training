
#months = Hash.new("month")
#months = {"1" => "Jan","2" => "Feb","3" => "Mar","4" => "April","5" => "May","6" => "Jun"}

def score( array )
array.each_with_object(Hash.new(0))
{|key,hash| hash[key] += 1}
puts "#{key}"
end

array = Array.new(10) {rand(10)}
score(array)



#def create_hash
#elements.inject({}) do |hash, value|
#    hash[value.first] = value.last
#    hash
#  end
#end
