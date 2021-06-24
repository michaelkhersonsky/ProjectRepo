#!/bin/bash
for sname in $(cat hosts); do ssh-copy-id $sname; done



