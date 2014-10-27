#CIT 483 Project
#Remove Internet Explorer History/Cache

puts "Which to clear? "
puts "'a' for everything; 'b' for temporary internet files; 'c' for cookies; 'd' for browsing history; 'e' for form data; 'f' for remembered passwords."
option = gets.chomp
option.downcase

case option
when "a"
#Clear  ALL history
	system('RunDLL32.exe InetCpl.cpl,ClearMyTracksByProcess 255')
	puts "Internet Explorer history has been deleted..."

when "b"
#Clear temporary internet files
	system('RunDLL32.exe InetCpl.cpl, ClearMyTracksByProcess 8')
	puts "Internet Explorer temporary files have been deleted..."

when "c"
#Clear cookies
	system('RunDLL32.exe InetCpl.cpl, ClearMyTracksByProcess 2')
	puts "Internet Explorer cookies have been be deleted..."

when "d"
#Clear browsing history
	system('RunDLL32.exe InetCpl.cpl,ClearMyTracksByProcess 1')
	puts "Internet Explorer browsing history has been deleted..."

when "e"
#Clear form data
	system('RunDLL32.exe InetCpl.cpl, ClearMyTracksByProcess 16')
	puts "Internet Explorer form data has been cleared..."

when "f"
#Clear remembered passwords
	system('RunDLL32.exe InetCpl.cpl, ClearMyTracksByProcess 32')
	puts "Internet Explorer remembered passwords removed..."

else 
	puts "Not a valid option."
end

