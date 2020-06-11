FROM docker.apple.com/centos:7
ENV WORKDIR /tmp
ENV DEST /Laith


RUN yum install -y file wget gcc gcc-c++ pcre-devel glibc-devel make perl mercurial which zlib openssl pcre

RUN cd $WORKDIR && wgethttp://nginx.org/download/nginx-1.18.0.tar.gz
RUN tar zxf nginx-1.18.0.tar.gz


RUN  cd $WORKDIR && hg clone http://hg.nginx.org/njs

RUN cd $WORKDIR/nginx-$NGINX_VERSION && ./configure \
  --prefix=$DEST/nginx \
  --sbin-path=$DEST/nginx/nginx \
  --conf-path=$DEST/nginx/conf/nginx.conf \
  --error-log-path=$DEST/nginx/logs/nginx-error.log \
  --pid-path=$DEST/nginx/runtime/nginx.pid \
  --lock-path=$DEST/nginx/runtime/nginx.lock \
  --with-http_ssl_module \
  #--with-openssl=../openssl-$OPENSSL_VERSION \
  #--with-pcre=../pcre-$PCRE_VERSION \
  --with-debug \
  --with-http_auth_request_module \
  --with-http_gzip_static_module \
  --with-http_realip_module \
  --with-http_stub_status_module \
  --add-module=../njs/nginx \

  RUN rm -f $DEST/conf/AOS-nginx.conf
RUN tar zcf /nginx-1.18.0-centos-x86.tar.gz -C /tmp .

