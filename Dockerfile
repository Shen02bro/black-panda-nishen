FROM nishnishendanidu/black-panda:fullcontrol

RUN git clone https://github.com/Shen02bro/root/black-pandawhatsappbot

WORKDIR /root/blackpandawhatsappBot/

ENV TZ=Asia/Colombo

RUN npm install supervisor-g

RUN yarn install--no-audit

CMD ["node", "bot.js"]
