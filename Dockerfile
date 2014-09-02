from eddelbuettel/docker-ubuntu-r

onbuild run echo 'options("repos"="http://cran.rstudio.com", encoding="UTF-8")' > /.Rprofile
onbuild run Rscript -e 'install.packages(c("RJSONIO"))

workdir /root
add . /root/

entrypoint ["./transform.r"]
