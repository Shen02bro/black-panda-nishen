FROM blackamda/queenamdi:public

RUN git clone https://github.com/BlackAmda/QueenAmdi-v3 /root/QueenAmdi-v3

WORKDIR /root/QueenAmdi-v3/

ENV TZ=Asia/Colombo

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]



