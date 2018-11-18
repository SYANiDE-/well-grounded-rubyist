#!/usr/bin/env ruby


class Waffle
    WAFFLES = ["Blueberry", "Buttermilk", "Chocholate"]
    SYRUPS = ["Maple", "Cane", "Corn", "Golden"]
    attr_reader :waffle, :syrup
    def initialize(waffle, syrup="None")
        update_waffle(waffle)
        update_syrup(syrup)
    end
    def plate
        puts "You're having #{@waffle} with #{@syrup} syrup."
    end
    def update_waffle(waffle)
        if WAFFLES.include?(waffle)
            @waffle = waffle
        else
            puts "We don't have #{waffle}!"
        end
    end
    def update_syrup(syrup)
        if SYRUPS.include?(syrup)
            @syrup = syrup
        else
            puts "We don't have #{syrup}!"
        end
    end
end

