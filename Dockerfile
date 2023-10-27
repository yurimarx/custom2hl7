ARG IMAGE=intersystemsdc/irishealth-community:latest
FROM $IMAGE

WORKDIR /home/irisowner/irisdev

#RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp

RUN chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /home/irisowner/irisdev

USER ${ISC_PACKAGE_MGRUSER}

COPY csv csv
COPY hl7out hl7out 

# run iris and initial 
RUN --mount=type=bind,src=.,dst=. \
    iris start IRIS && \
	iris session IRIS < iris.script && \
    iris stop IRIS quietly
