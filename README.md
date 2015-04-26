ShoesCalculator
===============

A calculator written in Ruby using the Shoes graphical API

# INSTALL

We'll get a copy of Shoes running.

* First you'll need to install Shoes. You can grab a pre-packaged version that contains a ruby runtime, graphical libraries and the shoes code at the shoes download site:

http://shoesrb.com/downloads/

* If using a mac, drag the application to your /Applications directory.
* If using linux, execute the install script, giving yourself execute permissions if necessary (chmod)

* You ought to be able to get the welcome screen, with links to the shoes manual. If that doesn't work, you may need to install some other dependencies for your system, or build from source. We'll be able to help with this.

* If all else fails, we could try the JRuby version on another branch of this repo

* You need to setup the PATH to your shoes installation, by editing your ~/.bash_profile file, which contains environment variables for your terminal session (might be ~/.bashrc for some linux systems). This allows you to run the `shoes` command from the command line.

E.g. I put
```
# Shoes install
export PATH=$PATH:/Applications/Shoes.app/Contents/MacOS/shoes
```

But if you compiled from source, it could be

```
# Shoes install
export PATH=$PATH:/your/path/to/shoes/dist/shoes
```

* Test that shoes is working by running it from the command line

> shoes

# DOWNLOAD

* Fork your own copy of this exercise and clone it

* Run shoes with the following command, from the directory you just cloned into

> shoes calculator.rb

You should see a basic calculator appear.

# TODO

Over to you. Work through the following improvements and see if you can figure
out how to achieve them. Each time you make a change, commit and push your code
to your GitHub account.

1. Experiment with the user interface, changing colours, layouts,
backgrounds and gradients (don't spend all day on this though)
2. Fix the layout so that the numbers run from 0-9 in rows, e.g 7-8-9. Remember KISS: Keep it simple, stupid!
3. Implement a cancel entry (C) button that clears the input
4. Implement other scientific calculator functions:
  * power of two
  * square root
  * log base 2
5. Refactor your code. Where might we use a case statement to simplify our solution?
6. See if you can change the label of the operator buttons to use the
mathematical division label, whilst keeping division function working.
7. Fix the problem where the inputs are treated as integers, not floats, so that
we can get correct results. See if you can have the input keep its integer values.
Hint - ask us for help!

# Homework Extensions

Bonus points for creating another calculator or amending your calculator with
the following features:

* Mortgage calculator: Calculate the monthly payment when given the other variables as input.
* BMI: Calculate the BMI when given the height and weight.

# Submission

Once you're done, submit a pull request so that I can review your work.