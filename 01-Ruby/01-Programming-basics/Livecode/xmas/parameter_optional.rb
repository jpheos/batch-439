def method
  puts "hello"
end


def method2(param)
  puts param
end

def method3(param = "hey")
  puts param
end


# method
# method2("bonjour")


method3
method3("salut")
