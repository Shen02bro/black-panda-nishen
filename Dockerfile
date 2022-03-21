FROM Shen02bro/blackpanda:public

RUN git clone https://github.com/Shen02bro/blackpanda /root/black-panda-nishen

WORKDIR /root/black-panda-nishen/

ENV TZ=Asia/Colombo

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]



