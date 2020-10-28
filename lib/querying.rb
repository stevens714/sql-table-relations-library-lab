def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE year < 2001"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters WHERE name = 'Tyrion Lannister'"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters WHERE species = 'human'"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name 
  FROM Authors 
  JOIN Series ON 
  Authors.id = Series.author_id
  JOIN Subgenres ON
  Subgenres.id = Series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM Series
  JOIN Books ON
  Books.series_id = Series.id
  JOIN Character_books ON
  Character_books.book_id = Books.id
  JOIN Characters ON
  Character_books.character_id = Characters.id
  GROUP BY Characters.species
  ORDER BY Characters.species DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Series.title)
  FROM Characters
  JOIN Character_books ON
  Characters.id = Character_books.character_id
  JOIN Books ON
  Character_books.book_id = Books.id
  JOIN Series ON
  Books.series_id = Series.id
  GROUP BY Characters.name
  ORDER BY COUNT(Series.title) DESC, Characters.name ASC"
end



