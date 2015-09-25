# SimpleDoc

## MkDocs + Docker

Just a docker image with MkDocs inside

## Usage

* Reproduce the '''sample''' folder (i.e. put the Makefile and mkdocs.yml next to the docs folder)
* Write your mkdocs
* Visualize using:

```
  make serve
```

* Build your static pages:

```
  make build
```

## Customize

* copy the ***theme***:

```
  docker cp mkdocs:/theme .
```

* customize your theme
* update mkdocs.yml (***theme_dir: theme***)

## Warnings

You will observe a warning in the console, nothing dangerous [issue here](https://github.com/mkdocs/mkdocs/issues/703)
