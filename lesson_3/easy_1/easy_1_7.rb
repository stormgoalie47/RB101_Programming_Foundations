flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
p flintstones
flintstones.flatten!
p flintstones