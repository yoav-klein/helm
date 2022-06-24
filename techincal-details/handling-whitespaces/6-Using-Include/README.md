# Using include
---

In this example, we use `include` instead of `template`. This allows us to pipe 
the output to the `nindent` function, which will indent our template to where we want it.

This allows us to not indent the `labels` block in the `foo.labels` named template, and also note indent the 
extra labels in the `extraLabels` template, and take care of the indentaion where those templates are consumed.

Note that the `nindent` function adds a new line, so we need to append a `-` when calling `include`
as such: `{{- include "my.template" | nindent 4 }}`

Also note that the indentations are summed up: We `nindent` the `{{- include "extraLabels" }}` in 2,
and then indent the `{{- include "labels" }}` in another 2, and overall the extra labels are indented by 4
