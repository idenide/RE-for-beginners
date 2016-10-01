my_memcpy PROC
; R0 = целевой адрес
; R1 = исходный адрес
; R2 = размер блока

; инициализировать счетчик (i) в 0
        MOV      r3,#0
|L0.4|
; все байты скопированы?
        CMP      r3,r2
; следующий блок исполнится только в случае условия "меньше чем",
; т.е. если R2<R3 или i<size.
; загружаем байт по адресу R1+i:
        LDRBCC   r12,[r1,r3]
; записываем байт по адресу R1+i:
        STRBCC   r12,[r0,r3]
; i++
        ADDCC    r3,r3,#1
; последняя инструкция "условного блока".
; перейти на начало цикла, если i<size
; в противном случае, ничего не делать (§т.е.§ §если§ i>=size)
        BCC      |L0.4|
; возврат
        BX       lr
        ENDP
