FROM malindunimsara/v2ray
ENV TZ=Asia/Colombo
ADD devil-v2ray.sh /
RUN chmod +x /devil-v2ray.sh
CMD /devil-v2ray.sh
