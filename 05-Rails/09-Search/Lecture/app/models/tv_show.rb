class TvShow < ApplicationRecord
  include PgSearch::Model

  multisearchable against: [:title, :syllabus]

  searchkick
end
