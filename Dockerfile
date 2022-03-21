FROM fusuf/whatsasena:latest

RUN git clone https://github.com/black-panda-nishen /root/black-panda-nishen

WORKDIR /root/blackpanda/

ENV TZ=Europe/Istanbul

RUN npm install supervisor -g

RUN npm install

CMD ["node", "bot.js"]




