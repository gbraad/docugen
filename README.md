DocuGen
=======

[!["Scribble"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/scribble-icon-64.png)](http://github.com/gbraad)

Docker container image for generating documentation.


Instructions
------------


### Interactive

To pull this container from the Docker registry:

```
$ docker pull gbraad/docugen
```

or

```
$ docker pull registry.gitlab.com/gbraad/docugen
```

and run `pandoc` or `jekyll` interactive.


Note
----

Pandoc can render to PDF format, using `xetex` and `xelatex`. Support
has been added for CJK using the WenQuanYi Micro Hei font.


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://gbraad.nl/social)  |
