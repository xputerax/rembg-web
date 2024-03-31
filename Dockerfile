from python:3.10-slim

ENV POETRY_HOME="/opt/poetry"
ENV PATH="$POETRY_HOME/bin:$PATH"

RUN apt-get update
RUN apt-get install -y curl make

# install poetry
RUN curl https://install.python-poetry.org | python3 -

WORKDIR /app
COPY . /app
# install packages
RUN make install

# CMD ["bash"]
CMD ["poetry", "run", "python", "app.py"]