# NFS Persistent Volume
---

This chart creates a Pod that serves as a NFS server, and a service that exposes this Pod.
Then, we create a PersistentVolume of type NFS that uses this NFS server.

Having this setup, we can create a PersistentVolumeClaim to bind to this PersistentVolume, and 
a demo application that uses this PVC.
