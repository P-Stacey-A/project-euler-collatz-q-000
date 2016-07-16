

def even_next(n)
       n / 2
end


def odd_next(n)
     3 * n + 1
end


def next_value(n)
  if n.even?
      n / 2
    elsif    n.odd?
        3 * n + 1
   end
end



 def collatz(n)
    list = [n]

    until n == 1
         n = next_value(n)
         list.push(n)
        end
       return list
end



def longest_collatz
  hashes = {}
  range = (80000..1000000)
  	range.each do |n|
  		length = collatz(n).length
  		hashes[length] = n
  	end
  	hashes.sort.last[1]
end
