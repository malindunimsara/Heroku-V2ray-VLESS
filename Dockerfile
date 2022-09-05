FROM teddysun/xray
ENV TZ=Asia/Colombo
ADD devil-v2ray.sh /
RUN chmod +x /devil-v2ray.sh
CMD /devil-v2ray.sh
