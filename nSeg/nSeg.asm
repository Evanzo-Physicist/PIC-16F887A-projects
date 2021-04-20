
_main:

;nSeg.mbas,20 :: 		main:
;nSeg.mbas,23 :: 		TRISD = 0X00 ' set PORTD as the output
	CLRF       TRISD+0
;nSeg.mbas,26 :: 		PORTD.RD0 = 1   ' set pin RD0 to HIGH
	BSF        PORTD+0, 0
;nSeg.mbas,27 :: 		PORTD.RD1 = 1   ' set pin RD1 to HIGH
	BSF        PORTD+0, 1
;nSeg.mbas,28 :: 		PORTD.RD2 = 1   ' set pin RD2 to HIGH
	BSF        PORTD+0, 2
;nSeg.mbas,29 :: 		PORTD.RD3 = 1    ' set pin RD3 to HIGH
	BSF        PORTD+0, 3
;nSeg.mbas,30 :: 		PORTD.RD4 = 1   ' set pin RD4 to HIGH
	BSF        PORTD+0, 4
;nSeg.mbas,32 :: 		Lcd_Init()      ' Initialize the LCD
	CALL       _Lcd_Init+0
;nSeg.mbas,33 :: 		Lcd_Cmd(_LCD_CLEAR) ' Clear LCD screen
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;nSeg.mbas,34 :: 		Lcd_Cmd(_LCD_CURSOR_OFF) ' turn the cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;nSeg.mbas,35 :: 		Lcd_Out(1,1,"Fall 2020")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      70
	MOVWF      ?LocalText_main+0
	MOVLW      97
	MOVWF      ?LocalText_main+1
	MOVLW      108
	MOVWF      ?LocalText_main+2
	MOVLW      108
	MOVWF      ?LocalText_main+3
	MOVLW      32
	MOVWF      ?LocalText_main+4
	MOVLW      50
	MOVWF      ?LocalText_main+5
	MOVLW      48
	MOVWF      ?LocalText_main+6
	MOVLW      50
	MOVWF      ?LocalText_main+7
	MOVLW      48
	MOVWF      ?LocalText_main+8
	CLRF       ?LocalText_main+9
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;nSeg.mbas,36 :: 		Lcd_Out(2,1,"Kareem 89169")
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      75
	MOVWF      ?LocalText_main+0
	MOVLW      97
	MOVWF      ?LocalText_main+1
	MOVLW      114
	MOVWF      ?LocalText_main+2
	MOVLW      101
	MOVWF      ?LocalText_main+3
	MOVLW      101
	MOVWF      ?LocalText_main+4
	MOVLW      109
	MOVWF      ?LocalText_main+5
	MOVLW      32
	MOVWF      ?LocalText_main+6
	MOVLW      56
	MOVWF      ?LocalText_main+7
	MOVLW      57
	MOVWF      ?LocalText_main+8
	MOVLW      49
	MOVWF      ?LocalText_main+9
	MOVLW      54
	MOVWF      ?LocalText_main+10
	MOVLW      57
	MOVWF      ?LocalText_main+11
	CLRF       ?LocalText_main+12
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;nSeg.mbas,37 :: 		Delay_ms(2000)
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L__main1:
	DECFSZ     R13+0, 1
	GOTO       L__main1
	DECFSZ     R12+0, 1
	GOTO       L__main1
	DECFSZ     R11+0, 1
	GOTO       L__main1
	NOP
L_end_main:
	GOTO       $+0
; end of _main
