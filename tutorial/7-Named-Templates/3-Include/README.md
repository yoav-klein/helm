# The include function
---

The `include` function is the prefered way to use named templates, because it allows you to better
handle indentation.

In this example, we want to include the `foo.app` template in both the `metadata.labels` field and the `data` field.
When using `template`, indentaion can go wrong.
