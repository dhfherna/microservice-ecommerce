# Usa una imagen base de Debian (bullseye) con OpenJDK
ARG VARIANT=17-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

ARG JAVA_VERSION=17

RUN apt-get update && \
    apt-get install -y openjdk-${JAVA_VERSION}-jdk maven curl unzip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

RUN java -version && mvn --version

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

WORKDIR /workspace
