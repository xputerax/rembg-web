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
$ poetry install
```

## Installation (Docker)

```
$ cd rembg-web
$ docker build .
```

## Running

```
$ cd rembg-web
$ poetry run gunicorn app:app
```

