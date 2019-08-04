FROM python:3-slim
ENV PYTHONUNBUFFERED 1
USER root
RUN DEBIAN_FRONTEND=noninteractive apt update && \
    apt install -qy procps git python3 python3-pip sqlite3
RUN git clone git://git.yoctoproject.org/srtool
RUN pip3 install --no-cache-dir -r srtool/bin/srtool-requirements.txt
RUN groupadd -r srtool && useradd -c "Default Application User" -g srtool -r -s /sbin/nologin --no-log-init srtool
RUN chown -R srtool:srtool /srtool
USER srtool
WORKDIR /srtool
#ENTRYPOINT [ "./bin/srt", "start", "webport=8000" ]