; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here
    

   
   ;TASK 06 Perform the following arithmetic instructions. A, B, C are three variables to be declared beforehand 

   
   ;3. C = A + (B + 1)    
   mov ax , 5
   mov bx , 4
   mov cx , 3
   inc bx
   add ax , bx
   mov cx, ax  
   

    
    mul bl
    mov ax , al
    mov bl , 5
    div bl 




    
    
    
            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
