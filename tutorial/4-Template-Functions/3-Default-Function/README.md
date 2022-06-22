# Pipeline
---

The `default` function is one of the most useful. It receives a default value and a given value, and if the given value
is null, than the default value is used.


Run install twice like this:
```
$ helm install --debug --dry-run foo .
$ helm install --set favorite.drink=null --debug --dry-run foo .
```

You can see in the second time that the `drink` field is set to "tea"
