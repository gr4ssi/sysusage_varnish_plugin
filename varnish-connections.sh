#!/bin/bash

# This is a Plugin for SYSUSAGE v3 to show varnish Connection and Request Statistcs
# please refer to http://sysusage.darold.net/ for questions regarding SysUsage
# Refer to makeITyourway.de for questions regarding this plugin
# Mike Schiessl - info@makeityourway.de
# more plugins: http://makeityourway.de/open-source/sysusage


#v0.2
# switched delaytime to 3 seconds to avoid heavy graph jumping

my_varnishstat_bin="/opt/varnish/bin/varnishstat"


#------------------------------------

	# Get the infromations from varnishstat
	t_stat1=`$my_varnishstat_bin -1 -f client_conn,client_req`
	sleep 3
	t_stat2=`$my_varnishstat_bin -1 -f client_conn,client_req`

	# Client Requests
	t_req1=`echo -e "$t_stat1" | grep client_req |  egrep -o "[0-9]*" | head -n 1`
	t_req2=`echo -e "$t_stat2" | grep client_req |  egrep -o "[0-9]*" | head -n 1`
	let t_req=($t_req2-$t_req1)/3

	# CLient Connections
	t_con1=`echo -e "$t_stat1" | grep client_conn |  egrep -o "[0-9]*" | head -n 1`
	t_con2=`echo -e "$t_stat2" | grep client_conn |  egrep -o "[0-9]*" | head -n 1`
	let t_con=($t_con2-$t_con1)/3
	
	# Return the values
	echo "$t_req $t_con"


