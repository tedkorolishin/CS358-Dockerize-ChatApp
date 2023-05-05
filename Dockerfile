# set base image 
FROM python:3.9

# sets working directory 
WORKDIR /ChatBot

# copy requirements.txt file to container 
COPY requirements.txt requirements.txt 

# expose port 5000
EXPOSE 5000

# Install requirements 
RUN pip3 install -r requirements.txt 

# copy all items from directory into container 
COPY . . 

# command to run image 
CMD ["python","app.py"]

