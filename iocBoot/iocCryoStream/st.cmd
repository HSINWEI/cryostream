#!../../bin/linux-x86_64/cryostream

# when every cmd is tested successfully, comment the following line to run all cmd
#! epicsEnvSet("RUN","#!------")

# run every cmd which has prefix $(RUN), if $(RUN) is unset
$(RUN="") epicsEnvSet("RUN","")
epicsEnvSet("TEST","")
epicsEnvSet("SKIP","#!------")
epicsEnvSet("UNDONE","#!------")

< envPaths

# Specify proto file search location
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(CRYOSTREAM)/cryostreamApp/Db")

# Specify db file search location
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(CRYOSTREAM)/cryostreamApp/Db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/cryostream.dbd"
cryostream_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"

# CryoStream
$(RUN) < live/cryostream.cmd

iocInit

