FROM rockylinux:8

RUN dnf -y update && \
dnf -y install \
bash \
vim \
wget \
findutils \ 
passwd && \
dnf clean all

RUN useradd -m -s /bin/bash world1
RUN useradd -m -s /bin/bash world2
RUN useradd -m -s /bin/bash world3
RUN useradd -m -s /bin/bash world4
RUN useradd -m -s /bin/bash world5

RUN echo "world1:password1" | chpasswd
RUN echo "world2:password2" | chpasswd
RUN echo "world3:password3" | chpasswd
RUN echo "world4:password4" | chpasswd
RUN echo "world5:password5" | chpasswd

#RUN wget -O /tmp/setup.sh web_url && \
#    chmod +x /tmp/setup.sh && \
#    /tmp/setup.sh && \
#    rm /tmp/setup.sh

COPY bash_scripts/ /tmp/bash
RUN chmod +x /tmp/bash/* && cd /tmp/bash/ && ./setup.sh && rm -rf /tmp/bash/

USER world1

WORKDIR /home/world1

CMD ["/bin/bash"]

