#include<reg51.h>
sbit r1 = P1^0;
sbit r2 = P1^1;
sbit r3 = P1^2;
sbit r4 = P1^3;
sbit c1 = P1^4;
sbit c2 = P1^5;
sbit c3 = P1^6;
sbit rs = P3^0;
sbit rw = P3^1;
sbit en = P3^2;
sfr lcd = 0xa0;

void lcdcmd(unsigned char);
void lcddat(unsigned char);

void main() {
	P2 = 0x100;
	while(1) {
		r1 = 0;
		if(c1 == 0) {
			lcddat('1');
		}
		if(c2 == 0) {
			lcddat('2');
		}
		if(c3 == 0) {
			lcddat('3');
		}
		r1 = 1; r2 = 0;
		if(c1 == 0) {
			lcddat('4');
		}
		if(c2 == 0) {
			lcddat('5');
		}
		if(c3 == 0) {
			lcddat('6');
		}
		r2 = 1; r3 = 0;
		if(c1 == 0) {
			lcddat('7');
		}
		if(c2 == 0) {
			lcddat('8');
		}
		if(c3 == 0) {
			lcddat('9');
		}
		r3 = 1; r4 = 0;
		if(c1 == 0) {
			lcddat('*');
		}
		if(c2 == 0) {
			lcddat('0');
		}
		if(c3 == 0) {
			lcddat('#');
		}
		r4 = 1;
		lcdcmd(0x38);
		lcdcmd(0x01);
		lcdcmd(0x06);
		lcdcmd(0x0c);
		lcdcmd(0x81);
	}
}

void lcdcmd(unsigned char val) {
	P2 = val;
	rs = 0;
	rw = 0;
	en = 1;
	delay();
	en = 0;
}

void lcddat(unsigned char val) {
	P2 = val;
	rs = 1;
	rw = 0;
	en = 1;
	delay();
	en = 0;
}
