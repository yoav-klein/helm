# Simple if
---
Now we move the `{{ if }}` and `{{ end }}` lines to separate lines. This is where things get dirty.

We add the `-` in `{{- if }}` and `{{- end }}`. If we go with the same logic, 
the templating engine just removes the `{{ }}` blocks, but leaving everything else.
This means it leaves the newlines and spaces
