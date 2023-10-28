#include<reg51.h>
sbit p0 = P0^0;
sbit p1 = P0^1;
sbit p2 = P1^2;
sbit p3 = P1^3;
sbit p4 = P1^4;
sbit p5 = P2^5;
sbit p6 = P3^6;
sbit p7 = P3^7;
void delay(void);
void delaySecond(void);
void main(void) {
	//unsigned int i;
		while(1) {
		p0=0;
		p1=1;
		delay();
		p2=0;
		p3=1;
		delay();
		p4=0;
		p5=1;
		delay();
		p6=0;
		p7=1;
		delaySecond();
		p0=1;
		p1=0;
		delay();
		p2=1;
		p3=0;
		delay();
		p4=1;
		p5=0;
		delay();
		p6=1;
		p7=0;
		delaySecond();
	}
}

void delay(void) {
	int i, j;
	for(i=0;i<=1;i++) {
		for(j=0;j<10000;j++) {}
	}
}

void delaySecond(void) {
	int i, j;
	for(i=0;i<=5;i++) {
		for(j=0;j<10000;j++) {}
	}
}