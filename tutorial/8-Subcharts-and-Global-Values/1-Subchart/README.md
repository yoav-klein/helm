# Subchart
---

In this example, we add a simpel subchart to our chart. The subchart contains a single ConfigMap
which references a value from the `values.yaml` file.

The fact the `mysubchart` is a subchart of this `foo` chart is merely from the fact that it is in the `charts` directory.

## Overriding values of subchart
Since this `foo` chart is a parent-chart, we can override values of the subchart.
By adding a `mysubchart` object to the `values.yaml` of the parent (foo), any directives
inside this object will be sent to the `mysubchart` chart.

Run
```
$ helm install --dry-run --debug foo .
```

And you can see that the value in the subchart ConfigMap is `ice cream`

The value at the top-level has overriden the value in the subchart.
