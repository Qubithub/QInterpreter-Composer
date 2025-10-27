# Install jupyter lab
FROM python:3.12-slim AS builder
RUN pip3 install jupyterlab

# Load the required modules
FROM builder AS build
COPY ./requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt

# Copy over the quantum gateway code
FROM build AS run
RUN useradd -ms /bin/bash web
WORKDIR /Users/web
COPY . .
USER web

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''"]