FROM backbencherspot/paperspace_vscode:latest

# Install conda
RUN curl -o ~/miniconda.sh -O  https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b && \
    rm ~/miniconda.sh && \
    /home/coder/miniconda3/bin/conda install conda-build

ENV PATH=$PATH:/home/coder/miniconda3/bin/

# Entrypoint
COPY run.sh /run.sh
EXPOSE 8888
EXPOSE 8889
EXPOSE 8890
ENTRYPOINT ["/run.sh"]
