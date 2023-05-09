# README
Zoo Manager: a one-to-many relationship

Zoo can have many animals

Table -> zoos
- auto-generated ID (PRIMARY KEY)
- auto-generated created_at
- auto-generated updated_at
- name:string
- admission_cost:integer
- opening_time:integer
- closing_time:integer

Animals belong to a zoo

Table -> animals
- auto-generated ID (PRIMARY KEY)
- auto-generated created_at
- auto-generated updated_at
- name:string
- species:string
- age:integer
- habitat:string
- zoo_id:integer (FOREIGN KEY)

- - - - - - - - - - - - - - - - - - - - - - - -

User Story 1 - Zoo Index: 
As a visitor
When I visit '/zoos'
Then I see the name of each zoo
EXAMPLE:
  Zoo Names: 
    - Denver Zoo
    - The Nature Habitat

User Story 2, Animal Index:
As a visitor
When I visit '/animals'
Then I see the attributes of each animal
EXAMPLE: 
  Name: Timmy
  Species: Tiger
  Age: 3
  Habitat: Jungle

User Story 3, Zoo Show: 
As a visitor
When I visit '/zoos/:id'
Then I see all the attributes of that zoo and each animal's name and species that are associated with that zoo.
EXAMPLE:
Denver Zoo 
  Admission Cost: $3.00
  Opening Time: 8:00
  Closing Time: 20:00
  Animals: Timmy, Tiger
           Henry, Hippo
           Tina, Tiger
           Bob, Elephant

User Story 4, Zoo Animals Index:
As a visitor
When I visit '/zoos/:zoo_id/animals'
Then I see a total count of all animals that are associated with that zoo.
EXAMPLE:
 Total Animals at Denver Zoo: 4

