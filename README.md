Concept for scripting the attachment of an existing cluster. This 
does require you to have a kubeconfig for the cluster you want to 
attach.

Build the docker container
```
cd ./scripts
docker build -t test:v1 ../docker
```

Run the script in the container
```
cd ./scripts
docker run -dit -w /scripts -v `pwd`:/scripts test:v1 
docker run 88bb8461dc84341 /scripts/run.sh
```
