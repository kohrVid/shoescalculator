ShoesCalculator
===============

A little app we're going to modify to learn some Ruby basics

# INSTALL

1. Get a copy of Shoes running, resources online at:
    https://github.com/shoes/shoes/wiki/Building-Shoes
    http://shoesrb.com/manual/Installing.html
    
2. Fork your own copy of this exercise and clone it

3. Run
    shoes calculator.rb
    
# TODO

Over to you. Work through the following improvements and see if you can figure 
out how to achieve them. Each time you make a change, commit and push your code
to your GitHub account.

1. Fix the layout so that the numbers run from 0-9 in rows, e.g 7-8-9
2. Implement a cancel entry (CE) button that clears the input
3. Implement other scientific calculator functions, e.g. power of two, power to 
a given number, square root etc.
4. Fix the problem where the inputs are treated as integers, not floats, so that
we can get correct results. See if you can have the input keep its integer values.
5. Try experimenting with the user interface, changing colours, layouts and 
backgrounds
6. See if you can change the label of the operator buttons to use the 
mathematical division label, whilst keeping division function working. 

# Homework

Using Shoes or a text-based terminal application, create a trip calculator. 
Ask the user (politely) for four inputs:

* Distance – how far will you drive?
* MPG – what is the fuel efficiency of the car?
* $PG – how much does gas cost per gallon?
* Speed – how fast will you drive?

Your output is a string: “Your trip will take 3.5 hours and cost $255.33.”

For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG. (i.e. a car that 
normally gets 30 mpg would only get 28 mpg if its speed were 61 mph. Handle the
case that this value gets below zero).
 
# Homework Extensions

Bonus points for creating another calculator or amending your calculator with 
the following features:

* Mortgage calculator: Calculate the monthly payment when given the other variables as input.
* BMI: Calculate the BMI when given the height and weight.