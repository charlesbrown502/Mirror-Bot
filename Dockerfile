FROM charlesbrown502/mirrorbot:latest

WORKDIR /usr/src/app
COPY . .

RUN set -ex \
    && chmod 777 /usr/src/app \ 
    && pip3 install --no-cache-dir -r requirements.txt \
    && cp .netrc /root/.netrc \
    && chmod 600 /usr/src/app/.netrc \
    && cp extract pextract /usr/local/bin \
    && chmod +x aria.sh /usr/local/bin/extract /usr/local/bin/pextract
CMD ["bash", "start.sh"]
