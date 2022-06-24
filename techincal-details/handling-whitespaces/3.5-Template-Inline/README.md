# Including templates in a line
---

In the previous examples, we included a template which occupied whole lines:

```
   lables:
   {{ include "foo.labels" . }}
```

When including a template in the same line, we do it the same way bascially,
but we have to be careful not to use `-` in the `{{ include }}`. See example inside
