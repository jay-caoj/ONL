#!/usr/bin/python
############################################################
#
# Platform Driver for powerpc-centec-e580-20q4z-r0 
#
############################################################
import os
import struct
import time
import subprocess
from onl.platform.base import *
from onl.vendor.centec import *

class OpenNetworkPlatformImplementation(OpenNetworkPlatformCentec):

    def model(self):
        return "E580-20Q4Z"

    def platform(self):
        return 'powerpc-centec-e580-20q4z-r0'

    def _plat_info_dict(self):
        return {
            platinfo.LAG_COMPONENT_MAX : 16,
            platinfo.PORT_COUNT : 54
            }

    def _plat_oid_table(self):
        return None 


if __name__ == "__main__":
    print OpenNetworkPlatformImplementation()

