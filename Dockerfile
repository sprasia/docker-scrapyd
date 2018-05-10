FROM python:3.6.5

RUN pip install --no-cache-dir \
        git+https://github.com/scrapy/scrapy.git \
        git+https://github.com/scrapy/scrapyd.git \
        git+https://github.com/scrapy/scrapyd-client.git \
        beautifulsoup4

COPY ./scrapyd.conf /etc/scrapyd/
VOLUME /etc/scrapyd/ /var/lib/scrapyd/

EXPOSE 6800
CMD ["scrapyd", "--pidfile="]
