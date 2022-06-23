# Using include
---

In this example, we use `include` instead of `template`. This allows us to pipe 
the output to the `nindent` function, which will indent our template to where we want it.

Note that the `nindent` function adds a new line, so we need to append a `-` when calling `include`
as such: `{{- include "my.template" | nindent 4 }}`
