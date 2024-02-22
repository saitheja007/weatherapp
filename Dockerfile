FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /weather_app
COPY requirements.txt /weather_app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /weather_app/
EXPOSE 3000
CMD ["python", "manage.py", "runserver", "0.0.0.0:3000"]
