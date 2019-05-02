FROM ternandsparrow/natcap-invest-docker:1.1.0_3.6.0

ADD docker/ requirements.txt /app/
ADD natcap_invest_docker_flask/ /app/natcap_invest_docker_flask/
WORKDIR /app/
RUN /bin/bash setup.sh
ENTRYPOINT [ "/bin/bash", "run.sh" ]
