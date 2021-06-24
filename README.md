Concept for scripting the attachment of an existing cluster. This 
does require you to have a kubeconfig for the cluster you want to 
attach.

Build the docker container. This docker container containerizes kubectl 
and the tmc cli that will be used to attach the cluster.
```
cd ./scripts
docker build -t test:v1 ../docker
```

Run the script in the container. You could add this to a jenkins pipeline.
You'll have to set the varables in the run.sh script. Basically set the variables, clone the repo, start the container, and run the script.
```
cd ./scripts
docker run -dit -w /scripts -v `pwd`:/scripts test:v1 
docker run 88bb8461dc84341 /scripts/run.sh
```
