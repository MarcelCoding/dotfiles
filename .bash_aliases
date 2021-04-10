alias dev="sudo docker run --rm -it --entrypoint /bin/bash -u 0 -v \"${PWD}:/root/pwd\" --workdir /root/pwd -p 9000:9000 ubuntu"
alias dev:php="sudo docker run --rm -it php"

