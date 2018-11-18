#!/usr/bin/env ruby

class TT
    def Localized(test)     # instances of TT can access
        return test+3
    end
    def TT.Instantiated(test)  # Defined ON TOP of specific object TT; doesn't exist in instances
        return test+8
    end
end


th = TT.new
puts th.Localized(14)
# 17
# puts th.Instantiated(14)
# ERROR not defined in instance
# puts th.TT.Instantiated(14)
# ERROR not defined in instance
puts TT.Instantiated(14)
# 24



### notation
# TT#price    	# instance method price in class object TT
# TT.price	# class method price in class object TT
# TT::price	# class method price in class object TT

