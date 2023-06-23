# Define options
set val(chan) Channel/WirelessChannel ;# channel type
set val(prop) Propagation/TwoRayGround ;# radio-propagation model
set val(netif) Phy/WirelessPhy ;# network interface type
set val(mac) Mac/802_11 ;# MAC type
set val(ifq) Queue/DropTail/PriQueue ;# interface queue type
set val(ll) LL ;# link layer type
set val(ant) Antenna/OmniAntenna ;# antenna model
set val(ifqlen) 50 ;# max packet in ifq
set val(nn) 50 ;# number of mobilenodes
set val(rp) DSDV ;
set val(x) 1000 ;# X dimension of topography
set val(y) 1000 ;# Y dimension of topo  graphy
set val(stop) 150 ;# time of simulation end

set ns [new Simulator]
set tracefd [open simple.tr w]
set namtrace [open simwrls.nam w]

$ns trace-all $tracefd
$ns namtrace-all-wireless $namtrace $val(x) $val(y)

# set up topography object
set topo [new Topography]

$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)



# configure the nodes
$ns node-config -adhocRouting $val(rp) \
-llType $val(ll) \
-macType $val(mac) \
-ifqType $val(ifq) \
-ifqLen $val(ifqlen) \
-antType $val(ant) \
-propType $val(prop) \
-phyType $val(netif) \
-channelType $val(chan) \
-topoInstance $topo \
-agentTrace ON \
-routerTrace ON \
-macTrace OFF \
-movementTrace ON

for {set i 0} {$i < $val(nn) } { incr i } {
set n($i) [$ns node]
 $n($i) color blue
            $ns at 0.0 "$n($i) color blue"
 

}

# Provide initial location of mobilenodes

$n(0) color red
$n(7) set X_ 30.0
$n(7) set Y_ 4.0
$n(7) set Z_ 0.0
$n(7) color red


$n(2) set X_ 91.6678
$n(2) set Y_ 280.592
$n(2) set Z_ 0.0

$n(6) set X_ 24.0326
$n(6) set Y_ 168.474
$n(6) set Z_ 0.0


$n(3) set X_ -65.9721
$n(3) set Y_ 79.1654
$n(3) set Z_ 0.0

$n(4) set X_ 171.98
$n(4) set Y_ 114.221
$n(4) set Z_ 0.0



$n(8) set X_ 98.0155
$n(8) set Y_ 206.64
$n(8) set Z_ 0.0



$n(10) set X_ 69.0
$n(10) set Y_ 6.0
$n(10) set Z_ 0.0

$n(11) set X_ 62.1082  
$n(11) set Y_ 76.3292
$n(11) set Z_ 0.0


$n(12) set X_ 414.142  
$n(12) set Y_ 165.638
$n(12) set Z_ 0.0

$n(13) set X_ 299.688 
$n(13) set Y_ 120.55
$n(13) set Z_ 0.0

$n(14) set X_ -210.154  
$n(14) set Y_ 168.24
$n(14) set Z_ 0.0
$n(15) set X_ -237.901  
$n(15) set Y_ 127.487
$n(15) set Z_ 0.0
$n(16) set X_ 617.039 
$n(16) set Y_ 107.544
$n(16) set Z_ 0.0
$n(17) set X_ 499.983  
$n(17) set Y_ 135.291
$n(17) set Z_ 0.0
$n(18) set X_ -299.464
$n(18) set Y_ 232.403
$n(18) set Z_ 0.0
$n(19) set X_ -230.542  
$n(19) set Y_ 13.03255
$n(19) set Z_ 0.0
$n(20) set X_ 141.879  
$n(20) set Y_ 26.0387
$n(20) set Z_ 0.0
$n(21) set X_ -32.4034  
$n(21) set Y_ 143.094
$n(21) set Z_ 0.0

$n(23) set X_ 538.134
$n(23) set Y_ 140.493
$n(23) set Z_ 0.0
$n(24) set X_ 247.633  
$n(24) set Y_ 247.144
$n(24) set Z_ 0.0
$n(25) set X_ -105.0  
$n(25) set Y_ 230.669
$n(25) set Z_ 0.0
$n(26) set X_ -15.0618  
$n(26) set Y_ 191.651
$n(26) set Z_ 0.0
$n(27) set X_ 191.303  
$n(27) set Y_ 220.264
$n(27) set Z_ 0.0
$n(28) set X_ 501.717  
$n(28) set Y_ 71.1267
$n(28) set Z_ 0.0
$n(29) set X_ 268.473 
$n(29) set Y_ 199.454
$n(29) set Z_ 0.0
$n(30) set X_ 307.491  
$n(30) set Y_ 28.5873
$n(30) set Z_ 0.0
$n(31) set X_ 28.2921  
$n(31) set Y_ 50.3169
$n(31) set Z_ 0.0


$n(35) set X_ -208.42  
$n(35) set Y_ 22.5177
$n(35) set Z_ 0.0
$n(36) set X_ -232.699
$n(36) set Y_ 275.757
$n(36) set Z_ 0.0
$n(37) set X_ -276.052
$n(37) set Y_ 173.442
$n(37) set Z_ 0.0
$n(38) set X_ -192.813  
$n(38) set Y_ 235.005
$n(38) set Z_ 0.0

