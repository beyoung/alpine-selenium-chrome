# alpine container for selenium (chrome)

## build container
```shell
docker build -t alpine-selenium-chrome .
```

## test container

```shell
docker run -it -v $PWD/scripts:/scripts alpine-selenium-chrome python /scripts/screenshot.py

```