_heapEnd = ORIGIN(dram_seg) + LENGTH(dram_seg);

ENTRY(_start)
SECTIONS
{
  . = SEGMENT_START("iram_seg", 0);

  text    :
  {
    KEEP (*(.init.literal))
    KEEP (*(SORT_NONE(.init)))
    *(.literal .text .stub .literal.* .text.* .gnu.linkonce.literal.* .gnu.linkonce.t.*.literal .gnu.linkonce.t.*)
    /* .gnu.warning sections are handled specially by elf32.em.  */
    *(.gnu.warning)
    KEEP (*(.fini.literal))
    KEEP (*(SORT_NONE(.fini)))
  } > iram_seg

  PROVIDE (__etext = .);
  PROVIDE (_etext = .);
  PROVIDE (etext = .);


  /* Adjust the address for the data segment.  We want to adjust up to
     the same address within the page on the next page up.  */
  . = ALIGN (CONSTANT (MAXPAGESIZE)) - ((CONSTANT (MAXPAGESIZE) - .) & (CONSTANT (MAXPAGESIZE) - 1)); . = DATA_SEGMENT_ALIGN (CONSTANT (MAXPAGESIZE), CONSTANT (COMMONPAGESIZE));

  .stack (NOLOAD) :
  {
    . = ALIGN(16);
    . += 16K;
    __stack = .;
  }


  .rodata    :
  {
    *(.rodata .rodata.* .gnu.linkonce.r.*)
    *(.rodata1)
    *(.sdata2 .sdata2.* .gnu.linkonce.s2.*)
    *(.sbss2 .sbss2.* .gnu.linkonce.sb2.*)
  }

  .preinit_array    :
  {
    PROVIDE_HIDDEN (__preinit_array_start = .);
    KEEP (*(.preinit_array))
    PROVIDE_HIDDEN (__preinit_array_end = .);
  }
  .init_array    :
  {
    PROVIDE_HIDDEN (__init_array_start = .);
    KEEP (*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))
    KEEP (*(.init_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .ctors))
    PROVIDE_HIDDEN (__init_array_end = .);
  }
  .fini_array    :
  {
    PROVIDE_HIDDEN (__fini_array_start = .);
    KEEP (*(SORT_BY_INIT_PRIORITY(.fini_array.*) SORT_BY_INIT_PRIORITY(.dtors.*)))
    KEEP (*(.fini_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .dtors))
    PROVIDE_HIDDEN (__fini_array_end = .);
  }
  .ctors          :
  {
    /* gcc uses crtbegin.o to find the start of
       the constructors, so we make sure it is
       first.  Because this is a wildcard, it
       doesn't matter if the user does not
       actually link against crtbegin.o; the
       linker won't look for a file to match a
       wildcard.  The wildcard also means that it
       doesn't matter which directory crtbegin.o
       is in.  */
    KEEP (*crtbegin.o(.ctors))
    KEEP (*crtbegin?.o(.ctors))
    /* We don't want to include the .ctor section from
       the crtend.o file until after the sorted ctors.
       The .ctor section from the crtend file contains the
       end of ctors marker and it must be last */
    KEEP (*(EXCLUDE_FILE (*crtend.o *crtend?.o ) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
  }
  .dtors          :
  {
    KEEP (*crtbegin.o(.dtors))
    KEEP (*crtbegin?.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend.o *crtend?.o ) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
  }

  _data_start = .;
  .data          :
  {
    *(.data .data.* .gnu.linkonce.d.*)
    SORT(CONSTRUCTORS)
    *(.data1)
  }
  _edata = .; PROVIDE (edata = .);
  . = .;
  __bss_start = .;
  .bss            :
  {
    *(.dynsbss)
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)
    *(.dynbss)
    *(.bss .bss.* .gnu.linkonce.b.*)
    *(COMMON)
    /* Align here to ensure that the .bss section occupies space up to
      _end.  Align after .bss to ensure correct alignment even if the
      .bss section disappears because there are no input sections.
      FIXME: Why do we need it? When there is no .bss section, we do not
      pad the .data section.  */
    . = ALIGN(. != 0 ? 32 / 8 : 1);
  }
  . = ALIGN(32 / 8);
  . = ALIGN(32 / 8);
  _end = .; PROVIDE (end = .);
  . = DATA_SEGMENT_END (.);

  /* Check if data + heap + stack exceeds RAM limit */
  ASSERT(. <= _heapEnd, "region DRAM overflowed by .data and .bss sections")

  /* Stabs debugging sections.  */
  .stab          0 : { *(.stab) }
  .stabstr       0 : { *(.stabstr) }
  .stab.excl     0 : { *(.stab.excl) }
  .stab.exclstr  0 : { *(.stab.exclstr) }
  .stab.index    0 : { *(.stab.index) }
  .stab.indexstr 0 : { *(.stab.indexstr) }
  .comment       0 : { *(.comment) }
  .gnu.build.attributes : { *(.gnu.build.attributes .gnu.build.attributes.*) }
  /* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
  /* DWARF 1 */
  .debug          0 : { *(.debug) }
  .line           0 : { *(.line) }
  /* GNU DWARF 1 extensions */
  .debug_srcinfo  0 : { *(.debug_srcinfo) }
  .debug_sfnames  0 : { *(.debug_sfnames) }
  /* DWARF 1.1 and DWARF 2 */
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  /* DWARF 2 */
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line .debug_line.* .debug_line_end) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
  /* SGI/MIPS DWARF 2 extensions */
  .debug_weaknames 0 : { *(.debug_weaknames) }
  .debug_funcnames 0 : { *(.debug_funcnames) }
  .debug_typenames 0 : { *(.debug_typenames) }
  .debug_varnames  0 : { *(.debug_varnames) }
  /* DWARF 3 */
  .debug_pubtypes 0 : { *(.debug_pubtypes) }
  .debug_ranges   0 : { *(.debug_ranges) }
  /* DWARF Extension.  */
  .debug_macro    0 : { *(.debug_macro) }
  .debug_addr     0 : { *(.debug_addr) }
  .gnu.attributes 0 : { KEEP (*(.gnu.attributes)) }
  /DISCARD/ : { *(.note.GNU-stack) *(.gnu_debuglink) *(.gnu.lto_*) }
}


