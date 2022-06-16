FROM python:3.8-slim-buster

RUN apt-get update -y 
RUN apt-get install -y libsm6 libxext6 libxrender-dev ffmpeg
# FOR NMCLI
RUN apt-get install network-manager -y

WORKDIR /app
RUN pip3 install opencv-python

COPY . /app
ENTRYPOINT ["python3"]
CMD ["captureVid.py"]