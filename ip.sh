#!/bin/sh
ifconfig | grep -E 'inet.[0-9]' | grep -v '127.0.0.1' | awk '{ print $2}'
