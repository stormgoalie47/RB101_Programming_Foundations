# 1. Locate the ruby documentation for methods File::path and File#path. How are they different?
# 	- File::path
# 		- class method: called on the class
# 		- returns string representation of path
# 		- `File.path("/dev/null")
# 	- FIle#path
# 		- instance method: called on objects
# 		- returns pathname used to create file as a string
# 		- no normalization of name
# 		- pathname becomes void when file has been moved/deleted
# 		- riases IOError for file created using File::Constants::TMPFILE -> don't have pathname
# 		- `File.new("testfile").path