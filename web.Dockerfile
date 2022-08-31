FROM ubuntu:focal

USER root

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes --no-install-recommends \
    ca-certificates \
    locales \
    curl \
    git && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

RUN curl -fsSL http://deb.nodesource.com/setup_lts.x | bash -

RUN apt-get install -y nodejs

RUN git clone https://github.com/lmachens/arkesia.gg-web.git

WORKDIR /arkesia.gg-web

COPY .env .

RUN rm package-lock.json && npm install -f --omit=optional

EXPOSE 3000 8002

CMD ["/bin/bash", "-c", "npx prisma migrate dev;npm run dev"]
