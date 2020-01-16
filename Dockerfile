# Building the main container
FROM python:3.6-slim

ENV PORT="8200"
EXPOSE ${PORT}

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN pip install -e .
CMD ["/app/scripts/run.sh"]
