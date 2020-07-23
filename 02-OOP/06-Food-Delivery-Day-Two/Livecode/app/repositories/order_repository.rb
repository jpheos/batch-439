require 'awesome_print'

class OrderRepository
  def initialize(file_path, meal_repository, customer_repository, employee_repository)
    @file_path            = file_path
    @meal_repository      = meal_repository
    @customer_repository  = customer_repository
    @employee_repository  = employee_repository
    @orders = []
    @next_id = 1
    load if File.exist?(@file_path)
  end

  def create(order)
    order.id = @next_id
    @next_id += 1
    @orders << order
    save
  end

  def undelivered_orders
    @orders.select { |order| !order.delivered? }
  end

  private

  def load
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@file_path, csv_options) do |row|
      row[:id]        = row[:id].to_i
      row[:delivered] = row[:delivered] == "true"
      row[:meal]      = @meal_repository.find(row[:meal_id].to_i)
      row[:employee]  = @employee_repository.find(row[:meal_id].to_i)
      row[:customer]  = @customer_repository.find(row[:meal_id].to_i)
      @orders << Order.new(row)
    end
    @next_id = @orders.last.id + 1 unless @orders.empty?
  end

  def save
    CSV.open(@file_path, "wb") do |csv|
      csv << %w[id, delivered, meal_id, employee_id, customer_id]
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.employee.id, order.customer.id]
      end
    end
  end
end
