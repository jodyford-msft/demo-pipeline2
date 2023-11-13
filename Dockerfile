# Use an official Python runtime as a parent image  
FROM python:3.9-slim-buster  
  
# Set the working directory to /app  
WORKDIR /app  
  
# Copy the current directory contents into the container at /app  
COPY . /app  
  
# Install any needed packages specified in requirements.txt  
RUN pip install --trusted-host pypi.python.org -r requirements.txt  
  
# Set the environment variable for Flask to run on port 5000  
ENV PORT 5000  
  
# Expose port 5000 for the Flask app to run on  
EXPOSE 5000  
  
# Run app.py when the container launches  
#CMD ["python", "app.py"]  
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
