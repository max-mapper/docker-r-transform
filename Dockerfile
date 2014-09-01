from chilijung/docker-r

workdir /root
onbuild add . /root/

entrypoint ["./transform.r"]