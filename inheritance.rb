class Base
	attr_accessor :myVar

	def initialize(myVar)
		@myVar = myVar * 2
	end

	def methodA
		puts "methodA called from Base"
	end

	def methodB(anArg)
		@anArg = anArg
		puts("value of anArg in Base class : #{anArg}")
	end

	def methodC()
		puts("methodC is only defined in class Base")
	end

end

class Extended < Base
	attr_accessor :myVar 

	def initialize(myVar)
		super(myVar)
		@myVar = myVar
	end

	def methodA
		puts "methodA called from Extended"
	end

	def methodB(arg1,arg2)
		super(arg1)            # invokes methodB defined in Base class
		@arg1 = arg1
		@arg2 = arg2
		puts("value of args in Extended class : #{arg1}, #{arg2}")
	end

end

aObject = Extended.new(10)
aObject.methodA
aObject.methodB(1,2)
aObject.methodC

puts "Variable myVar " +aObject.myVar.to_s

# can I downcast, below code does not work 
# ----------------------------------------
# bObject = Base.new 2
# bObject = aObject
# puts "downcasting... "
# bObject.methodA
# ---------------------------------------

aObject = Base.new 1
puts "Variable myVar " +aObject.myVar.to_s
