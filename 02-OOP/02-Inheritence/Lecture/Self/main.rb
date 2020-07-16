require_relative "invoice"

puts "Methode de classe"

Invoice.invoice_type

puts "----------"

puts "Methode d'instance"

instance = Invoice.new

instance.type = "accompte"

instance.type
