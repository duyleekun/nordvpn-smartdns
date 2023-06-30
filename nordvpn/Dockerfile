FROM ubuntu
RUN apt update && apt install -y curl systemctl && apt clean
WORKDIR /root
RUN mkdir -p /run/nordvpn
RUN mkdir -p /root/.config/nordvpn/
RUN curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh > install.sh
RUN chmod a+x install.sh
RUN ./install.sh -n  && apt clean
ADD data/ /var/lib/nordvpn/data/
ADD entrypoint.sh ./
RUN chmod a+x entrypoint.sh
ENTRYPOINT ./entrypoint.sh
