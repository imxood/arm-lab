/*规定链接时的动作*/

/*emain*/
ENTRY(main)

SECTIONS
{
    . =0x48000000;
    .text :
    {
        main.o(.text)
        *(.text)
    }
    .data :
    {
        *(.data)
    }
    .bss :
    {
        *(.bss)
    }
}
