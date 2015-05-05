module WinesHelper

  def format_average_ratings(wine)
    average = wine.average_ratings
    if average
      pluralize(number_with_precision(average, precision: 1), 'rating')
    else
      'No reviews'
    end
  end

end