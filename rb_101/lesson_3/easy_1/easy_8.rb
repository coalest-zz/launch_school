flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select! {|key| key == 'Barney' }
flintstones.flatten

# Solution was flintstones.assoc("Barney")