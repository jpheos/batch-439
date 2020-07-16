class Invoice
  attr_accessor :type

  def self.invoice_type
    print "C'est quoi self ? "
    p self
    ["accompte", "solde", "avoir"]
  end

  def type
    print "C'est quoi self ? "
    p self
    return @type
  end
end

