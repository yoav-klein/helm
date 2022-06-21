# Chart repository
---

There are many ways to host a chart repository. Here, we'll use a simple web server to host a repository.

## Create the repository structure

A repository structure is just a bunch of packaged Helm charts, and an `index.yaml` file that contains information
about these charts.

### Create a packaged chart
Run the following script to create a pakcaged chart:
```
$ ./create_packaged_chart.sh
```

### Create a repository structure

Create a `charts` directory, which will be the repository. Move the packaged chart there
```
$ mkdir charts
$ mv foo-0.1.0.tgz charts 
```


### Create an index file

Now, generate an index file using the following command:
```
$ cd charts
$ helm repo index .
```

## Run the server
Now, let's run the server in this current directory
```
$ python3 -m http.server &
```
The repository will be served in `http://localhost:8000/charts`

## Add the repository to Helm client

Now let's add the repository to our Helm client:
```
$ helm repo add myrepo http://localhost:8000/charts
```

Make sure that the repo is configured well:
```
$ helm search repo myrepo
```
You should get the `foo` chart in the results.

## Install the chart from the repository

```
$ helm install foofoo myrepo/foo
```

## Adding a chart to your repositoryt

Say you want to add a new chart to your repository, you must regenerate the index file.

Let's create a new version of the `foo` chart. cd into the foo chart directory, and run:
```
$ sed -i 's/0.1.0/0.2.0/' Chart.yaml
```

Now let's package again:
```
$ helm package foo
$ mv foo-0.2.0.tgz charts
```

Now we need to regenerate the index:
```
$ helm repo index charts
```

On the client side, we need to update the repo
```
$ helm repo update myrepo
```

Now if we search the repo, we'll see the second version
```
$ helm index update myrepo
```

