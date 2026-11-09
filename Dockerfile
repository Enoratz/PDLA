FROM ghcr.io/astral-sh/uv:alpine AS builder

WORKDIR /build

COPY . .
RUN uv build

FROM python:3.13-alpine

COPY --from=builder /build/dist/*.whl /tmp/

RUN pip install /tmp/*.whl

COPY examples /examples

ENTRYPOINT [ "arithmp" ]
