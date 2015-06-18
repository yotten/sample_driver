print_exe(){
	echo "# $*"
	$1 $2
	echo 	
}

print_exe modinfo ./sample_driver.ko
print_exe insmod sample_driver.ko

echo "# dmesg | tail"
dmesg | tail
echo
echo "# lsmod | grep sample_driver"
lsmod | grep sample_driver 
echo
print_exe rmmod sample_driver.ko
echo "# dmesg | tail"
dmesg | tail

