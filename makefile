

#Modify this to point to the PJSIP location.
PJBASE=/home/oranngeoai/Downloads/pjproject-2.7.1

include $(PJBASE)/build.mak

CC      = $(APP_CC)
LDFLAGS = $(APP_LDFLAGS)
LDLIBS  = $(APP_LDLIBS)
CFLAGS  = $(APP_CFLAGS)
CPPFLAGS= ${CFLAGS}

# If your application is in a file named myapp.cpp or myapp.c
# this is the line you will need to build the binary.
all: ice_main

main: ice_main.cpp
	$(CC) -o $@ $< $(CPPFLAGS) $(LDFLAGS) $(LDLIBS)

clean:
	rm -f ice_main.o ice_main
