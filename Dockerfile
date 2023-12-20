FROM nginx
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY conf/* /etc/nginx/

RUN mkdir api_conf.d
COPY conf/api_conf.d/payment_api.conf.template /etc/nginx/api_conf.d/payment_api.conf.template

COPY certs/eledenapi.com.crt /etc/ssl/certs/eledenapi.com.crt
COPY certs/eledenapi.com.key /etc/ssl/certs/eledenapi.com.key