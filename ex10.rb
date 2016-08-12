# http://learnrubythehardway.org/book/ex10.html
# Exercise 10: What Was That?

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

# interesting that the single quotes ignore formatting except for the \' apostrophe
slim_cat = '''
I\'ll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts slim_cat

# from the study questions:
# What's better, ''' or """?
# Use ''' when you need a multi-line string
# that contains #{} formatting, but you don't
# want them to be processed yet or at all.
# Use """ for all other multi-line strings.


