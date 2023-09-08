FROM python:latest

# set the working directory
WORKDIR /app

#install dependencies
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

#copy the app scripts to working directory
COPY . /app

#start the server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]