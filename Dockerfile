FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y upgrade && \
    apt install -y wget tini && \
    wget -P /opt https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh && \
    bash /opt/Anaconda3-2020.11-Linux-x86_64.sh -b -p /opt/anaconda3 && \
    rm /opt/Anaconda3-2020.11-Linux-x86_64.sh && \
    /opt/anaconda3/bin/conda init && \
    /opt/anaconda3/bin/conda install jupyter pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch

ENV PATH /opt/anaconda3/bin:$PATH

WORKDIR /workspace

ENTRYPOINT ["tini", "-g", "--"]
CMD ["/opt/anaconda3/bin/jupyter", "notebook", "--port=8000", "--ip=0.0.0.0", "--allow-root"]
