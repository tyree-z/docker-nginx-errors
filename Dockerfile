FROM nginx:stable

COPY entrypoint.sh /usr/bin/
COPY error-pages/* /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
COPY custom.conf /etc/nginx/custom-errors.conf
COPY nginx.default.conf /etc/nginx/conf.d/default.conf

RUN chmod -R 755 /usr/share/nginx/html \
    && chown -R nginx:nginx /usr/share/nginx/html \
    && chmod +x /usr/bin/entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
