org 100h
   
   MOV AH, 01   ; klavyeden karakter oku
INT 21h      ; kesme �a�r�s�
SUB AL, 30h  ; ASCII'den say�ya d�n��t�rme
MOV CX, AX   ; AX'teki de�eri CX'e kopyala

MOV AH, 02   ; ekrana karakter bast�rma
MOV DL, '*'  ; bast�r�lacak karakter
L1:
INT 21h      ; kesme �a�r�s�
LOOP L1      ; CX kadar d�ng� yap
                 
                
   
ret