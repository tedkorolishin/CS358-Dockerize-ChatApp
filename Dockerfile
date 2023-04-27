# set base image 
From python:3.9 

# sets working directory 
WORKDIR /ChatBot

# copy requirements.txt file to container 
COPY requirements.txt requirements.txt 

# Install requirements 
RUN pip3 install -r requirements.txt 

# copy all items from directory into container 
COPY . . 

# command to run image 
CMD ["python","app.py"]

