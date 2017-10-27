Message Chains
==============

Signs and Symptoms
------------------

In code you see a series of calls resembling `$a->b()->c()->d()`

Reasons for the Problem
-----------------------

A message chain occurs when a client requests another object, that object requests yet another one, and so on. These chains mean that the client is dependent on navigation along the class structure. Any changes in these relationships require modifying the client.

Treatment
---------

- To delete a message chain, use Hide Delegate.
- Sometimes it is better to think of why the end object is being used. Perhaps it would make sense to use Extract Method for this functionality and move it to the beginning of the chain, by using Move Method.

Payoff
------

- Can reduce dependency between classes of a chain.
- Can reduce code bulk.

When to Ignore
--------------

Overly aggressive delegate hiding can cause code in which it is hard to see where the functionality is actually occurring. Which is another way of saying, avoid the Middle Man smell as well.
