FROM node

RUN npm install -g cspell

WORKDIR /data

CMD cspell
## docker run --rm -it --name spell -v `pwd`:/data cspell cspell lint --relative --gitignore "**"