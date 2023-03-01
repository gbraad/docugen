FROM registry.fedoraproject.org/fedora:latest
#MAINTAINER Gerard Braad <me@gbraad.nl>

RUN dnf update -y \
    && dnf install -y git pandoc pandoc-pdf \
    && dnf clean all \
    && rm -rf /var/cache/yum

RUN dnf install -y rubygem-jekyll \
    && gem install pandoc-ruby \
    && dnf clean all \
    && rm -rf /var/cache/yum

RUN dnf install texlive texlive-xetex texlive-cjk wqy-microhei-fonts \
    && dnf clean all \
    && rm -rf /var/cache/yum

RUN mkdir -p /workspace
VOLUME ["/workspace"]
WORKDIR /workspace

CMD ["bash"]
