#include <linux/module.h>
#include <linux/init.h>

MODULE_LICENSE("Dual BSD/GPL");

static int symple_driver_init(void)
{
	return 0;
}

static void simple_driver_exit(void)
{
}

module_init(symple_driver_init);
module_exit(simple_driver_exit); 
