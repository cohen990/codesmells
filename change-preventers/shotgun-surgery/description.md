Shotgun Surgery
===============

Shotgun Surgery resembles Divergent Change but is actually the opposite smell. Divergent Change is when many changes are made to a single class. Shotgun Surgery refers to when a single change is made to multiple classes simultaneously.

Signs and Symptoms
------------------

Making any modifications requires that you make many small changes to many different classes.

Reasons for the Problem
-----------------------

A single responsibility has been split up among a large number of classes. This can happen after overzealous application of Divergent Change.

Treatment
---------

- Use Move Method and Move Field to move existing class behaviors into a single class. If there is no class appropriate for this, create a new one.
- If moving code to the same class leaves the original classes almost empty, try to get rid of these now-redundant classes via Inline Class.

Payoff
------

- Better organization.
- Less code duplication.
- Easier maintenance.

https://sourcemaking.com/refactoring/smells/shotgun-surgery
