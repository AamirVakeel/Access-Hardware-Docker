FROM python:3.8-slim-buster

RUN apt-get update -y 
# RUN apt-get install -y libsm6 libxext6 libxrender-dev ffmpeg
# FOR NMCLI
RUN apt-get install network-manager -y

WORKDIR /app
# RUN pip3 install opencv-python

COPY . /app
RUN chmod +x hotspot.sh

# RUN cp aamir /dev/aamir
# RUN mkdir -p /var/run/dbus/aamir
# RUN cp aamir /var/run/dbus/aamir/aamir
ENTRYPOINT ["python3"]
CMD ["makeHotspot.py"]