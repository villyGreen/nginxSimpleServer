#!/bin/bash

spawn-fcgi -p 8080 fcgi-server.o
service nginx start
/bin/bash
