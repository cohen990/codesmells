Middle Man
==========

Signs and Symptoms
------------------

If a class performs only one action, delegating work to another class, why does it exist at all?

Reasons for the Problem
-----------------------

This smell can be the result of overzealous elimination of Message Chains.

In other cases, it can be the result of the useful work of a class being gradually moved to other classes. The class remains as an empty shell that does not do anything other than delegate.

Treatment
---------

If most of a method's classes delegate to another class, Remove Middle Man is in order.

Payoff
------

Less bulky code.

When to Ignore
--------------

Do not delete middle man that have been created for a reason:

- A middle man may have been added to avoid interclass dependencies.
- Some design patterns create middle man on purpose (such as Proxy and Decorator).

https://sourcemaking.com/refactoring/smells/middle-man
