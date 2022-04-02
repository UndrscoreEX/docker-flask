FROM python:3.8-slim-buster
WORKDIR /python-docker

COPY Requirements.txt Requirements.txt
RUN pip3 install -r Requirements.txt
ENV FLASK_APP=main.py

COPY . . 

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

# not really needed 
EXPOSE 5000