org 100h
   
   MOV AH, 01   ; klavyeden karakter oku
INT 21h      ; kesme çaðrýsý
SUB AL, 30h  ; ASCII'den sayýya dönüþtürme
MOV CX, AX   ; AX'teki deðeri CX'e kopyala

MOV AH, 02   ; ekrana karakter bastýrma
MOV DL, '*'  ; bastýrýlacak karakter
L1:
INT 21h      ; kesme çaðrýsý
LOOP L1      ; CX kadar döngü yap
                 
                
   
ret