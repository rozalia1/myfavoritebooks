# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
more_books = [
 {:title => 'Before We Were Yours', :genre => 'Drama', :description => 'Twelve-year-old Rill Foss and her four younger siblings live a magical life aboard their family’s Mississippi River shantyboat.', :isbn_number => '1-56619-909-3', :publish_date => '25-Nov-1999'},
 {:title => 'The Three Musketeers', :genre => 'Action and Adventure', :description => 'In this classic by Dumas, a young man named d’Artagnan joins the Musketeers of the Guard.', :isbn_number => '1-52219-911-9', :publish_date => '10-May-1992'},
 {:title => 'Frankenstein', :genre => 'Science fiction', :description => 'It is a pro-science novel that at its heart shows Dr Frankenstein as the callous fiend of the story, who created a being and was not willing to accept responsibility for his actions.', :isbn_number => '1-33213-921-6', :publish_date => '10-Jun-2002'},
 {:title => 'It Ends With Us', :genre => 'Romance', :description => 'New to Boston, small-town girl Lily manages to get gorgeous neurosurgeon Ryle Kincaid to break his "no dating" rule.', :isbn_number => '1-32213-998-6', :publish_date => '11-Jan-2020'},
 {:title => 'And Then There Were None', :genre => 'Mystery', :description => 'The story follows ten people who are brought together, for various reasons, to an empty mansion on an island.', :isbn_number => '1-32213-118-3', :publish_date => '25-Feb-2006'},
 {:title => 'House of Leaves', :genre => 'Horror', :description => ' From a fairly standard horror premise (a house is revealed to be slightly larger on the inside than is strictly possible) Danielewski spins out a dizzying tale involving multiple unreliable narrators, typographic mysteries, and looping footnotes that manage to drag the reader into the story and then make them doubt their own perception of that story.', :isbn_number => '1-32213-227-2', :publish_date => '30-Apr-2018'}
]
more_books.each do |book|
 Book.create!(book)
end