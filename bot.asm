section .data                           ;Data segment
   Msg1 db 'The age of Boris Johnson is 57 years old ',0xa	
   lenmsg1 equ $-Msg1             ;The length of the message
   Msg2 db 'correct answer ',0xa
   lenmsg2 equ $-Msg2
   Msg3 db 'Incorrect answer ',0xa
   lenmsg3 equ $-Msg3
   Msg4 db 'your current score is :'
   lenmsg4 equ $-Msg4
   Msg5 db 'out of '
   lenmsg5 equ $-Msg5
   Msg6 db 'game ended ',0xa
   lenmsg6 equ $-Msg6
   nline db 0xa
   Msg7 db ' "Congratulations on giving all the correct answers.You have won a prize :) " ',0xa
   lenmsg7 equ $-Msg7
   Msg8 db ' "WELCOME TO THE QUIZ GAME"  ',0xa
   lenmsg8 equ $-Msg8
   
   qs1 db 'Is age of Henry Cavil higher or lower than Boris Johnson?',0xa;Lower
   lenqs1 equ $-qs1
   qs2 db 'Is age of Joey Batey higher or lower than Henry Cavil?',0xa ;Lower
   lenqs2 equ $-qs2
   qs3 db 'Is age of Tom Hardy higher or lower than Joey Batey?',0xa ;Higher
   lenqs3 equ $-qs3
   qs4 db 'Is age of Cillian Murphy higher or lower than Tom Hardy?',0xa;Higher
   lenqs4 equ $-qs4
   qs5 db 'Is age of Bill Gates higher or lower than Cillian Murphy?',0xa;Higher
   lenqs5 equ $-qs5
   
   numh dd 'h'
   numH dd 'H'
   numl dd 'l'
   numL dd 'L'
   
section .bss           ;Uninitialized data
   choice1 resb 1
   choice2 resb 1
   choice3 resb 1
   choice4 resb 1
   choice5 resb 1
  
   score_counter resb 1
   bonus_counter resb 1
   

		
section .text          ;Code Segment
   global _start
	
_start:                ;User prompt
   mov eax,'0'
   mov [score_counter],eax
   mov [bonus_counter],eax
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg8
   mov edx, lenmsg8
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg1
   mov edx, lenmsg1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, qs1
   mov edx, lenqs1
   int 80h
   
   ;Read and store the user input
   mov eax, 3
   mov ebx, 2
   mov ecx, choice1  
   mov edx, 1 
   int 80h

  
  
   	
  ; mov eax, 4
  ; mov ebx, 1
  ; mov ecx, choice
  ; mov edx, 1
  ; int 80h  
  	



		
   mov ecx,[choice1]		
   cmp ecx,[numh]
   je exit
   cmp ecx,[numH]
   je exit
   cmp ecx,[numl]
   je toquestion2
   cmp ecx,[numL]
   je toquestion2
   jmp exit 
   
toquestion2:
	
    mov eax,[score_counter]
    inc eax
    mov [score_counter],eax
    mov eax,[bonus_counter]
    inc eax
    mov [bonus_counter],eax
    
    
   	
	
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg2
   mov edx, lenmsg2
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg4
   mov edx, lenmsg4
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx,score_counter 
   mov edx, 1
   int 80h  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg5
   mov edx, lenmsg5
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, bonus_counter 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, nline 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, qs2
   mov edx, lenqs2
   int 80h
   
   
   
  
   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov ecx,[choice1]		
   cmp ecx,[numh]
   je exit
   cmp ecx,[numH]
   je exit
   cmp ecx,[numl]
   je toquestion3
   cmp ecx,[numL]
   je toquestion3
   jmp exit
   
toquestion3:
    mov eax,[score_counter]
    inc eax
    mov [score_counter],eax
    mov eax,[bonus_counter]
    inc eax
    mov [bonus_counter],eax
    
   	
	
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg2
   mov edx, lenmsg2
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg4
   mov edx, lenmsg4
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx,score_counter 
   mov edx, 1
   int 80h  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg5
   mov edx, lenmsg5
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, bonus_counter 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, nline 
   mov edx, 1
   int 80h


   mov eax, 4
   mov ebx, 1
   mov ecx, qs3
   mov edx, lenqs3
   int 80h
	
   	
   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov ecx,[choice1]		
   cmp ecx,[numh]
   je toquestion4
   cmp ecx,[numH]
   je toquestion4
   cmp ecx,[numl]
   je exit
   cmp ecx,[numL]
   je toquestion4
   jmp exit
   
toquestion4:
    mov eax,[score_counter]
    inc eax
    mov [score_counter],eax
    mov eax,[bonus_counter]
    inc eax
    mov [bonus_counter],eax
    
   	
	
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg2
   mov edx, lenmsg2
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg4
   mov edx, lenmsg4
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx,score_counter 
   mov edx, 1
   int 80h  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg5
   mov edx, lenmsg5
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, bonus_counter 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, nline 
   mov edx, 1
   int 80h



   mov eax, 4
   mov ebx, 1
   mov ecx, qs4
   mov edx, lenqs4
   int 80h

   

   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov ecx,[choice1]		
   cmp ecx,[numh]
   je toquestion5
   cmp ecx,[numH]
   je toquestion5
   cmp ecx,[numl]
   je exit
   cmp ecx,[numL]
   je exit
   jmp exit
toquestion5:

    mov eax,[score_counter]
    inc eax
    mov [score_counter],eax
    mov eax,[bonus_counter]
    inc eax
    mov [bonus_counter],eax
    
   	
	
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg2
   mov edx, lenmsg2
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg4
   mov edx, lenmsg4
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx,score_counter 
   mov edx, 1
   int 80h  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg5
   mov edx, lenmsg5
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, bonus_counter 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, nline 
   mov edx, 1
   int 80h
  
  
   mov eax, 4
   mov ebx, 1
   mov ecx, qs5
   mov edx, lenqs5
   int 80h

   	
   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h

   mov eax, 3
   mov ebx, 0
   mov ecx, choice1  
   mov edx, 1 
   int 80h
   
   mov ecx,[choice1]		
   cmp ecx,[numh]
   je winexit
   cmp ecx,[numH]
   je winexit
   cmp ecx,[numl]
   je exit
   cmp ecx,[numL]
   je exit
   jmp winexit

   ; Exit code
   exit:
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg3
   mov edx, lenmsg3
   int 80h

  
    mov eax,[bonus_counter]
    inc eax
    mov [bonus_counter],eax
    
 
   	
	
  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg4
   mov edx, lenmsg4
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx,score_counter 
   mov edx, 1
   int 80h  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg5
   mov edx, lenmsg5
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, bonus_counter 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, nline 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg6
   mov edx, lenmsg6
   int 80h

   
   
   mov eax, 1
   mov ebx, 0
   int 80h
   
  winexit:
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg2
   mov edx, lenmsg2
   int 80h

  
    mov eax,[bonus_counter]
    inc eax
    mov [bonus_counter],eax
    mov eax,[score_counter]
    inc eax
    mov [score_counter],eax
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg4
   mov edx, lenmsg4
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx,score_counter 
   mov edx, 1
   int 80h  
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg5
   mov edx, lenmsg5
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, bonus_counter 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, nline 
   mov edx, 1
   int 80h
   
   mov eax, 4
   mov ebx, 1
   mov ecx, Msg7
   mov edx, lenmsg7
   int 80h

   
   
   mov eax, 1
   mov ebx, 0
   int 80h
   
   
   
   
