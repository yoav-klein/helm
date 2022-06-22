# Global Values
---

Sometimes you want certain values to be accessible by all charts and sub-charts.

This is accomplished by setting values in the `.Values.global` special object.

In this example, we add to the `values.yaml` file the `global.salad` field. Since it's global, it's accessible
in both templates in the parent chart and the subchart with the `.Values.global.salad` key.

