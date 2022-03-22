FROM Shen02Bro/BlackPanda:public

RUN git clone https://github.com/Shen02bro/BlackPanda v3 /root/BlackPanda v3

WORKDIR /root/BlackPanda v3/

ENV TZ=Asia/Colombo

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]



