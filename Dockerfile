FROM Shen02Bro/BlackPanda:lovegift

RUN git clone https://github.com/ravindu01manoj/PandaBlackWhatsappBot /root/PandaBlackWhatsappBot

WORKDIR /root/pandablackWhatsappBot/

ENV TZ=Asia/Colombo

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]
