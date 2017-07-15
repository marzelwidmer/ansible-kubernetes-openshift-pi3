#!/bin/sh

ansible pis -i ../hosts --become --args "/sudo shutdown -h 0" --background 30 --forks 4 --user pirate
