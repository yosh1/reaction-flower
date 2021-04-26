FROM node:10.24.1-alpine

ENV NODE_ENV=development

ARG project_dir=/app/
COPY package*.json ${project_dir}
WORKDIR ${project_dir}

RUN set -x && \
    npm i

COPY . ${project_dir}

EXPOSE 3000

CMD ["npm", "run", "start"]
