# invoke SourceDir generated makefile for empty.pem4
empty.pem4: .libraries,empty.pem4
.libraries,empty.pem4: package/cfg/empty_pem4.xdl
	$(MAKE) -f C:\DEVELO~1\SENIOR~1\GroBot_CFiles\GroBot_OS/src/makefile.libs

clean::
	$(MAKE) -f C:\DEVELO~1\SENIOR~1\GroBot_CFiles\GroBot_OS/src/makefile.libs clean

