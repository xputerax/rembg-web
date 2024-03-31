# rembg-web

## Requirements

- python >=3.10,<3.13
- [poetry](https://python-poetry.org/)
- curl
- make

## Installation

```
$ git clone https://github.com/xputerax/rembg-web.git
$ cd rembg-web
$ make install
```

## Installation (Docker)

```
$ cd rembg-web
$ docker build .
```

If you do not have make, just run the `install` section in the Makefile

## Running

```
$ cd rembg-web
$ poetry run gunicorn app:app
```

