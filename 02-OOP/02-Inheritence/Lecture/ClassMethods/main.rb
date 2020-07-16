require_relative "invoice"

p Invoice.invoice_type

instance = Invoice.new

instance.type = "accompte"

p instance

p Invoice.methods
# instance.invoice_type
