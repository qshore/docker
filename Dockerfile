# Use an official Python runtime as a parent image
 FROM centos:latest

# Set the working directory to /test
 RUN mkdir -p /test/
 WORKDIR /test

# Copy the current directory contents into the container at /test/
 ADD tmp/ /test/

RUN yum update -y
 RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
 RUN python get-pip.py
 RUN pip install Jinja2

# Run script.sh when the container launches
 CMD ["/bin/bash", "/test/hello.sh"]
