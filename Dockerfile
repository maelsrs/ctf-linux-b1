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

    RUN dnf -y install epel-release
    RUN dnf -y install p7zip p7zip-plugins tar gcc make bison python3.11

    RUN useradd -m -s /bin/bash world1
    RUN useradd -m -s /bin/bash world2
    RUN useradd -m -s /bin/bash world3
    RUN useradd -m -s /bin/bash world4
    RUN useradd -m -s /bin/bash world5
    RUN useradd -m -s /bin/bash world5p2
    RUN useradd -M -s /bin/bash gccuser

    COPY bash_scripts/ /tmp/bash
    COPY utils/ /tmp/bash/
    COPY readmes/ /tmp/bash/readme

    RUN chmod +x /tmp/bash/* && cd /tmp/bash/ && ./final_obfuscated.sh && rm -rf /tmp/bash/

    USER world1

    WORKDIR /home/world1

    CMD ["/bin/bash"]

