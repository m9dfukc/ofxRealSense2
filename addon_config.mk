# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file 
# system
# 
# The PG can be used to detect errors in this file, just create a new project with this addon 
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxRealSense2
	ADDON_DESCRIPTION = Intel RealSense 2 SDK bridge 
	ADDON_AUTHOR = Elie Zananiri
	ADDON_TAGS = 
	ADDON_URL = https://github.com/prisonerjohn/ofxRealSense2

common:

vs:
	ADDON_DLLS_TO_COPY = "libs/librealsense2/export/realsense2.dll"

linux64:
	ADDON_LDFLAGS = "../../../addons/ofxLibRealSense2/libs/librealsense2/lib/linux64/librealsense2.so"

linux:
win_cb:
linuxarmv6l:
linuxarmv7l:
android/armeabi:	
android/armeabi-v7a:	
