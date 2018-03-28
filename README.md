# rmq-docker-win

docker build -t gsxsolutions/rmq:3.5.4 -f .\Dockerfile.3.5.4 .
docker build -t gsxsolutions/rmq:3.5.4 -f .\Dockerfile.3.7.4 .

docker volume create rmq-data

docker run --rm -v rmq-data:c:\rmq-data -ti gsxsolutions/rmq:3.5.4 cmd
docker run --rm -v rmq-data:c:\rmq-data -ti gsxsolutions/rmq:3.7.4 cmd
