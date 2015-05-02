class Wine < ActiveRecord::Base

  VARIETALS = ['merlot', 'chianti', 'pinot noir', 'cabernet', 'pinot grigio']

  validates :name, :year, :country, presence: true

  validates :year,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 },
    unless: "year.blank?"
end
