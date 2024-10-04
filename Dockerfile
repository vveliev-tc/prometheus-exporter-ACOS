ARG PYTHON_VERSION=3.12
ARG BASE_IMAGE=slim-bookworm

FROM python:${PYTHON_VERSION}-${BASE_IMAGE}

RUN pip install --upgrade pip

WORKDIR /app

COPY src/ /app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["acos_exporter.py"]
