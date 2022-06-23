# Simple if
---

We'll start our journey of investigating this ugly corner in Helm with a simple if statement
in a ConfigMap object.

In this example, the `mug: true` is in the same line as the if statement.

Currently, it seems that the templating engine just removes all the `{{ }}` blocks, and leaves the text as is.

Run a dry installation:
```
$ helm install --dry-run --debug whitespaces .
```


