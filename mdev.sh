# nvidia-48 -> GRID P40-3Q
VGPU_TYPE=nvidia-56

PCI_ADDRESS=$(lspci | grep VGA | grep -Po '\d\w:\d\d.\d')

#Quadro 1
UUID1=$(uuidgen)

#Quadro 2
UUID2=$(uuidgen)

mdevctl start -u $UUID1 -p 0000:$PCI_ADDRESS -t $VGPU_TYPE
mdevctl start -u $UUID2 -p 0000:$PCI_ADDRESS -t $VGPU_TYPE

mdevctl define -a -u $UUID1
mdevctl define -a -u $UUID2
