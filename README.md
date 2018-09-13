# Enix public publications repository


This repository include the various publications [Enix](http://enix.io) presented.

### Usage

Publications are made using the [reveal.js](http://revealjs.com) framework.


The easiest way to build the publications and present them is to build them using docker:

```
# build the container
docker build -t publications .
# run the container
docker run -it --rm -P publications
# during creation of the slides it can be easier to map a volume in the
# container to automatically see your changes
docker run -it --rm -P -v "$PWD"/slides/:/home/node/app/slides/ publications
```

Then the slides are available directly in your browser pointing to http://localhost:8000/slides/

### PDF export

reveal.js provide a native PDF exporter, however I don't find it really complete and work fine for printing needs but does not produce such nice slides as the originals.

So we use decktape https://github.com/astefanutti/decktape. It can produce identical to slides pdf rendering. The tool is also provided as a docker container so usage is also simple:

```
# run decktape using a 1920x1080 viewpoint to match an HD presentation screen
docker run --rm -t -v "$PWD"/slides/:/slides/ astefanutti/decktape --size 1920x1080 http://localhost:8000/slides/$MYPRESENTATION.html $MYPRESENTATION.pdf
```
