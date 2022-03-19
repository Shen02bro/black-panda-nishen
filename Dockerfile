FROM fusuf/blackpanda:latest

RUN git clone $GITHUB_REPO_URL /root/BlackPanda

WORKDIR /root/BlackPanda/

ENV TZ=Europe/Istanbul

RUN npm install supervisor -g

RUN apk --no-cache --virtual build-dependencies add \

    python \

    make \

    g++ \

    && npm install \

    && apk del build-dependencies

RUN npm install

CMD ["node", "bot.js"]

