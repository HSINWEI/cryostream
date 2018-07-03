## Load record instances
dbLoadRecords("$(CRYOSTREAM)/cryostreamApp/Db/cryostream.template","P=09a:,R=CryoStream:,ESLO=0.9277,EOFF=12.8910,CAL_THRES_TEMP=320,PORT=CRYO800P")

dbLoadRecords("$(ASYN)/db/asynRecord.db","P=09a:,R=Cryo:Asyn,PORT=CRYO800P,ADDR=0,OMAX=80,IMAX=80")

# connect to cryostream 2408 at 9600 baud, none,8,1 via terminal server moxa
#drvAsynIPPortConfigure("portName","hostInfo",priority,noAutoConnect,
#                        noProcessEos)
#drvAsynIPPortConfigure("CRYO800P","localhost:4001",0,0,0)
#drvAsynIPPortConfigure("CRYO800P","192.168.2.51:4008",0,0,0)
drvAsynIPPortConfigure("CRYO800P","192.168.2.56:4001",0,0,0)

#!DBG!asynSetTraceMask(CRYO800P,0,0x8)
#!DBG!asynSetTraceIOMask(CRYO800P,0,0x4)
