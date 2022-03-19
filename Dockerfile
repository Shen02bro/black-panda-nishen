FROM Shen02bro/blackpanda:fullcontrol

RUN git clone https://github.com/Shen02bro/root/blackpandawhatsappbot

WORKDIR /root/blackpandawhatsappBot/

ENV TZ=Asia/Colombo

RUN npm install supervisor-g

RUN yarn install--no-audit

CMD ["node", "bot.js"]
