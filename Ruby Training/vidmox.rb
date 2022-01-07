 
require 'thor'
class Vidmox < Thor
    desc "hello NAME", "say hello to NAME"
    desc "hello --c NAME", "say hello to NAME in CAPS"
    method_option :caps, aliases:"-c", :type => :boolean
    def hello (name)
      output = "Hello #{name}"
      puts options[:caps] ? output.upcase : output
    end
    


    desc "added FIRST_INTEGER SECOND INTEGER", "print sum of the two integers"
    def added (n,x)
      sum = n.to_i + x.to_i
      puts " the sum is  "+ sum.to_s  
    end
 
  end
  Vidmox.start(ARGV)