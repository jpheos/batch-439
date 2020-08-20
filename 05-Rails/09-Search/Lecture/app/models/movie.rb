class Movie < ApplicationRecord
  include PgSearch::Model

  belongs_to :director

  pg_search_scope :pg_search, {
    against: [:title, :syllabus],
    associated_against: {
      director: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true }
    }
  }

  multisearchable against: [:title, :syllabus]

  searchkick
end