_sbss = __bss_start;
_ebss = _end;
_globals_start = _data_start;
_globals_end = _end;
_heapStart = _end;
_stack_top = __stack;


/* From ESP-IDF:
 * components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
 * This is the subset that is sometimes used by LLVM during codegen, and thus
 * must always be present.
 */
memcpy  = 0x4000c2c8;
memmove = 0x4000c3c0;
memset  = 0x4000c44c;

/* From ESP-IDF:
 * components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
 * These are called from LLVM during codegen. The original license is Apache
 * 2.0, but I believe that a list of function names and addresses can't really
 * be copyrighted.
 */
__absvdi2      = 0x4006387c;
__absvsi2      = 0x40063868;
__adddf3       = 0x40002590;
__addsf3       = 0x400020e8;
__addvdi3      = 0x40002cbc;
__addvsi3      = 0x40002c98;
__ashldi3      = 0x4000c818;
__ashrdi3      = 0x4000c830;
__bswapdi2     = 0x40064b08;
__bswapsi2     = 0x40064ae0;
__clrsbdi2     = 0x40064b7c;
__clrsbsi2     = 0x40064b64;
__clzdi2       = 0x4000ca50;
__clzsi2       = 0x4000c7e8;
__cmpdi2       = 0x40063820;
__ctzdi2       = 0x4000ca64;
__ctzsi2       = 0x4000c7f0;
__divdc3       = 0x400645a4;
__divdf3       = 0x40002954;
__divdi3       = 0x4000ca84;
__divsi3       = 0x4000c7b8;
__eqdf2        = 0x400636a8;
__eqsf2        = 0x40063374;
__extendsfdf2  = 0x40002c34;
__ffsdi2       = 0x4000ca2c;
__ffssi2       = 0x4000c804;
__fixdfdi      = 0x40002ac4;
__fixdfsi      = 0x40002a78;
__fixsfdi      = 0x4000244c;
__fixsfsi      = 0x4000240c;
__fixunsdfsi   = 0x40002b30;
__fixunssfdi   = 0x40002504;
__fixunssfsi   = 0x400024ac;
__floatdidf    = 0x4000c988;
__floatdisf    = 0x4000c8c0;
__floatsidf    = 0x4000c944;
__floatsisf    = 0x4000c870;
__floatundidf  = 0x4000c978;
__floatundisf  = 0x4000c8b0;
__floatunsidf  = 0x4000c938;
__floatunsisf  = 0x4000c864;
__gcc_bcmp     = 0x40064a70;
__gedf2        = 0x40063768;
__gesf2        = 0x4006340c;
__gtdf2        = 0x400636dc;
__gtsf2        = 0x400633a0;
__ledf2        = 0x40063704;
__lesf2        = 0x400633c0;
__lshrdi3      = 0x4000c84c;
__ltdf2        = 0x40063790;
__ltsf2        = 0x4006342c;
__moddi3       = 0x4000cd4c;
__modsi3       = 0x4000c7c0;
__muldc3       = 0x40063c90;
__muldf3       = 0x4006358c;
__muldi3       = 0x4000c9fc;
__mulsf3       = 0x400632c8;
__mulsi3       = 0x4000c7b0;
__mulvdi3      = 0x40002d78;
__mulvsi3      = 0x40002d60;
__nedf2        = 0x400636a8;
__negdf2       = 0x400634a0;
__negdi2       = 0x4000ca14;
__negsf2       = 0x400020c0;
__negvdi2      = 0x40002e98;
__negvsi2      = 0x40002e78;
__nesf2        = 0x40063374;
__nsau_data    = 0x3ff96544;
__paritysi2    = 0x40002f3c;
__popcount_tab = 0x3ff96544;
__popcountdi2  = 0x40002ef8;
__popcountsi2  = 0x40002ed0;
__powidf2      = 0x400638e4;
__subdf3       = 0x400026e4;
__subsf3       = 0x400021d0;
__subvdi3      = 0x40002d20;
__subvsi3      = 0x40002cf8;
__truncdfsf2   = 0x40002b90;
__ucmpdi2      = 0x40063840;
__udiv_w_sdiv  = 0x40064bec;
__udivdi3      = 0x4000cff8;
__udivmoddi4   = 0x40064bf4;
__udivsi3      = 0x4000c7c8;
__umoddi3      = 0x4000d280;
__umodsi3      = 0x4000c7d0;
__umulsidi3    = 0x4000c7d8;
__unorddf2     = 0x400637f4;
__unordsf2     = 0x40063478;
