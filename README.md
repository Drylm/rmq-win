# rmq-docker-win

docker build -t gsx/rmq:3.5.4 -f Dckerfile.3.5.4 .
docker build -t gsx/rmq:3.7.4 -f Dckerfile.3.7.4 .

docker run --rm -p 5673:5673 -p 15672:15672 -ti gsx/rmq:3.5.4 cmd
docker run --rm -p 5673:5673 -p 15672:15672 -ti gsx/rmq:3.7.4 cmd
