#!/bin/bash
function free_port_scanner
{
  for ((port=8000; port<=8999; port++))
    do if netstat -ant | grep -q :${port} 
	then continue
	else echo "${port}"
	  break
	fi
    done
}
port=$(free_port_scanner)
echo "Please forward SSH localy with -L ${port}:localhost:${port} while qsub is starting jupyter-lab on a compute node"
echo "Press the following key sequence: <Enter>~C to get ssh> prompt and then type -L ${port}:localhost:${port}<Enter>"
qsub -A DD-23-22 -qqexp -lselect=1,walltime=01:00:00 -I -- ${PWD}/jupyter-lab.qsub ${port}
