org 100h
    
   basla:      
   ;klavyeden event alma 
   mov ah,0
   int 16h                 
   
   cmp al,'q'
   je son
   
   cmp al,'3'
   je uc
   
   cmp al,'5'
   je bes
   
   jmp basla 
   
   uc:
   mov cx,3
   jmp yazdir
   
   bes:
   mov cx,5
   
   yazdir:
   
   mov dl,' '
   mov ah,2
   int 21h
  
   
   mov ah,9h
   lea dx,yazi
   int 21h
   loop yazdir
   jmp basla   
   
   son:
   hlt

ret       

yazi db "Bilgisayar Muh$"