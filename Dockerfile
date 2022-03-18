FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Shen02bro/BlackPanda/root/BlackPanda
WORKDIR /root/BlackPanda/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
