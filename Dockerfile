RUN dnf -y update && \
dnf -y install \
bash \
vim \
wget && \
dnf clean all

RUN useradd -m -s /bin/bash world1

#RUN wget -O /tmp/setup.sh web_url && \
#    chmod +x /tmp/setup.sh && \
#    /tmp/setup.sh && \
#    rm /tmp/setup.sh

USER world1

WORKDIR /world1

CMD ["/bin/bash", "-c", "echo 'Please read README.txt'; exec /bin/bash"]

