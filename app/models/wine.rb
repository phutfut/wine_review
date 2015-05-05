class Wine < ActiveRecord::Base
  VARIETALS = ['Merlot', 'Chianti', 'Pinot Noir', 'Cabernet', 'Pinot Grigio']

  has_many :logentries, dependent: :destroy
  validates :name, :year, :country, presence: true

  validates :year,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 },
    unless: "year.blank?"

  validates :varietal,
    inclusion: VARIETALS

  def average_ratings
    logentries.average(:rating)
  end
end
