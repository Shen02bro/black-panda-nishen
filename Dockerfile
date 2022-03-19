FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Shen02bro/black-panda/root/black-panda
WORKDIR /root/black-panda/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
