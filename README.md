Earth Reader Web in a Docker container
======================================

This Dockerfile is for building [Earth Reader Web][earthreader-web] image.

[earthreader-web]: https://github.com/earthreader/web/


Building Image
--------------

1. clone this repository.


```sh
$ git clone https://github.com/Kjwon15/docker-earthreader-web.git
$ cd docker-earthreader-web
```

2. Build image from Dockerfile.

```sh
$ docker build -t kjwon15/earthreader-web .
```


Start server
------------

```sh
$ docker run -d -p 80:80 kjwon15/earthreader-web
```

Licence
-------

AGPLv3 or later.
