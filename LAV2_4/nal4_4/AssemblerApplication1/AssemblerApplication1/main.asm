.org 0x0000		; prvi naslednji ukaz bo na naslovu 0000
rjmp start		; sko�i na mesto start ( = 0050 )
.org 0x0050
start:
	ldi  ZH, 0x01		; v register Z nalo�imo vrednost 0100
	ldi  ZL, 0x00

	ldi  r16, 0xFF		;to bo nova vsebina s katero bomo popisali pomnilnik
	ldi  r17, 0x10		;koliko bytov, r17 je na� �tevec, koliko bytov �e

loop:
	st   Z+, r16		;na naslov Z v data space vpi�emo vrednost iz r16, pove�amo Z za 1
	dec  r17			;zmanj�amo �tevec
	brne loop			; ne ponovno sko�i na naslov loop, �e je r17 postal 0
	
forever:
	rjmp forever