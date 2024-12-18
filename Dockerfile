FROM spug-base:20241216

RUN mkdir -p /data/repos
COPY spug_api /data/spug/spug_api
COPY spug_web/build /data/spug/spug_web/build
COPY init_spug /usr/bin/
COPY nginx.conf /etc/nginx/
COPY ssh_config /etc/ssh/
COPY spug.ini /etc/supervisord.d/
COPY redis.conf /etc/
COPY entrypoint.sh /

VOLUME /data
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
