cd /Users/wesleyreisz/work/vmware/clients/pg/script_attach_tmc/scripts
docker build -t test:v1 ../docker
docker run -dit -w /scripts -v `pwd`:/scripts test:v1 
docker run 88bb8461dc84341 /scripts/run.sh
