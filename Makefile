HOME_PATH = ${HOME}
U2NET_PATH = ${HOME_PATH}/.u2net

dev:
	# TODO: how to pass DEBUG=1
	poetry run gunicorn app:app

install:
	poetry install
	mkdir -p ${U2NET_PATH}
	curl https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net.onnx -o ${U2NET_PATH}/u2net.onnx