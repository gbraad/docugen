FROM registry.gitlab.com/gbraad/ubuntu:trusty
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
    sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

RUN apt-get update

RUN apt-get install -y build-essential curl

RUN curl -sSL https://github.com/jgm/pandoc/releases/download/1.17.2/pandoc-1.17.2-1-amd64.deb -o/tmp/pandoc.deb && \
    dpkg -i /tmp/pandoc.deb && \
    rm -f /tmp/pandoc.deb

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
    curl -sSL https://get.rvm.io | bash -s stable && \
    echo 'source /etc/profile.d/rvm.sh' >> ~/.bashrc && \
    /usr/local/rvm/bin/rvm --default install 2.3.0

ENV PATH /usr/local/rvm/gems/ruby-2.3.0/bin:/usr/local/rvm/gems/ruby-2.3.0@global/bin:/usr/local/rvm/rubies/ruby-2.3.0/bin:$PATH

RUN gem install jekyll && gem install pandoc-ruby

RUN apt-get install -y texlive texlive-xetex texlive-latex-recommended texlive-latex-extra texlive-lang-cjk

RUN apt-get install -y fonts-wqy-microhei fonts-wqy-zenhei texlive-fonts-recommended

RUN apt-get install -y phantomjs

# Define default command.
CMD ["bash"]
