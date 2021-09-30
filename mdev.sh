#Quadro 1 32e17d6f-ca09-427d-b378-9632a137f4c6
#Quadro 2 267ad360-1f1c-46a9-9ba9-31bf7d890d33
# nvidia-48 -> GRID P40-3Q

mdevctl start -u 32e17d6f-ca09-427d-b378-9632a137f4c6 -p 0000:2b:00.0 --type nvidia-48
mdevctl start -u 267ad360-1f1c-46a9-9ba9-31bf7d890d33 -p 0000:2b:00.0 --type nvidia-48

mdevctl define --auto --uuid 32e17d6f-ca09-427d-b378-9632a137f4c6
mdevctl define --auto --uuid 267ad360-1f1c-46a9-9ba9-31bf7d890d33
