# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Kyy-Userbot ━━━━━

RUN git clone -b KARMAN-USERBOT https://github.com/ArmanGG01/KARMAN-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ArmanGG01/KARMAN-USERBOT/KARMAN-USERBOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
