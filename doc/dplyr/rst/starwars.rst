======== ===============
starwars R Documentation
======== ===============

Starwars characters
-------------------

Description
~~~~~~~~~~~

The original data, from SWAPI, the Star Wars API, https://swapi.dev/,
has been revised to reflect additional research into gender and sex
determinations of characters.

Usage
~~~~~

::

   starwars

Format
~~~~~~

A tibble with 87 rows and 14 variables:

name
   Name of the character

height
   Height (cm)

mass
   Weight (kg)

hair_color,skin_color,eye_color
   Hair, skin, and eye colors

birth_year
   Year born (BBY = Before Battle of Yavin)

sex
   The biological sex of the character, namely male, female,
   hermaphroditic, or none (as in the case for Droids).

gender
   The gender role or gender identity of the character as determined by
   their personality or the way they were programmed (as in the case for
   Droids).

homeworld
   Name of homeworld

species
   Name of species

films
   List of films the character appeared in

vehicles
   List of vehicles the character has piloted

starships
   List of starships the character has piloted

Examples
~~~~~~~~

::

   starwars
