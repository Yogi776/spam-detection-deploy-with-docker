FROM python:3.8.8

COPY ./spam /spam

WORKDIR /spam

RUN python -m pip install --upgrade pip


RUN pip install --no-cache-dir -r requirements.txt

CMD ["streamlit", "run", "app.py"]
