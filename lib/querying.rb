def select_books_titles_and_years_in_first_series_order_by_year
"SELECT Title, Year FROM Books LIMIT 3"
end

def select_name_and_motto_of_char_with_longest_motto
"SELECT Name, Motto FROM Characters ORDER BY LENGTH(Motto) Desc LIMIT 1" 
end


def select_value_and_count_of_most_prolific_species
  "SELECT Species, COUNT(species) FROM Characters GROUP BY species ORDER BY species Desc LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.Name, Subgenres.Name FROM Authors 
  INNER JOIN Series ON Authors.ID = Series.Author_ID
  INNER JOIN Subgenres ON Series.Subgenre_ID = Subgenres.ID"
end

def select_series_title_with_most_human_characters
  "SELECT Title FROM Series
  INNER JOIN Authors ON Series.Author_ID = Authors.ID
  INNER JOIN Characters ON Characters.Author_ID = Authors.ID
  WHERE species = 'human'
  GROUP BY species"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.Name, COUNT(Title) FROM Characters 
  INNER JOIN Character_Books ON Characters.ID = Character_Books.Character_ID
  INNER JOIN Books ON Character_Books.Book_ID = Books.ID
  GROUP BY Characters.name
  ORDER BY COUNT(Title) Desc, Characters.Name Asc" 
end



