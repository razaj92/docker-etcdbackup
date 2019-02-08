FROM mesosphere/aws-cli:1.14.5

ENV VERSION 3.3.11

COPY backup.sh /usr/local/bin/backup

RUN apk add --no-cache curl bash && \
    curl -LOks https://github.com/etcd-io/etcd/releases/download/v${VERSION}/etcd-v${VERSION}-linux-amd64.tar.gz && \
    tar zxvf etcd-v${VERSION}-linux-amd64.tar.gz && \
    cp etcd-v${VERSION}-linux-amd64/etcdctl /usr/local/bin/etcdctl && \
    rm -rf etcd-v* && \
    chmod +x /usr/local/bin/etcdctl && \
    chmod +x /usr/local/bin/backup

WORKDIR /

ENTRYPOINT ["backup"]
