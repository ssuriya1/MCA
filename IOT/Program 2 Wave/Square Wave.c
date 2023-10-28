#include <reg51.h>
sbit pin = P1^0;
main() {
	P1 = 0x00;
	TMOD = 0x10;
	loop:TL0 = 0x11;
	TH0 = 0x0C;
  pin = 1;
  TR0 = 1;
	while(TF0 == 0)  {}
	TL0 = 0x01; 
	TH0 = 0x1C;
	pin = 0;    
	while(TF0 == 0)  {}
	goto loop;
}
