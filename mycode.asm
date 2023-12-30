   org 100h
      
      mov dl,'?'
      mov ah,2h
      int 21h
      
      mov ah,1h
      int 21h
      mov bl,al
      
      mov dl,' '
      mov ah,2h
      int 21h
      
      mov dl,bl
      mov ah,2h
      int 21h  
      
      
   ret