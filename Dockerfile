FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

RUN npm install
RUN npm install verdaccio-github-oauth-ui
COPY config.yaml /verdaccio/conf
USER verdaccio
