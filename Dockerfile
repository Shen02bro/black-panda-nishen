FROM fusuf/whatsasena:latest

RUN git clone https://github.com/botkolla1/BlackPanda /root/BlackPanda
WORKDIR /root/BlackPanda/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
