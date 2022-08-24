# Add a new comment to trigger build.
# basic nginx dockerfile starting with Ubuntu 20.04
FROM ubuntu

COPY ./venv /

CMD ["/bin/bash"]
