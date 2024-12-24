#!/bin/bash
ln -s /usr/lib/python3/dist-packages/odoo/ /mnt/ >> $HOME/.bashrc
find /mnt/extra-addons -name 'requirements.txt' -exec pip install -r {} \;