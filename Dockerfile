FROM node

RUN npm i -g @bubblewrap/cli

RUN yes|bubblewrap || echo ok

RUN yes|bubblewrap build || echo ok

CMD [ "bubblewrap" ]
