FROM jonathan52306/arptbase
RUN mkdir /index
COPY /index.html /index

RUN mkdir /bot
COPY bot /bot
RUN chmod 0777 /bot/ -R

RUN sudo chmod 777 /root/.aria2/

COPY /config/upload.sh /
RUN chmod 0777 /upload.sh

COPY /start.sh /
CMD chmod 0777 start.sh && bash start.sh
