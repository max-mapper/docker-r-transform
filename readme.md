# docker-r-transform

An example docker container that packages an R script that does streaming newline delimited JSON transformation.

## installation

```
docker pull maxogden/docker-r-transform
```

## usage

`transform.r` adds `"hello_from": "R"` to every JSON object that gets piped in.

The Dockerfile handles installing R dependencies, and setting the entrypoint.

You can run this as a unix pipe like this:

```
$ echo '{"foo": "bar"}' | docker run -i maxogden/docker-r-transform
{ "foo": "bar","hello_from": "R" }
```
