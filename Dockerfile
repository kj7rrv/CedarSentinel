FROM python:3.10-alpine

WORKDIR /app
COPY . /app/

RUN pip install --no-cache-dir pyyaml discord.py irc gptc tornado lark

EXPOSE 8888/tcp
CMD [ "python", "./bot.py" ]