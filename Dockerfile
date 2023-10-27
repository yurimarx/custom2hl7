ARG IMAGE=intersystemsdc/irishealth-community:latest
FROM $IMAGE

USER root
WORKDIR /home/irisowner/irisdev

COPY csv csv
COPY hl7out hl7out 

RUN chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /home/irisowner/irisdev

USER ${ISC_PACKAGE_MGRUSER}

# run iris and initial 
RUN --mount=type=bind,src=.,dst=. \
    iris start IRIS && \
	iris session IRIS < iris.script && \
    iris stop IRIS quietly