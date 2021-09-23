require 'spreadsheet'

counter = 1
# Open source spreadsheet
#workbook = Spreadsheet.open 'source.xls'
firstname=""
lastname=""
company=""
role=""
File.foreach("saastr.txt").with_index do |line, line_no|
     if line.length > 3
    
        firtname = line[/^([\w\-]+)/]
        lastname = line[/(?<=\s).*/]
        role = line[/^(.+?),/]
        company = line[/, [\s\S]*$/] 
        puts firstname+ " "+lastname
         
     end    
     
     
end	 