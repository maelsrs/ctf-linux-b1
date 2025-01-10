FROM rockylinux:8

RUN dnf -y update && \
dnf -y install \
bash \
vim \
wget \
findutils \
nano \
passwd && \
dnf clean all

#e2fsprogs
RUN dnf -y install epel-release
RUN dnf -y install p7zip p7zip-plugins tar

RUN useradd -m -s /bin/bash world1
RUN useradd -m -s /bin/bash world2
RUN useradd -m -s /bin/bash world3
RUN useradd -m -s /bin/bash world4
RUN useradd -m -s /bin/bash world5
RUN useradd -m -s /bin/bash world5p2

RUN echo "world1:world1" | chpasswd
RUN echo "world2:6xMbjDpGmPkkP9M@" | chpasswd
RUN echo "world3:R2ej%RH8B6GsW3AB" | chpasswd
RUN echo "world4:PH27qQssaD4F@58YMf7uob#L$9y&rv@EkpED" | chpasswd
RUN echo "world5:A9L$^4Ag2hEawgFNtYmlN%!BCVnn*B&9EqKUo&7bXmxdbnhEPhfuXBqb2%lu69!6" | chpasswd
RUN echo "world5p2:{SOFT-HYPHEN}" | chpasswd
RUN echo "root:!iAu!y6ST&*oS2L*" | chpasswd

#RUN wget -O /tmp/setup.sh web_url && \
#    chmod +x /tmp/setup.sh && \
#    /tmp/setup.sh && \
#    rm /tmp/setup.sh

COPY bash_scripts/ /tmp/bash
COPY utils/rockyou-1000.txt /usr/share/
COPY utils/7x9436155656156678--12631 /tmp/bash/

RUN chmod +x /tmp/bash/* && cd /tmp/bash/ && ./setup.sh #&& rm -rf /tmp/bash/

USER world1

WORKDIR /home/world1

CMD ["/bin/bash"]

