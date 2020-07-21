require 'csv'

class MealRepository
  def initialize(csv_file_path)
    @meals = []
    @next_id = 1
    @csv_file_path = csv_file_path
    load_csv if File.exist?(@csv_file_path)
  end

  def create(meal)
    meal.id = @next_id
    @next_id += 1
    @meals << meal
    save_csv
  end

  def all
    @meals
  end

  def find(id)
    @meals.find { |meal| meal.id == id }
  end

  private

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << ["id", "name", "price"]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

  def load_csv
    option = { headers: :first_row, header_converters: :symbol }
    CSV.open(@csv_file_path, option).each do |row|
      @meals << Meal.new(row)
    end
    @next_id = @meals.last.id + 1
  end
end
