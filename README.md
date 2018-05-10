# docker-scrapyd

Scrapyd is a service for running [Scrapy](https://github.com/scrapy/scrapy) spiders.

It allows you to deploy your Scrapy projects and control their spiders using an
HTTP web service API.

## Usage

See `docker-compose.yml`
```
version: '2'
services:
  scrapyd:
    image: sprasia/scrapyd:latest
    ports:
      - 6800:6800
    environment:
      TZ: Asia/Tokyo
    volumes:
      - scrapyd:/var/lib/scrapyd/

volumes:
  scrapyd:
```
