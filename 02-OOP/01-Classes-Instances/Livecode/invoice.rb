class Invoice
  attr_reader :amount, :vat_rate

  def initialize(amount, vat_rate)
    @amount   = amount
    @vat_rate = vat_rate
  end

  # def amount
  #   return @amount
  # end

  def amount_with_vat
    @amount * (1 + @vat_rate)
  end
end

invoice1 = Invoice.new(100, 0.20)
invoice2 = Invoice.new(200, 0.0)
#  Méthode d'instance
p invoice1.amount_with_vat
p invoice2.amount * (1 + invoice2.vat_rate)
