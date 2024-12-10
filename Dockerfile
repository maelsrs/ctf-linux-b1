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

RUN echo "world1:world1" | chpasswd
RUN echo "world2:6xMbjDpGmPkkP9M@" | chpasswd
RUN echo "world3:R2ej%RH8B6GsW3AB" | chpasswd
RUN echo "world4:mdHWC^Y^UJZ@QCQt6!*wHVz8$EKykpQ4HXNtNgeb4QNvglCF2G!LEZDAJFUb3ny6wBh^^zcXvb@tRYgCkTBYcjqzATYFYw79Q4xZdQP*^3dM8hLns7o7Ehh@&$o4Xb6z" | chpasswd
RUN echo "world5:A9L$^4Ag2hEawgFNtYmlN%!BCVnn*B&9EqKUo&7bXmxdbnhEPhfuXBqb2%lu69!6" | chpasswd
RUN echo "root:8*@8@$#$2&%*7!4!!%@#73&9!9^%47%$!4@*8$*4#9674@48&86^2*8%7&#6&***2@$9@8%!&*@!4%^29!^87&34832#&9^7*&44!9&99$*573!624*%6&427&^39*#^" | chpasswd

#RUN wget -O /tmp/setup.sh web_url && \
#    chmod +x /tmp/setup.sh && \
#    /tmp/setup.sh && \
#    rm /tmp/setup.sh

COPY bash_scripts/ /tmp/bash
COPY utils/rockyou-1000.txt /usr/share/
RUN chmod +x /tmp/bash/* && cd /tmp/bash/ && ./setup.sh && rm -rf /tmp/bash/

USER world1

WORKDIR /home/world1

CMD ["/bin/bash"]

