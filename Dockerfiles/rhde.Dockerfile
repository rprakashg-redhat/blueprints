FROM registry.redhat.io/rhel9/rhel-bootc:9.4

RUN dnf \
    --enablerepo=rhel-9-for-x86_64-baseos-rpms \
    --enablerepo=rhel-9-for-x86_64-appstream-rpms \
    install -y \
    podman \
    runc \
    git \
    vim-enhanced \
    systemd-container \
    ansible-core \
    && dnf clean all \
    && rm -rf /var/{cache,log} /var/lib/{dnf,rhsm}

