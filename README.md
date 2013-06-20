# Author
 Mike Schiessl - info@makeityourway.de

# Information
 This is a Plugin for SYSUSAGE v3 to show varnishd connections and requests
 - Please refer to http://sysusage.darold.net/ for questions regarding SysUsage
 - Refer to makeITyourway.de for questions regarding this plugin

# Installation
 - copy the "varnish-connections.sh" to your SysUsage /plugins/ directory
 - append the following lines to your SysUsage Cfg and change your plugin path

        [PLUGIN varnishd_conn]
        title:Varnishd Connections (miyw)
        enable:yes
        program:/opt/sysusage/plugins/varnish-connections.sh
        minThreshold:
        maxThreshold:
        verticallabel:Number of processes per second
        label1:number of client requests per second
        label2:number of client connections per second
        label3:
        legend1:req's
        legend2:con's
        legend3:

        title:Varnishd Connections (miyw)
        enable:yes
        program:<YOUR-PLUGIN-PATH-HERE>/varnish-connections.sh
        minThreshold:
        maxThreshold:
        verticallabel:Number of processes
        label1:number of client requests per second
        label2:number of client connections per second
        label3:
        legend1:seconds
        legend2:
        legend3:

