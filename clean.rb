require 'spreadsheet'

counter = 1
# Open source spreadsheet
#workbook = Spreadsheet.open 'source.xls'
firstname=""
lastname=""
company=""
role=""
File.foreach("saastr.txt") { |line| if line.length>3 
    puts line 
end} 
    
        #firtname = line[/^([\w\-]+)/]
        #lastname = line[/(?<=\s).*/]
        #role = line[/^(.+?),/]
        #company = line[/, [\s\S]*$/] 
        