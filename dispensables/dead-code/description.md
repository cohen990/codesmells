Dead Code
=========

Signs and Symptoms
------------------

A variable, parameter, field, method or class is no longer used (usually because it is obsolete).

Reasons for the Problem
-----------------------

When requirements for the software have changed or corrections have been made, nobody had time to clean up the old code.

Such code could also be found in complex conditionals, when one of the branches becomes unreachable (due to error or other circumstances).

Treatment
---------

The quickest way to find dead code is to use a good IDE.

- Delete unused code and unneeded files.
- In the case of an unnecessary class, Inline Class or Collapse Hierarchy can be applied if a subclass or superclass is used.
- To remove unneeded parameters, use Remove Parameter.

Payoff
------

- Reduced code size.
- Simpler support.

https://sourcemaking.com/refactoring/smells/dead-code
