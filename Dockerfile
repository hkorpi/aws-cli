FROM public.ecr.aws/aws-cli/aws-cli:latest
ARG uid
ARG gid

RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" && \
    yum install -y session-manager-plugin.rpm && \
    yum install -y shadow-utils

# create container user
# replace 1000 with your user / group id
RUN groupadd -g ${gid} developer && \
    useradd developer -u ${uid} -g ${gid} -m -s /bin/bash
USER developer

