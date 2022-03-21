FROM shen02bro/blackpanda:public

RUN git clone https://github.com/Shen02bro/Black-Panda-Nishen /root/Black-Panda-Nishen

WORKDIR /root/Black-Panda-Nishen/

ENV TZ=Asia/Colombo

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]



