# NFS Persistent Volume Client
---

This chart contains an application that consumes a Persistent Volume.

The persistent volume is created separately, as it is usually done by the kubernetes administrator,
and not part of the chart.

After you have a NFS server service in your cluster, take its IP and update it in the `nfs-pv.yaml` file,
and run:

```
$ kubectl apply -f nfs-pv.yaml
```

Check that the PV is ok with `kubectl get`.

Now run the chart that will bind a PVC to the PV.

```
$ helm install nfs-client .
```

The application runs 2 pods, both access the persistent volume:
One updates the `index.html` file, and one runs an HTTP server
that serves this file.
