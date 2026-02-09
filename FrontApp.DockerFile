FROM node:22-trixie

# INITIALIZE USER
ARG UID
ARG GID
ARG USERNAME
ARG GROUPNAME
ARG HOME_DIR='/home/'${USERNAME}
RUN mkdir -p $HOME_DIR && \
    chown -R ${UID}:${GID} $HOME_DIR
RUN groupadd -g ${GID} ${GROUPNAME} -f && \
    useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USERNAME}
ENV HOME $HOME_DIR
USER ${UID}:${GID}

WORKDIR /app
COPY /package.json /app
RUN npm install