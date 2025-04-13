FROM python:3.9-slim
USER root
RUN apt-get update && apt-get install -y curl
CMD ["python3"]
