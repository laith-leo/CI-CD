FROM centos:7
RUN yum install -y file wget gcc gcc-c++ pcre-devel glibc-devel make perl mercurial which zlib openssl openssl-devel pcre

RUN cd /tmp && wget http://nginx.org/download/nginx-1.18.0.tar.gz && tar zxf /tmp/nginx-1.18.0.tar.gz

#cd /tmp && hg clone http://hg.nginx.org/njs
RUN ls /tmp/
RUN cd /tmp/nginx-1.18.0 && ./configure \
  --prefix=/Laith/nginx \
  --sbin-path=/Laith/nginx/nginx \
  --conf-path=/Laith/nginx/conf/nginx.conf \
  --error-log-path=/Laith/nginx/logs/nginx-error.log \
  --pid-path=/Laith/nginx/runtime/nginx.pid \
  --lock-path=/Laith/nginx/runtime/nginx.lock \
  --with-http_ssl_module \
  --with-debug \
  --with-http_auth_request_module \
  --with-http_gzip_static_module \
  --with-http_realip_module \
  --with-http_stub_status_module && make && make install
RUN tar zcf /nginx-1.18.0-centos-x86.tar.gz -C /tmp .

