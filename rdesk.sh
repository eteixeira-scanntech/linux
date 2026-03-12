#!/bin/bash

set -e

echo "Instalando RustDesk..."

TMPDIR=$(mktemp -d)
cd "$TMPDIR"

wget https://github.com/rustdesk/rustdesk/releases/download/1.4.6/rustdesk-1.4.6-x86_64.deb

sudo apt update
sudo apt install -y ./rustdesk-*.deb

echo "RustDesk instalado."
