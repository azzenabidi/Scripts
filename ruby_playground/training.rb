message = lambda {|default = "this is the default error"| puts default}
#message =  lambda {|default = "this is a custom error"| return default} 
message.call
message.call('this is a custom error')
      
   