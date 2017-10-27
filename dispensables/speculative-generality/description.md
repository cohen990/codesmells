Speculative Generality
======================

Signs and Symptoms
------------------

There is an unused class, method, field or parameter.

Reasons for the Problem
-----------------------

Sometimes code is created "just in case" to support anticipated future features that never get implemented. As a result, code becomes hard to understand and support.

Treatment
---------

- For removing unused abstract classes, try Collapse Hierarchy.
- Unnecessary delegation of functionality to another class can be eliminated via Inline Class.
- Unused methods? Use Inline Method to get rid of them.
- Methods with unused parameters should be given a look with the help of Remove Parameter.
- Unused fields can be simply deleted.

Payoff
------

- Slimmer code.
- Easier support.

When to Ignore
--------------

- If you are working on a framework, it is eminently reasonable to create functionality not used in the framework itself, as long as the functionality is needed by the frameworks's users.
- Before deleting elements, make sure that they are not used in unit tests. This happens if tests need a way to get certain internal information from a class or perform special testing-related actions.
