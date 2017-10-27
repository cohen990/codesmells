Inappropriate Intimacy
======================

Signs and Symptoms
------------------

One class uses the internal fields and methods of another class.

Reasons for the Problem
-----------------------

Keep a close eye on classes that spend too much time together. Good classes should know as little about each other as possible. Such classes are easier to maintain and reuse.

Treatment
---------

- The simplest solution is to use Move Method and Move Field to move parts of one class to the class in which those parts are used. But this works only if the first class truly does not need these parts.
- Another solution is to use Extract Class and Hide Delegate on the class to make the code relations "official".
- If the classes are mutually interdependent, you should use Change Bidirectional Association to Unidirectional.
- If this "intimacy" is between a subclass and the superclass, consider Replace Delegation with Inheritance.

Payoff
------

- Improves code organization.
- Simplifies support and code reuse.
