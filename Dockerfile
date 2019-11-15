FROM nagadomi/torch7
MAINTAINER jsheradin <jsheradin@gmail.com>

# install neural-style
RUN apt-get update
RUN apt install -y libprotobuf-dev protobuf-compiler wget
RUN luarocks install loadcaffe
RUN git clone https://github.com/jcjohnson/neural-style.git /neural-style
RUN cd /neural-style && sh models/download_models.sh

WORKDIR /neural-style/
