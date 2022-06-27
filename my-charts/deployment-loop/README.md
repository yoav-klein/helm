# Deployment Loop
---

This chart demonstrates a scenario in which you need to deploy several deployments, which
are basically the same except for some environment variable.

In this case, we enclose a Deployment in a {{ range }} loop, iterating a list
in the `values.yaml` file.
