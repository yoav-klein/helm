# Using values in a template
---

Hard-coding the `name` in the kubernetes manifest is a bad practice. Names should be unique to a release,
so we may want to generate a name based on the release name.

Install the chart:
```
$ helm install foo .
```

Now let's see the kubernetes object that was deployed:
```
$ helm get manifest foo
...
   name: foo-configmap
```


