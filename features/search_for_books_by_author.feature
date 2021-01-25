Feature: search for books by author
 
  As a book lover
  So that I can find books with my favorite author
  I want to include and search on author information in books I enter
 
Background: books in database
 
  Given the following books exist:
  | title                 						| genre          		| author       | publish_date | isbn_number  |
  | And Then There Were None                    | Mystery         		| Stephen Raw  |   2006-02-25 | 1-32213-118-3|
  | Before We Were Yours      					| Drama         		| Alice Weiry  |   1999-11-25 | 1-56619-909-4|
  | Frankenstein   				        		| Science fiction 		|              |   2002-06-10 | 1-33213-921-6|
  | House of Leaves                				| Horror          		| Nicolas King |   2018-04-30 | 1-32213-227-2|
  | It Ends With Us                				| Romance         		| Petthin Fox  |   2020-01-11 | 1-32213-998-6|
  | Testing New Book Now                		| Action and Adventure  | Nicolas King |   2021-01-20 | 1-33213-101-8|
  | The Ghost                 		            | Mystery          		| Peter Currly |   2017-03-03 | 1-33213-101-6|
Scenario: add author to existing book
  When I go to the edit page for "Frankenstein"
  And  I fill in "Author" with "Lisa Lee"
  And  I press "Update Book Info"
  Then the author of "Frankenstein" should be "Lisa Lee"
 
Scenario: find book with same author
  Given I am on the details page for "House of Leaves"
  When  I follow "Find Books With Same Author"
  Then  I should be on the Similar Books page for "House of Leaves"
  And   I should see "Testing New Book Now"
  But   I should not see "It Ends With Us"
  
  
