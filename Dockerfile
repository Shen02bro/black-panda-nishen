FROM nishnishendanidu/redblacky:fullcontrol

RUN git clone https://github.com/nishnishendaniduredblacky/root/redblackywhatsappbot

WORKDIR /root/redBlackywhatsappBot/

ENV TZ=Asia/Colombo

RUN npm install supervisor-g

RUN yarn install--no-audit

CMD ["node", "bot.js"]
