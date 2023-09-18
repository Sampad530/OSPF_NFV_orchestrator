It is a readme file of OSPF NFV orchestrator.

There is 4 options in the orchestrator.

a) Run the below command to get figure 1(a) topology:
   $./orchestrator-SBanik.sh -1
    
b) Run the below command to add a router R4 as described in figure 1(b) topology:
   $./orchestrator-SBanik.sh -2

c) Run the below command to move traffic from R2 to R4 as described in figure 1(c) topology:
   $./orchestrator-SBanik.sh -3

d) Run the below command to remove R2 as described in figure 1(d) topology:
   $./orchestrator-SBanik.sh -4


To ping from HostA to HostB:
$docker exec -it HostA ping <HostB_ip_address>
To ping from HostB to HostA:
$docker exec -it HostB ping <HostA_ip_address>

