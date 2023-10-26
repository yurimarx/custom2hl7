## custom2hl7
 [![Quality Gate Status](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Fcustom2sda&metric=alert_status)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Fcustom2hl7)
 
This is a sample how to convert from a custom patient data format to the InterSystems HL7 format, using IRIS for Health productions.

## Installation: ZPM
Open IRIS Namespace with Interoperability Enabled.
Open Terminal and call:
USER>zpm "install custom2hl7"

## Installation: Docker
Clone/git pull the repo into any local directory

```
$ git clone https://github.com/yurimarx/custom2hl7.git
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```

## How to Run the Sample
Open the [production](http://localhost:32783/csp/user/EnsPortal.ProductionConfig.zen?$NAMESPACE=USER&PRODUCTION=custom2hl7.Custom2hl7Production) and start it. (user _SYSTEM and password SYS)
It will read patients3.csv and patients4.csv and convert to HL7 v2.

## Credits 
1. Synthea Database: https://synthea.mitre.org/downloads
2. Marcelo Zagatti from InterSystems Brazil
3. Sue O'Leary from InterSystems training team
4. FHIR template from https://github.com/intersystems-community/iris-fhir-template