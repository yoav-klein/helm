# If/Else
---

`if/else` allows you to conditionally include text in your template.

The expression given to `if` evaluates to false if the value of it is:
* A boolean false
* A numeric zero
* An empty collection (array, dict, etc.)
* An empty string ""
* A _nil_


In this example, we check if the favorite drink is "coffee". If is, another key-value
is added: `mug: true

## Controlling Whitespaces
Notice the use of `{{-` and `-}}` in the template. This is to control the whitespaces and newlines,
so the template processing will result in a valid YAML file. See the docs for details.
