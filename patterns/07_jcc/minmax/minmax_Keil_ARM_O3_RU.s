my_max PROC
; R0=A
; R1=B
; сравнить A и B:
        CMP      r0,r1
; вернуть B вместо A копируя B в R0
; эта инструкция сработает только если A<=B (§т.е.§ LE - Less or Equal, §меньше§ §или§ §равно§)
; если инструкция не сработает (§в§ §случае§ A>B), A всё еще в регистре R0
        MOVLE    r0,r1
        BX       lr
        ENDP

my_min PROC
; R0=A
; R1=B
; сравнить A и B:
        CMP      r0,r1
; вернуть B вместо A копируя B в R0
; эта инструкция сработает только если A>=B (§т.е.§ GE - Greater or Equal, §больше§ §или§ §равно§)
; если инструкция не сработает (§в§ §случае§ A<B), A всё еще в регистре R0
        MOVGE    r0,r1
        BX       lr
        ENDP
