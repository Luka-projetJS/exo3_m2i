FROM python

WORKDIR /src

ADD . /src

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]