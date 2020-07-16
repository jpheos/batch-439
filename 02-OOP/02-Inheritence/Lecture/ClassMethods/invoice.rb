class Invoice
  attr_accessor :type

  # Class Method
  def self.invoice_type
    ["accompte", "solde", "avoir"]
  end

  # Class Method
  def self.iban
  end

  def initialize
    @type = nil
  end

  # Instance Method
  def iban
  end

  def type
    return @type
  end
end

