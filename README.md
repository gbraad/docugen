DocuGen
=======

Docker container image for generating documentation.


Contains:

  * pandoc
  * jekyll (pandoc-ruby)


Available as an automated build from the Docker registry.

  https://hub.docker.com/r/gbraad/docugen/


Instructions
------------


### Interactive

To pull this container from the Docker registry:

```
$ docker pull gbraad/docugen
```

and run `pandoc` or `jekyll` interactive.


### Gitlab CI runner

This container can also be used as a Gitlab CI runner. Use the following
instructions inside `.gitlab-ci.yml` for either `pandoc`:

```
image: gbraad/docugen:latest

pages:
  script:
  - mkdir public
  - pandoc -t html5 -o public/index.html ./md/index.md
  artifacts:
    paths:
    - public
  only:
  - master
```

or `jekyll`:


```
image: gbraad/docugen:latest

pages:
  script:
  - jekyll build -d public
  artifacts:
    paths:
    - public
  only:
  - master
```


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
