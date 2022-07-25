# CSPELL Docker

Run [cspell](https://www.npmjs.com/package/cspell) from withing a docker container

## Example Usage

```sh
docker run --rm -it --name cspell -v `pwd`:/data cspell cspell lint --relative --gitignore "**"
```

### Makefile Example

```makefile
THIS_DIR := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))

spellcheck:
	docker run --rm -it --name spell -v $(THIS_DIR):/data cspell cspell lint --relative --gitignore "**"
```

## Building

```sh
docker built -t cspell .
```