org 100h
   
   ;0700 adresinden itibaren art arda 10 sayý okuyor ve bu sayýlarýn her adýmdaki ortalamasýný yigina koyan bir program yaziniz.
   
      mov cx,10
      
      mov si,0700h
      
      mov byte ptr[si],10h 
      inc si
      mov byte ptr[si],11h
      inc si
      mov byte ptr[si],12h 
      inc si
      mov byte ptr[si],13h
      inc si
      mov byte ptr[si],14h
      inc si
      mov byte ptr[si],15h
      inc si
      mov byte ptr[si],16h
      inc si
      mov byte ptr[si],17h
      inc si
      mov byte ptr[si],18h
      inc si
      mov byte ptr[si],19h
      
      mov si,0700h
      
      xor bx,bx
      mov cx,5h
      mov dx,0000h
      mov bl,2h
      
      dongu:
      mov al,[si]
      mov ah,[si+si]
       
      add al,ah
      mov dh,al
      
      div bl
      mov dl,al
      push dx
      loop dongu
      
      
      
      
ret                                                                             