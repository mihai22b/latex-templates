FROM docker.io/texlive/texlive
RUN ["mkdir", "-p", "/root/latex-templates/container"]
WORKDIR /root/latex-templates/container
COPY ["container/root.sh", "."]
RUN ["./root.sh"]

USER user:user
WORKDIR /home/user
RUN ["mkdir", "latex-templates"]
WORKDIR /home/user/latex-templates
COPY --chown=user:user [".", "."]
RUN ["./build.sh"]
