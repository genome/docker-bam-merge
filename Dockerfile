FROM mgibio/picard-cwl:2.18.1
LABEL \
    description="picard and sambamba for bam merging"
    
RUN mkdir /opt/sambamba/ \
    && cd /opt/sambamba/ \
    && wget https://github.com/biod/sambamba/releases/download/v0.8.0/sambamba-0.8.0-linux-amd64-static.gz \
    && gunzip sambamba-0.8.0-linux-amd64-static.gz \
    && ln -s /opt/sambamba/sambamba-0.8.0-linux-amd64-static /usr/bin/sambamba \
    && chmod +x /opt/sambamba/sambamba-0.8.0-linux-amd64-static /usr/bin/sambamba
