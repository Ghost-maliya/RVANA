FROM fusuf/whatsasena:latest

RUN git clone https://github.com/RAVANA-SL/RVANA /root/RVANA
WORKDIR /root/RVANA/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit


CMD ["node", "bot.js"]