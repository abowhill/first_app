#/usr/loca/bin/ruby

#
# small script to read topic headers from a CSV and place them into a 
# list digestible by rake


infile = File.open("WotTankProfileCategories.csv")
linesAry = infile.readlines
columnsAry = linesAry[0].split /,/
columnsAry.each {|a| print a + " "}
