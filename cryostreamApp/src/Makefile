TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cryostream
# cryostream.dbd will be created and installed
DBD += cryostream.dbd

# cryostream.dbd will be made up from these files:
cryostream_DBD += base.dbd

# Include dbd files from all support applications:
cryostream_DBD += asyn.dbd
cryostream_DBD += stream.dbd
cryostream_DBD += drvAsynIPPort.dbd

# Add all the support libraries needed by this IOC
cryostream_LIBS += asyn
cryostream_LIBS += stream

# cryostream_registerRecordDeviceDriver.cpp derives from cryostream.dbd
cryostream_SRCS += cryostream_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cryostream_SRCS_DEFAULT += cryostreamMain.cpp
cryostream_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cryostream_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cryostream_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

