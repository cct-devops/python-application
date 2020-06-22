FROM python:3.8.3-alpine

LABEL maintainer="If anything breaks, call Gustavo"

WORKDIR /app
ADD main.py ./
ADD requirements.txt ./
RUN pip install -r requirements.txt
EXPOSE 5000

# This is a default thing. We want to ensure it regardless of what happens.
ENV PORT=5000

CMD ["python", "main.py"]
