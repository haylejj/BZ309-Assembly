    org 100h
              
       ; ekrana soru isareti yazdirma
       mov dl,'?'
       mov ah,2h
       int 21h                       
       
       ; kullanicidan input bekleme
       
       mov ah,1h
       int 21h
       mov bl,al
       
       ; satir basi yazdirma
       mov dl,13d
       mov ah,2h
       int 21h
       
       ;satir atlama
       mov dl,10d
       mov ah,2h
       int 21h
       
       mov dl,bl
       mov ah,2h
       int 21h
    ret