$n(40) set X_ -96.5672  
$n(40) set Y_ 147.43
$n(40) set Z_ 0.0
$n(41) set X_ -149.459  
$n(41) set Y_ 8.69709
$n(41) set Z_ 0.0
$n(42) set X_ 104.595  
$n(42) set Y_ 27.7728
$n(42) set Z_ 0.0

$n(44) set X_ -148.592  
$n(44) set Y_ 53.7852
$n(44) set Z_ 0.0
$n(45) set X_ 306.624  
$n(45) set Y_ 37.3107
$n(45) set Z_ 0.0
$n(46) set X_ 225.119  
$n(46) set Y_ 203.79
$n(46) set Z_ 0.0
$n(47) set X_ -27.2009  
$n(47) set Y_ 237.606
$n(47) set Z_ 0.0
$n(49) set X_ -118.79  
$n(49) set Y_ 37.2844
$n(49) set Z_ 0.0












            $ns at 1.5 "$n(26) color red"
$ns at 1.5 "$n(25) color red"
$ns at 1.5 "$n(47) color red"
$ns at 1.5 "$n(26) label CHReady"
$ns at 1.5 "$n(25) label CHReady"
$ns at 1.5 "$n(47) label CHReady"
$ns at 1.6 "$n(25) label N1"
$ns at 1.6 "$n(47) label N2"
$ns at 1.6 "$n(21) label N3"
$ns at 1.6 "$n(6) label N4"
$ns at 1.6 "$n(8) label N5"
$ns at 1.6 "$n(27) label N6"
$ns at 1.6 "$n(24) label N7"
$ns at 1.6 "$n(29) label N8"
$ns at 1.6 "$n(25) color blue"
$ns at 1.6 "$n(47) color blue"

#$ns at 100.0 "$n(6) setdest 270.0 160.0 5.0"





# Set a TCP connection between n(46) and n(24) for vehicular network

set tcp15 [new Agent/TCP/Newreno]
$tcp15 set maxcwnd_ 16
$tcp15 set fid_ 4
set sink15 [new Agent/TCPSink]
$ns attach-agent $n(13) $tcp15
$ns attach-agent $n(24) $sink15
$ns connect $tcp15 $sink15
set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp15
$n(46) color red
            $ns at 15.0 "$n(46) color red"
$ns at 15.0 "$n(46) label CH"
$ns at 1.0 "$ftp15 start"
$ns at 50.0 "$ftp15 stop"
$ns at 110.0 "$n(6) setdest 283.0 160.0 5.0"



# Set a vehicular blockchain connection between n(46) and n(27)

set tcp13 [new Agent/TCP/Newreno]
$tcp13 set maxcwnd_ 16
$tcp13 set fid_ 4
set sink13 [new Agent/TCPSink]
$ns attach-agent $n(24) $tcp13
$ns attach-agent $n(13) $sink13
$ns connect $tcp13 $sink13
set ftp13 [new Application/FTP]
$ftp13 attach-agent $tcp13
$ns at 1.0 "$ftp13 start"
$ns at 50.0 "$ftp13 stop"
$ns at 15.0 "$n(27) color cyan"
$ns at 15.0 "$n(27) label GWReady"
$ns at 110.0 "$n(6) setdest 293.0 160.0 5.0"


# Set a vehicular block chain connection between n(26) and n(21)

set tcp14 [new Agent/TCP/Newreno]
$tcp14 set maxcwnd_ 16
$tcp14 set fid_ 4
set sink14 [new Agent/TCPSink]
$ns attach-agent $n(24) $tcp14
$ns attach-agent $n(20) $sink14
$ns connect $tcp14 $sink14
set ftp14 [new Application/FTP]
$ftp14 attach-agent $tcp14
$ns at 51.0 "$ftp14 start"
$ns at 130.0 "$ftp14 stop"
$ns at 2.0 "$n(21) color cyan"
$ns at 2.0 "$n(21) label GWReady"

# Set a vehicular block chain connection connection between n(26) and n(8)

set tcp15 [new Agent/TCP/Newreno]
$tcp15 set maxcwnd_ 16
$tcp15 set fid_ 4
set sink15 [new Agent/TCPSink]
$ns attach-agent $n(20) $tcp15
$ns attach-agent $n(24) $sink15
$ns connect $tcp15 $sink15
set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp15
$ns at 52.0 "$ftp15 start"
$ns at 130.0 "$ftp15 stop"
$ns at 2.0 "$n(8) color cyan"
$ns at 2.0 "$n(8) label GWReady"








#$ns at 0.0 "$n(2) label N2"





#$ns at 15.0 "$n(11) setdest 115.0 85.0 5.0"

#Color change while moving from one group to another


# Define node initial position in nam
for {set i 0} {$i < $val(nn)} { incr i } {
# 20 defines the node size for nam
$ns initial_node_pos $n($i) 20
}

# Telling nodes when the simulation ends
for {set i 0} {$i < $val(nn) } { incr i } {
$ns at $val(stop) "$n($i) reset";
}

# ending nam and the simulation
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at 150.01 "puts \"end simulation\" ; $ns halt"
proc stop {} {
global ns tracefd namtrace
$ns flush-trace
close $tracefd
close $namtrace
exec nam simwrls.nam &
}

$ns run 
