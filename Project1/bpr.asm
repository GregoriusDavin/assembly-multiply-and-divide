; TUGAS BPR - ASSEMBLY DENGAN OPERASI INTEGER PERKALIAN DAN PEMBAGIAN
; Gregorius Davin Putra Parlindungan Siregar / 21120121130068

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
result DWORD ?

.code
main proc
    ; Perkalian
    mov eax, 7          ; Memuat nilai 7 ke dalam eax
    mov ebx, 5          ; Memuat nilai 5 ke dalam ebx
    mul ebx             ; Mengalikan eax dengan ebx, hasil di edx:eax
    mov result, eax     ; Menyimpan hasil perkalian ke dalam result

    ; Pembagian
    mov eax, result     ; Memuat hasil perkalian ke dalam eax
    mov ebx, 2          ; Memuat nilai 2 ke dalam ebx untuk pembagi
    xor edx, edx        ; Mengatur edx menjadi 0 untuk operasi pembagian
    div ebx             ; Membagi eax dengan ebx, hasil di eax, sisa di edx
    mov result, eax     ; Menyimpan hasil pembagian ke dalam result
    
    invoke ExitProcess, 0

main endp
end main
