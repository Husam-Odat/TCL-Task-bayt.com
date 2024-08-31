set fileName "file.txt"
set fileHandle [open $fileName r]
set sum_integers 0
set string_count 0

if {$fileHandle eq ""} {
    puts "Error: Couldn't open the file $fileName for reading"
} else {
    while {[gets $fileHandle line] != -1} {       
    if {[string is integer -strict $line]} {
        if {($line % 2) == 0} {
            set result [expr {$line * 2}]
            puts $result
            set sum_integers [expr {$sum_integers + $result}]
        } else {
            set result [expr {$line * 3}]
            puts $result
            set sum_integers [expr {$sum_integers + $result}]
        }
    } elseif {[string is double -strict $line]} {
        
        puts $line
    } elseif {[string is alpha $line]} {
        
        puts $line
        incr string_count
    } else {
        
        puts "INVALID"
    }
    }
  
    puts "Sum of all integers : $sum_integers"
    puts "Count of all string values: $string_count"
    close $fileHandle
}
