Data Clumps
===========

Signs and Symptoms
------------------

Sometimes different parts of the code contain identical groups of variables (such as parameters for connecting to a database). These clumps should be turned into their own classes.

Reasons for the Problem
-----------------------

Often these data groups are due to poor program structure or "copypasta programming”.

If you want to make sure whether or not some data is a data clump, just delete one of the data values and see whether the other values still make sense. If this is not the case, this is a good sign that this group of variables should be combined into an object.

Treatment
---------

- If repeating data comprises the fields of a class, use Extract Class to move the fields to their own class.
- If the same data clumps are passed in the parameters of methods, use Introduce Parameter Object to set them off as a class.
- If some of the data is passed to other methods, think about passing the entire data object to the method instead of just individual fields. Preserve Whole Object will help with this.
- Look at the code used by these fields. It may be a good idea to move this code to a data class.

Payoff
------

- Improves understanding and organization of code. Operations on particular data are now gathered in a single place, instead of haphazardly throughout the code.
- Reduces code size.

When to Ignore
--------------

Passing an entire object in the parameters of a method, instead of passing just its values (primitive types), may create an undesirable dependency between the two classes.
