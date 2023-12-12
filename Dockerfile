FROM ubuntu:jammy
RUN apt update -y && apt install nano -y 
RUN groupadd --gid 30025 domain_users
RUN useradd -m --uid 30016 --gid 30025 alu13030608
USER alu13030608
WORKDIR /home/alu13030608
CMD ["/bin/bash"]

