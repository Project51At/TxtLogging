# TxtLogging
A small script that logs events in reverse order

# Look and feel
Mi 22.01.2020
05:53:29 - Event 1
07:14:29 - Event 2
07:36:29 - Event 3
07:44:29 - Event 4

Di 21.01.2020
05:53:25 - Event 1
07:24:25 - Event 2
07:52:25 - Event 3

# OpenHab Rule
```
rule "TEST"
	when
		Item Logging_Test changed
	then
		val  String	cfgAccessLogTest		= "/etc/openhab2/html/KeyAccessControl_Test.txt"
    val  String cfgTxtLoggingScript	= "/var/lib/openhab2/scripts/TxtLogging/src/TxtLogging.sh"

		executeCommandLine( "/bin/bash" +"@@" + cfgTxtLoggingScript + "@@" + "AddHeader" + "@@" + "Mi 22.01.2020" + "@@" + cfgAccessLogTest,  5000)

		executeCommandLine( "/bin/bash" +"@@" + cfgTxtLoggingScript + "@@" + "AddItem" + "@@" + "05:53:29 - Event 1" + "@@" + cfgAccessLogTest,  5000)


end
```
