Incomplete Library Class
========================

Signs and Symptoms
------------------

Sooner or later, libraries stop meeting user needs. The only solution to the problem – changing the library – is often impossible since the library is read-only.

Reasons for the Problem
-----------------------

The author of the library has not provided the features you need or has refused to implement them.

Treatment
---------

- To introduce a few methods to a library class, use Introduce Foreign Method.
- For big changes in a class library, use Introduce Local Extension.

Payoff
------

Reduces code duplication (instead of creating your own library from scratch, you can still piggy-back off an existing one).

When to Ignore
--------------

Extending a library can generate additional work if the changes to the library involve changes in code.
