FROM node

COPY . .
RUN chmod +x init.sh
RUN chmod +x build.sh
RUN apt-get update && apt-get install -y unzip


ENTRYPOINT ["/bin/bash"]
CMD ["init.sh"]
