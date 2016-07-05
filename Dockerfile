FROM ubuntu


MAINTAINER Ramon Brooker <rbrooker@aetherealmind.com>

ENV DEBIAN_FRONTEND noninteractive

# to allow updates to be installed
RUN echo exit 1 > /usr/sbin/policy-rc.d; chmod +x /usr/sbin/policy-rc.d
# Install Updates, and other needed prgms
RUN apt-get update ; apt-get -y install logrotate wget apt-utils apt-transport-https bash-completion vim net-tools unzip ; apt-get -y upgrade


ADD src/ /
RUN mv /bashrc /root/.bashrc
RUN  /set-time.sh


CMD ["bash"]
