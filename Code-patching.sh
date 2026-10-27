ansible -i inventory1 all -m command -a "sudo apt update" -b -k -f 1 | tee -a patching.log
