Parallel Inheritance Hierarchies
================================

Signs and Symptoms
------------------

Whenever you create a subclass for a class, you find yourself needing to create a subclass for another class.

Reasons for the Problem
-----------------------

All was well as long as the hierarchy stayed small. But with new classes being added, making changes has become harder and harder.

Treatment
---------

You may de-duplicate parallel class hierarchies in two steps. First, make instances of one hierarchy refer to instances of another hierarchy. Then, remove the hierarchy in the referred class, by using Move Method and Move Field.

Payoff
------

- Reduces code duplication.
- Can improve organization of code.

When to Ignore
--------------

Sometimes having parallel class hierarchies is just a way to avoid even bigger mess with program architecture. If you find that your attempts to de-duplicate hierarchies produce even uglier code, just step out, revert all of your changes and get used to that code.
