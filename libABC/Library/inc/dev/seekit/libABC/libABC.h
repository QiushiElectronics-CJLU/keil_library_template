#ifndef __DEV_SEEKIT_LIBABC_H
#define __DEV_SEEKIT_LIBABC_H

/**
	* @desc This is a int value  
 */
extern int value;

/**
 * @desc This function makes the mcu sleep for a clock circle
 * @retval None
 */
extern void example_function();

/**
 * @desc This function adds two numbers, return the result and whether there is overflow
 * @param a: int, an adder
 *				b: int, another adder
 * @retval int[result, overflow flag]
 */
extern int* add(int a, int b);

#endif
