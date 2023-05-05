# set base image 
FROM python:3.9

# sets working directory 
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# expose port 5000
EXPOSE 5000

# Install requirements 
RUN pip3 install -r requirements.txt 

# command to run image 
CMD ["python","app.py"]

