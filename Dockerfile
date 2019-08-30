FROM python:3.7
 
### Creating Application Source Code Directory
RUN mkdir -p /SRE

### Setting Home Directory for containers
WORKDIR /SRE

### Installing python dependencies
COPY requirements.txt /SRE/
RUN pip install --no-cache-dir -r requirements.txt

### Copying src code to Container
COPY . /SRE/

### Application Environment variables
ENV APP_ENV development

### Exposing Ports
EXPOSE 5000

### Running Python Application
CMD ["python", "SRE_python.py"]
