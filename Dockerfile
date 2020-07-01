FROM python:3.7-alpine

ARG OPENAPI_SPEC_VALIDATOR_VERSION=0.2.8

RUN pip install --no-cache-dir openapi-spec-validator==${OPENAPI_SPEC_VALIDATOR_VERSION}
RUN apk add --update make

ENTRYPOINT ["openapi-spec-validator"]
