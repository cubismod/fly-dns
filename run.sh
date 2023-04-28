#!/bin/sh

ADGUARDHOME=/opt/adguardhome/fly/AdGuardHome.yaml

if [ ! -f "$ADGUARDHOME" ]; then
    cp ./AdGuardHome.yaml $ADGUARDHOME
fi
