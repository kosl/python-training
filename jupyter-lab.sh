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
dir=$(cd ${0%/*} && pwd)
qsub -A DD-24-22 -q R1944129 -lselect=1:ncpus=128,walltime=08:00:00 -I -- ${dir}/jupyter-lab.qsub ${port}
