
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 d1 4f 00 00 	mov    0x4fd1(%rip),%rax        # 406fe0 <__gmon_start__@Base>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	call   *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	ret    

Disassembly of section .plt:

0000000000402020 <getenv@plt-0x10>:
  402020:	ff 35 e2 4f 00 00    	push   0x4fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  402026:	ff 25 e4 4f 00 00    	jmp    *0x4fe4(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402030 <getenv@plt>:
  402030:	ff 25 e2 4f 00 00    	jmp    *0x4fe2(%rip)        # 407018 <getenv@GLIBC_2.2.5>
  402036:	68 00 00 00 00       	push   $0x0
  40203b:	e9 e0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402040 <free@plt>:
  402040:	ff 25 da 4f 00 00    	jmp    *0x4fda(%rip)        # 407020 <free@GLIBC_2.2.5>
  402046:	68 01 00 00 00       	push   $0x1
  40204b:	e9 d0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402050 <strcasecmp@plt>:
  402050:	ff 25 d2 4f 00 00    	jmp    *0x4fd2(%rip)        # 407028 <strcasecmp@GLIBC_2.2.5>
  402056:	68 02 00 00 00       	push   $0x2
  40205b:	e9 c0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402060 <posix_spawn_file_actions_init@plt>:
  402060:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 407030 <posix_spawn_file_actions_init@GLIBC_2.2.5>
  402066:	68 03 00 00 00       	push   $0x3
  40206b:	e9 b0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402070 <abort@plt>:
  402070:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 407038 <abort@GLIBC_2.2.5>
  402076:	68 04 00 00 00       	push   $0x4
  40207b:	e9 a0 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402080 <__errno_location@plt>:
  402080:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 407040 <__errno_location@GLIBC_2.2.5>
  402086:	68 05 00 00 00       	push   $0x5
  40208b:	e9 90 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402090 <unlink@plt>:
  402090:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 407048 <unlink@GLIBC_2.2.5>
  402096:	68 06 00 00 00       	push   $0x6
  40209b:	e9 80 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020a0 <_exit@plt>:
  4020a0:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 407050 <_exit@GLIBC_2.2.5>
  4020a6:	68 07 00 00 00       	push   $0x7
  4020ab:	e9 70 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020b0 <mkdir@plt>:
  4020b0:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 407058 <mkdir@GLIBC_2.2.5>
  4020b6:	68 08 00 00 00       	push   $0x8
  4020bb:	e9 60 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020c0 <puts@plt>:
  4020c0:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 407060 <puts@GLIBC_2.2.5>
  4020c6:	68 09 00 00 00       	push   $0x9
  4020cb:	e9 50 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020d0 <write@plt>:
  4020d0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 407068 <write@GLIBC_2.2.5>
  4020d6:	68 0a 00 00 00       	push   $0xa
  4020db:	e9 40 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020e0 <fclose@plt>:
  4020e0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 407070 <fclose@GLIBC_2.2.5>
  4020e6:	68 0b 00 00 00       	push   $0xb
  4020eb:	e9 30 ff ff ff       	jmp    402020 <_init+0x20>

00000000004020f0 <posix_spawn_file_actions_destroy@plt>:
  4020f0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 407078 <posix_spawn_file_actions_destroy@GLIBC_2.2.5>
  4020f6:	68 0c 00 00 00       	push   $0xc
  4020fb:	e9 20 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402100 <getpwuid@plt>:
  402100:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 407080 <getpwuid@GLIBC_2.2.5>
  402106:	68 0d 00 00 00       	push   $0xd
  40210b:	e9 10 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402110 <strlen@plt>:
  402110:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 407088 <strlen@GLIBC_2.2.5>
  402116:	68 0e 00 00 00       	push   $0xe
  40211b:	e9 00 ff ff ff       	jmp    402020 <_init+0x20>

0000000000402120 <__stack_chk_fail@plt>:
  402120:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 407090 <__stack_chk_fail@GLIBC_2.4>
  402126:	68 0f 00 00 00       	push   $0xf
  40212b:	e9 f0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402130 <getuid@plt>:
  402130:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 407098 <getuid@GLIBC_2.2.5>
  402136:	68 10 00 00 00       	push   $0x10
  40213b:	e9 e0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402140 <strchr@plt>:
  402140:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 4070a0 <strchr@GLIBC_2.2.5>
  402146:	68 11 00 00 00       	push   $0x11
  40214b:	e9 d0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402150 <strrchr@plt>:
  402150:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 4070a8 <strrchr@GLIBC_2.2.5>
  402156:	68 12 00 00 00       	push   $0x12
  40215b:	e9 c0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402160 <mkostemp@plt>:
  402160:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 4070b0 <mkostemp@GLIBC_2.7>
  402166:	68 13 00 00 00       	push   $0x13
  40216b:	e9 b0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402170 <__assert_fail@plt>:
  402170:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 4070b8 <__assert_fail@GLIBC_2.2.5>
  402176:	68 14 00 00 00       	push   $0x14
  40217b:	e9 a0 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402180 <close@plt>:
  402180:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 4070c0 <close@GLIBC_2.2.5>
  402186:	68 15 00 00 00       	push   $0x15
  40218b:	e9 90 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402190 <strcspn@plt>:
  402190:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 4070c8 <strcspn@GLIBC_2.2.5>
  402196:	68 16 00 00 00       	push   $0x16
  40219b:	e9 80 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021a0 <read@plt>:
  4021a0:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 4070d0 <read@GLIBC_2.2.5>
  4021a6:	68 17 00 00 00       	push   $0x17
  4021ab:	e9 70 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021b0 <__asprintf_chk@plt>:
  4021b0:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 4070d8 <__asprintf_chk@GLIBC_2.8>
  4021b6:	68 18 00 00 00       	push   $0x18
  4021bb:	e9 60 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021c0 <__getdelim@plt>:
  4021c0:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 4070e0 <__getdelim@GLIBC_2.2.5>
  4021c6:	68 19 00 00 00       	push   $0x19
  4021cb:	e9 50 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021d0 <strcmp@plt>:
  4021d0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 4070e8 <strcmp@GLIBC_2.2.5>
  4021d6:	68 1a 00 00 00       	push   $0x1a
  4021db:	e9 40 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021e0 <signal@plt>:
  4021e0:	ff 25 0a 4f 00 00    	jmp    *0x4f0a(%rip)        # 4070f0 <signal@GLIBC_2.2.5>
  4021e6:	68 1b 00 00 00       	push   $0x1b
  4021eb:	e9 30 fe ff ff       	jmp    402020 <_init+0x20>

00000000004021f0 <feof@plt>:
  4021f0:	ff 25 02 4f 00 00    	jmp    *0x4f02(%rip)        # 4070f8 <feof@GLIBC_2.2.5>
  4021f6:	68 1c 00 00 00       	push   $0x1c
  4021fb:	e9 20 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402200 <fflush@plt>:
  402200:	ff 25 fa 4e 00 00    	jmp    *0x4efa(%rip)        # 407100 <fflush@GLIBC_2.2.5>
  402206:	68 1d 00 00 00       	push   $0x1d
  40220b:	e9 10 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402210 <__isoc99_sscanf@plt>:
  402210:	ff 25 f2 4e 00 00    	jmp    *0x4ef2(%rip)        # 407108 <__isoc99_sscanf@GLIBC_2.7>
  402216:	68 1e 00 00 00       	push   $0x1e
  40221b:	e9 00 fe ff ff       	jmp    402020 <_init+0x20>

0000000000402220 <posix_spawn_file_actions_addopen@plt>:
  402220:	ff 25 ea 4e 00 00    	jmp    *0x4eea(%rip)        # 407110 <posix_spawn_file_actions_addopen@GLIBC_2.2.5>
  402226:	68 1f 00 00 00       	push   $0x1f
  40222b:	e9 f0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402230 <posix_spawnp@plt>:
  402230:	ff 25 e2 4e 00 00    	jmp    *0x4ee2(%rip)        # 407118 <posix_spawnp@GLIBC_2.15>
  402236:	68 20 00 00 00       	push   $0x20
  40223b:	e9 e0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402240 <strsignal@plt>:
  402240:	ff 25 da 4e 00 00    	jmp    *0x4eda(%rip)        # 407120 <strsignal@GLIBC_2.2.5>
  402246:	68 21 00 00 00       	push   $0x21
  40224b:	e9 d0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402250 <fdopen@plt>:
  402250:	ff 25 d2 4e 00 00    	jmp    *0x4ed2(%rip)        # 407128 <fdopen@GLIBC_2.2.5>
  402256:	68 22 00 00 00       	push   $0x22
  40225b:	e9 c0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402260 <__printf_chk@plt>:
  402260:	ff 25 ca 4e 00 00    	jmp    *0x4eca(%rip)        # 407130 <__printf_chk@GLIBC_2.3.4>
  402266:	68 23 00 00 00       	push   $0x23
  40226b:	e9 b0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402270 <waitpid@plt>:
  402270:	ff 25 c2 4e 00 00    	jmp    *0x4ec2(%rip)        # 407138 <waitpid@GLIBC_2.2.5>
  402276:	68 24 00 00 00       	push   $0x24
  40227b:	e9 a0 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402280 <open@plt>:
  402280:	ff 25 ba 4e 00 00    	jmp    *0x4eba(%rip)        # 407140 <open@GLIBC_2.2.5>
  402286:	68 25 00 00 00       	push   $0x25
  40228b:	e9 90 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402290 <fopen@plt>:
  402290:	ff 25 b2 4e 00 00    	jmp    *0x4eb2(%rip)        # 407148 <fopen@GLIBC_2.2.5>
  402296:	68 26 00 00 00       	push   $0x26
  40229b:	e9 80 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022a0 <perror@plt>:
  4022a0:	ff 25 aa 4e 00 00    	jmp    *0x4eaa(%rip)        # 407150 <perror@GLIBC_2.2.5>
  4022a6:	68 27 00 00 00       	push   $0x27
  4022ab:	e9 70 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022b0 <strtoul@plt>:
  4022b0:	ff 25 a2 4e 00 00    	jmp    *0x4ea2(%rip)        # 407158 <strtoul@GLIBC_2.2.5>
  4022b6:	68 28 00 00 00       	push   $0x28
  4022bb:	e9 60 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022c0 <gethostname@plt>:
  4022c0:	ff 25 9a 4e 00 00    	jmp    *0x4e9a(%rip)        # 407160 <gethostname@GLIBC_2.2.5>
  4022c6:	68 29 00 00 00       	push   $0x29
  4022cb:	e9 50 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022d0 <exit@plt>:
  4022d0:	ff 25 92 4e 00 00    	jmp    *0x4e92(%rip)        # 407168 <exit@GLIBC_2.2.5>
  4022d6:	68 2a 00 00 00       	push   $0x2a
  4022db:	e9 40 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022e0 <fwrite@plt>:
  4022e0:	ff 25 8a 4e 00 00    	jmp    *0x4e8a(%rip)        # 407170 <fwrite@GLIBC_2.2.5>
  4022e6:	68 2b 00 00 00       	push   $0x2b
  4022eb:	e9 30 fd ff ff       	jmp    402020 <_init+0x20>

00000000004022f0 <__fprintf_chk@plt>:
  4022f0:	ff 25 82 4e 00 00    	jmp    *0x4e82(%rip)        # 407178 <__fprintf_chk@GLIBC_2.3.4>
  4022f6:	68 2c 00 00 00       	push   $0x2c
  4022fb:	e9 20 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402300 <clock_nanosleep@plt>:
  402300:	ff 25 7a 4e 00 00    	jmp    *0x4e7a(%rip)        # 407180 <clock_nanosleep@GLIBC_2.17>
  402306:	68 2d 00 00 00       	push   $0x2d
  40230b:	e9 10 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402310 <posix_spawn_file_actions_adddup2@plt>:
  402310:	ff 25 72 4e 00 00    	jmp    *0x4e72(%rip)        # 407188 <posix_spawn_file_actions_adddup2@GLIBC_2.2.5>
  402316:	68 2e 00 00 00       	push   $0x2e
  40231b:	e9 00 fd ff ff       	jmp    402020 <_init+0x20>

0000000000402320 <strdup@plt>:
  402320:	ff 25 6a 4e 00 00    	jmp    *0x4e6a(%rip)        # 407190 <strdup@GLIBC_2.2.5>
  402326:	68 2f 00 00 00       	push   $0x2f
  40232b:	e9 f0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402330 <strerror@plt>:
  402330:	ff 25 62 4e 00 00    	jmp    *0x4e62(%rip)        # 407198 <strerror@GLIBC_2.2.5>
  402336:	68 30 00 00 00       	push   $0x30
  40233b:	e9 e0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402340 <sleep@plt>:
  402340:	ff 25 5a 4e 00 00    	jmp    *0x4e5a(%rip)        # 4071a0 <sleep@GLIBC_2.2.5>
  402346:	68 31 00 00 00       	push   $0x31
  40234b:	e9 d0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402350 <fstat@plt>:
  402350:	ff 25 52 4e 00 00    	jmp    *0x4e52(%rip)        # 4071a8 <fstat@GLIBC_2.33>
  402356:	68 32 00 00 00       	push   $0x32
  40235b:	e9 c0 fc ff ff       	jmp    402020 <_init+0x20>

0000000000402360 <__ctype_b_loc@plt>:
  402360:	ff 25 4a 4e 00 00    	jmp    *0x4e4a(%rip)        # 4071b0 <__ctype_b_loc@GLIBC_2.3>
  402366:	68 33 00 00 00       	push   $0x33
  40236b:	e9 b0 fc ff ff       	jmp    402020 <_init+0x20>

Disassembly of section .text:

0000000000402370 <_start>:
  402370:	f3 0f 1e fa          	endbr64 
  402374:	31 ed                	xor    %ebp,%ebp
  402376:	49 89 d1             	mov    %rdx,%r9
  402379:	5e                   	pop    %rsi
  40237a:	48 89 e2             	mov    %rsp,%rdx
  40237d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402381:	50                   	push   %rax
  402382:	54                   	push   %rsp
  402383:	45 31 c0             	xor    %r8d,%r8d
  402386:	31 c9                	xor    %ecx,%ecx
  402388:	48 c7 c7 56 24 40 00 	mov    $0x402456,%rdi
  40238f:	ff 15 43 4c 00 00    	call   *0x4c43(%rip)        # 406fd8 <__libc_start_main@GLIBC_2.34>
  402395:	f4                   	hlt    
  402396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40239d:	00 00 00 

00000000004023a0 <_dl_relocate_static_pie>:
  4023a0:	f3 0f 1e fa          	endbr64 
  4023a4:	c3                   	ret    
  4023a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4023ac:	00 00 00 
  4023af:	90                   	nop

00000000004023b0 <deregister_tm_clones>:
  4023b0:	b8 30 73 40 00       	mov    $0x407330,%eax
  4023b5:	48 3d 30 73 40 00    	cmp    $0x407330,%rax
  4023bb:	74 13                	je     4023d0 <deregister_tm_clones+0x20>
  4023bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c2:	48 85 c0             	test   %rax,%rax
  4023c5:	74 09                	je     4023d0 <deregister_tm_clones+0x20>
  4023c7:	bf 30 73 40 00       	mov    $0x407330,%edi
  4023cc:	ff e0                	jmp    *%rax
  4023ce:	66 90                	xchg   %ax,%ax
  4023d0:	c3                   	ret    
  4023d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4023d8:	00 00 00 00 
  4023dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004023e0 <register_tm_clones>:
  4023e0:	be 30 73 40 00       	mov    $0x407330,%esi
  4023e5:	48 81 ee 30 73 40 00 	sub    $0x407330,%rsi
  4023ec:	48 89 f0             	mov    %rsi,%rax
  4023ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4023f3:	48 c1 f8 03          	sar    $0x3,%rax
  4023f7:	48 01 c6             	add    %rax,%rsi
  4023fa:	48 d1 fe             	sar    %rsi
  4023fd:	74 11                	je     402410 <register_tm_clones+0x30>
  4023ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402404:	48 85 c0             	test   %rax,%rax
  402407:	74 07                	je     402410 <register_tm_clones+0x30>
  402409:	bf 30 73 40 00       	mov    $0x407330,%edi
  40240e:	ff e0                	jmp    *%rax
  402410:	c3                   	ret    
  402411:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402418:	00 00 00 00 
  40241c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402420 <__do_global_dtors_aux>:
  402420:	f3 0f 1e fa          	endbr64 
  402424:	80 3d 5d 4f 00 00 00 	cmpb   $0x0,0x4f5d(%rip)        # 407388 <completed.0>
  40242b:	75 13                	jne    402440 <__do_global_dtors_aux+0x20>
  40242d:	55                   	push   %rbp
  40242e:	48 89 e5             	mov    %rsp,%rbp
  402431:	e8 7a ff ff ff       	call   4023b0 <deregister_tm_clones>
  402436:	c6 05 4b 4f 00 00 01 	movb   $0x1,0x4f4b(%rip)        # 407388 <completed.0>
  40243d:	5d                   	pop    %rbp
  40243e:	c3                   	ret    
  40243f:	90                   	nop
  402440:	c3                   	ret    
  402441:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402448:	00 00 00 00 
  40244c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402450 <frame_dummy>:
  402450:	f3 0f 1e fa          	endbr64 
  402454:	eb 8a                	jmp    4023e0 <register_tm_clones>

0000000000402456 <main>:
  402456:	55                   	push   %rbp
  402457:	53                   	push   %rbx
  402458:	48 83 ec 08          	sub    $0x8,%rsp
  40245c:	83 ff 01             	cmp    $0x1,%edi
  40245f:	0f 84 65 01 00 00    	je     4025ca <main+0x174>
  402465:	48 89 f3             	mov    %rsi,%rbx
  402468:	83 ff 02             	cmp    $0x2,%edi
  40246b:	0f 84 6a 01 00 00    	je     4025db <main+0x185>
  402471:	83 ff 03             	cmp    $0x3,%edi
  402474:	0f 85 4e 02 00 00    	jne    4026c8 <main+0x272>
  40247a:	48 8b 76 08          	mov    0x8(%rsi),%rsi
  40247e:	48 8d 3d 7f 1b 00 00 	lea    0x1b7f(%rip),%rdi        # 404004 <_IO_stdin_used+0x4>
  402485:	e8 46 fd ff ff       	call   4021d0 <strcmp@plt>
  40248a:	85 c0                	test   %eax,%eax
  40248c:	0f 85 cf 01 00 00    	jne    402661 <main+0x20b>
  402492:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  402496:	48 8d 35 68 1b 00 00 	lea    0x1b68(%rip),%rsi        # 404005 <_IO_stdin_used+0x5>
  40249d:	e8 ee fd ff ff       	call   402290 <fopen@plt>
  4024a2:	48 89 c7             	mov    %rax,%rdi
  4024a5:	48 85 c0             	test   %rax,%rax
  4024a8:	0f 84 dd 01 00 00    	je     40268b <main+0x235>
  4024ae:	be 01 00 00 00       	mov    $0x1,%esi
  4024b3:	e8 cc 0f 00 00       	call   403484 <initialize_bomb>
  4024b8:	48 8d 35 a1 1b 00 00 	lea    0x1ba1(%rip),%rsi        # 404060 <_IO_stdin_used+0x60>
  4024bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4024c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c9:	e8 92 fd ff ff       	call   402260 <__printf_chk@plt>
  4024ce:	48 8d 35 cb 1b 00 00 	lea    0x1bcb(%rip),%rsi        # 4040a0 <_IO_stdin_used+0xa0>
  4024d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4024da:	b8 00 00 00 00       	mov    $0x0,%eax
  4024df:	e8 7c fd ff ff       	call   402260 <__printf_chk@plt>
  4024e4:	e8 5a 11 00 00       	call   403643 <read_line>
  4024e9:	48 89 c7             	mov    %rax,%rdi
  4024ec:	e8 90 02 00 00       	call   402781 <phase_1>
  4024f1:	e8 46 12 00 00       	call   40373c <phase_defused>
  4024f6:	48 8d 35 d3 1b 00 00 	lea    0x1bd3(%rip),%rsi        # 4040d0 <_IO_stdin_used+0xd0>
  4024fd:	bf 01 00 00 00       	mov    $0x1,%edi
  402502:	b8 00 00 00 00       	mov    $0x0,%eax
  402507:	e8 54 fd ff ff       	call   402260 <__printf_chk@plt>
  40250c:	e8 32 11 00 00       	call   403643 <read_line>
  402511:	48 89 c7             	mov    %rax,%rdi
  402514:	e8 86 02 00 00       	call   40279f <phase_2>
  402519:	e8 1e 12 00 00       	call   40373c <phase_defused>
  40251e:	48 8d 35 db 1b 00 00 	lea    0x1bdb(%rip),%rsi        # 404100 <_IO_stdin_used+0x100>
  402525:	bf 01 00 00 00       	mov    $0x1,%edi
  40252a:	b8 00 00 00 00       	mov    $0x0,%eax
  40252f:	e8 2c fd ff ff       	call   402260 <__printf_chk@plt>
  402534:	e8 0a 11 00 00       	call   403643 <read_line>
  402539:	48 89 c7             	mov    %rax,%rdi
  40253c:	e8 ce 02 00 00       	call   40280f <phase_3>
  402541:	e8 f6 11 00 00       	call   40373c <phase_defused>
  402546:	48 8d 35 d4 1a 00 00 	lea    0x1ad4(%rip),%rsi        # 404021 <_IO_stdin_used+0x21>
  40254d:	bf 01 00 00 00       	mov    $0x1,%edi
  402552:	b8 00 00 00 00       	mov    $0x0,%eax
  402557:	e8 04 fd ff ff       	call   402260 <__printf_chk@plt>
  40255c:	e8 e2 10 00 00       	call   403643 <read_line>
  402561:	48 89 c7             	mov    %rax,%rdi
  402564:	e8 d9 03 00 00       	call   402942 <phase_4>
  402569:	e8 ce 11 00 00       	call   40373c <phase_defused>
  40256e:	48 8d 35 ab 1b 00 00 	lea    0x1bab(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  402575:	bf 01 00 00 00       	mov    $0x1,%edi
  40257a:	b8 00 00 00 00       	mov    $0x0,%eax
  40257f:	e8 dc fc ff ff       	call   402260 <__printf_chk@plt>
  402584:	e8 ba 10 00 00       	call   403643 <read_line>
  402589:	48 89 c7             	mov    %rax,%rdi
  40258c:	e8 31 04 00 00       	call   4029c2 <phase_5>
  402591:	e8 a6 11 00 00       	call   40373c <phase_defused>
  402596:	48 8d 35 ab 1b 00 00 	lea    0x1bab(%rip),%rsi        # 404148 <_IO_stdin_used+0x148>
  40259d:	bf 01 00 00 00       	mov    $0x1,%edi
  4025a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a7:	e8 b4 fc ff ff       	call   402260 <__printf_chk@plt>
  4025ac:	e8 92 10 00 00       	call   403643 <read_line>
  4025b1:	48 89 c7             	mov    %rax,%rdi
  4025b4:	e8 a4 04 00 00       	call   402a5d <phase_6>
  4025b9:	e8 7e 11 00 00       	call   40373c <phase_defused>
  4025be:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c3:	48 83 c4 08          	add    $0x8,%rsp
  4025c7:	5b                   	pop    %rbx
  4025c8:	5d                   	pop    %rbp
  4025c9:	c3                   	ret    
  4025ca:	48 8b 3d 6f 4d 00 00 	mov    0x4d6f(%rip),%rdi        # 407340 <stdin@GLIBC_2.2.5>
  4025d1:	be 00 00 00 00       	mov    $0x0,%esi
  4025d6:	e9 d8 fe ff ff       	jmp    4024b3 <main+0x5d>
  4025db:	48 8b 6e 08          	mov    0x8(%rsi),%rbp
  4025df:	48 89 ee             	mov    %rbp,%rsi
  4025e2:	48 8d 3d 1b 1a 00 00 	lea    0x1a1b(%rip),%rdi        # 404004 <_IO_stdin_used+0x4>
  4025e9:	e8 e2 fb ff ff       	call   4021d0 <strcmp@plt>
  4025ee:	85 c0                	test   %eax,%eax
  4025f0:	75 11                	jne    402603 <main+0x1ad>
  4025f2:	48 8b 3d 47 4d 00 00 	mov    0x4d47(%rip),%rdi        # 407340 <stdin@GLIBC_2.2.5>
  4025f9:	be 01 00 00 00       	mov    $0x1,%esi
  4025fe:	e9 b0 fe ff ff       	jmp    4024b3 <main+0x5d>
  402603:	48 8d 35 fb 19 00 00 	lea    0x19fb(%rip),%rsi        # 404005 <_IO_stdin_used+0x5>
  40260a:	48 89 ef             	mov    %rbp,%rdi
  40260d:	e8 7e fc ff ff       	call   402290 <fopen@plt>
  402612:	48 89 c7             	mov    %rax,%rdi
  402615:	48 85 c0             	test   %rax,%rax
  402618:	74 0a                	je     402624 <main+0x1ce>
  40261a:	be 00 00 00 00       	mov    $0x0,%esi
  40261f:	e9 8f fe ff ff       	jmp    4024b3 <main+0x5d>
  402624:	e8 57 fa ff ff       	call   402080 <__errno_location@plt>
  402629:	8b 38                	mov    (%rax),%edi
  40262b:	e8 00 fd ff ff       	call   402330 <strerror@plt>
  402630:	49 89 c1             	mov    %rax,%r9
  402633:	48 8b 0b             	mov    (%rbx),%rcx
  402636:	4c 8b 43 08          	mov    0x8(%rbx),%r8
  40263a:	48 8d 15 f7 19 00 00 	lea    0x19f7(%rip),%rdx        # 404038 <_IO_stdin_used+0x38>
  402641:	be 01 00 00 00       	mov    $0x1,%esi
  402646:	48 8b 3d 33 4d 00 00 	mov    0x4d33(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  40264d:	b8 00 00 00 00       	mov    $0x0,%eax
  402652:	e8 99 fc ff ff       	call   4022f0 <__fprintf_chk@plt>
  402657:	bf 08 00 00 00       	mov    $0x8,%edi
  40265c:	e8 6f fc ff ff       	call   4022d0 <exit@plt>
  402661:	48 8b 0b             	mov    (%rbx),%rcx
  402664:	48 8d 15 9c 19 00 00 	lea    0x199c(%rip),%rdx        # 404007 <_IO_stdin_used+0x7>
  40266b:	be 01 00 00 00       	mov    $0x1,%esi
  402670:	48 8b 3d 09 4d 00 00 	mov    0x4d09(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  402677:	b8 00 00 00 00       	mov    $0x0,%eax
  40267c:	e8 6f fc ff ff       	call   4022f0 <__fprintf_chk@plt>
  402681:	bf 08 00 00 00       	mov    $0x8,%edi
  402686:	e8 45 fc ff ff       	call   4022d0 <exit@plt>
  40268b:	e8 f0 f9 ff ff       	call   402080 <__errno_location@plt>
  402690:	8b 38                	mov    (%rax),%edi
  402692:	e8 99 fc ff ff       	call   402330 <strerror@plt>
  402697:	49 89 c1             	mov    %rax,%r9
  40269a:	48 8b 0b             	mov    (%rbx),%rcx
  40269d:	4c 8b 43 08          	mov    0x8(%rbx),%r8
  4026a1:	48 8d 15 90 19 00 00 	lea    0x1990(%rip),%rdx        # 404038 <_IO_stdin_used+0x38>
  4026a8:	be 01 00 00 00       	mov    $0x1,%esi
  4026ad:	48 8b 3d cc 4c 00 00 	mov    0x4ccc(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  4026b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b9:	e8 32 fc ff ff       	call   4022f0 <__fprintf_chk@plt>
  4026be:	bf 08 00 00 00       	mov    $0x8,%edi
  4026c3:	e8 08 fc ff ff       	call   4022d0 <exit@plt>
  4026c8:	48 8b 0e             	mov    (%rsi),%rcx
  4026cb:	48 8d 15 35 19 00 00 	lea    0x1935(%rip),%rdx        # 404007 <_IO_stdin_used+0x7>
  4026d2:	be 01 00 00 00       	mov    $0x1,%esi
  4026d7:	48 8b 3d a2 4c 00 00 	mov    0x4ca2(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  4026de:	b8 00 00 00 00       	mov    $0x0,%eax
  4026e3:	e8 08 fc ff ff       	call   4022f0 <__fprintf_chk@plt>
  4026e8:	bf 08 00 00 00       	mov    $0x8,%edi
  4026ed:	e8 de fb ff ff       	call   4022d0 <exit@plt>

00000000004026f2 <func4>:
  4026f2:	53                   	push   %rbx
  4026f3:	48 89 d0             	mov    %rdx,%rax
  4026f6:	48 29 f0             	sub    %rsi,%rax
  4026f9:	48 89 c3             	mov    %rax,%rbx
  4026fc:	48 c1 eb 3f          	shr    $0x3f,%rbx
  402700:	48 01 c3             	add    %rax,%rbx
  402703:	48 d1 fb             	sar    %rbx
  402706:	48 01 f3             	add    %rsi,%rbx
  402709:	48 39 fb             	cmp    %rdi,%rbx
  40270c:	7f 07                	jg     402715 <func4+0x23>
  40270e:	7c 13                	jl     402723 <func4+0x31>
  402710:	48 89 d8             	mov    %rbx,%rax
  402713:	5b                   	pop    %rbx
  402714:	c3                   	ret    
  402715:	48 8d 53 ff          	lea    -0x1(%rbx),%rdx
  402719:	e8 d4 ff ff ff       	call   4026f2 <func4>
  40271e:	48 01 c3             	add    %rax,%rbx
  402721:	eb ed                	jmp    402710 <func4+0x1e>
  402723:	48 8d 73 01          	lea    0x1(%rbx),%rsi
  402727:	e8 c6 ff ff ff       	call   4026f2 <func4>
  40272c:	48 01 c3             	add    %rax,%rbx
  40272f:	eb df                	jmp    402710 <func4+0x1e>

0000000000402731 <fun7>:
  402731:	48 85 ff             	test   %rdi,%rdi
  402734:	74 43                	je     402779 <fun7+0x48>
  402736:	48 83 ec 08          	sub    $0x8,%rsp
  40273a:	48 8b 02             	mov    (%rdx),%rax
  40273d:	48 c1 e0 08          	shl    $0x8,%rax
  402741:	48 03 07             	add    (%rdi),%rax
  402744:	48 89 02             	mov    %rax,(%rdx)
  402747:	48 8b 07             	mov    (%rdi),%rax
  40274a:	48 39 f0             	cmp    %rsi,%rax
  40274d:	77 0c                	ja     40275b <fun7+0x2a>
  40274f:	75 18                	jne    402769 <fun7+0x38>
  402751:	b8 00 00 00 00       	mov    $0x0,%eax
  402756:	48 83 c4 08          	add    $0x8,%rsp
  40275a:	c3                   	ret    
  40275b:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40275f:	e8 cd ff ff ff       	call   402731 <fun7>
  402764:	48 01 c0             	add    %rax,%rax
  402767:	eb ed                	jmp    402756 <fun7+0x25>
  402769:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40276d:	e8 bf ff ff ff       	call   402731 <fun7>
  402772:	48 8d 44 00 01       	lea    0x1(%rax,%rax,1),%rax
  402777:	eb dd                	jmp    402756 <fun7+0x25>
  402779:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402780:	c3                   	ret    

0000000000402781 <phase_1>:
  402781:	48 83 ec 08          	sub    $0x8,%rsp
  402785:	48 8d 35 94 4a 00 00 	lea    0x4a94(%rip),%rsi        # 407220 <sval>
  40278c:	e8 db 0b 00 00       	call   40336c <strings_not_equal>
  402791:	84 c0                	test   %al,%al
  402793:	75 05                	jne    40279a <phase_1+0x19>
  402795:	48 83 c4 08          	add    $0x8,%rsp
  402799:	c3                   	ret    
  40279a:	e8 28 0f 00 00       	call   4036c7 <explode_bomb>

000000000040279f <phase_2>:
  40279f:	48 83 ec 48          	sub    $0x48,%rsp
  4027a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027aa:	00 00 
  4027ac:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4027b1:	31 c0                	xor    %eax,%eax
  4027b3:	48 89 e6             	mov    %rsp,%rsi
  4027b6:	e8 40 0f 00 00       	call   4036fb <read_six_numbers>
  4027bb:	48 83 3c 24 08       	cmpq   $0x8,(%rsp)
  4027c0:	75 0f                	jne    4027d1 <phase_2+0x32>
  4027c2:	48 83 7c 24 08 08    	cmpq   $0x8,0x8(%rsp)
  4027c8:	75 07                	jne    4027d1 <phase_2+0x32>
  4027ca:	b8 02 00 00 00       	mov    $0x2,%eax
  4027cf:	eb 09                	jmp    4027da <phase_2+0x3b>
  4027d1:	e8 f1 0e 00 00       	call   4036c7 <explode_bomb>
  4027d6:	48 83 c0 01          	add    $0x1,%rax
  4027da:	48 83 f8 05          	cmp    $0x5,%rax
  4027de:	77 15                	ja     4027f5 <phase_2+0x56>
  4027e0:	48 8b 54 c4 f8       	mov    -0x8(%rsp,%rax,8),%rdx
  4027e5:	48 03 54 c4 f0       	add    -0x10(%rsp,%rax,8),%rdx
  4027ea:	48 39 14 c4          	cmp    %rdx,(%rsp,%rax,8)
  4027ee:	74 e6                	je     4027d6 <phase_2+0x37>
  4027f0:	e8 d2 0e 00 00       	call   4036c7 <explode_bomb>
  4027f5:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4027fa:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402801:	00 00 
  402803:	75 05                	jne    40280a <phase_2+0x6b>
  402805:	48 83 c4 48          	add    $0x48,%rsp
  402809:	c3                   	ret    
  40280a:	e8 11 f9 ff ff       	call   402120 <__stack_chk_fail@plt>

000000000040280f <phase_3>:
  40280f:	48 83 ec 28          	sub    $0x28,%rsp
  402813:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40281a:	00 00 
  40281c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402821:	31 c0                	xor    %eax,%eax
  402823:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
  402828:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  40282d:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402832:	48 8d 35 2e 19 00 00 	lea    0x192e(%rip),%rsi        # 404167 <_IO_stdin_used+0x167>
  402839:	e8 d2 f9 ff ff       	call   402210 <__isoc99_sscanf@plt>
  40283e:	83 f8 02             	cmp    $0x2,%eax
  402841:	7e 21                	jle    402864 <phase_3+0x55>
  402843:	48 83 7c 24 08 09    	cmpq   $0x9,0x8(%rsp)
  402849:	0f 87 e4 00 00 00    	ja     402933 <phase_3+0x124>
  40284f:	48 8d 15 2a 19 00 00 	lea    0x192a(%rip),%rdx        # 404180 <_IO_stdin_used+0x180>
  402856:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40285b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40285f:	48 01 d0             	add    %rdx,%rax
  402862:	ff e0                	jmp    *%rax
  402864:	e8 5e 0e 00 00       	call   4036c7 <explode_bomb>
  402869:	48 83 7c 24 10 2d    	cmpq   $0x2d,0x10(%rsp)
  40286f:	75 28                	jne    402899 <phase_3+0x8a>
  402871:	b8 65 00 00 00       	mov    $0x65,%eax
  402876:	38 44 24 07          	cmp    %al,0x7(%rsp)
  40287a:	0f 85 b8 00 00 00    	jne    402938 <phase_3+0x129>
  402880:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402885:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40288c:	00 00 
  40288e:	0f 85 a9 00 00 00    	jne    40293d <phase_3+0x12e>
  402894:	48 83 c4 28          	add    $0x28,%rsp
  402898:	c3                   	ret    
  402899:	e8 29 0e 00 00       	call   4036c7 <explode_bomb>
  40289e:	48 83 7c 24 10 39    	cmpq   $0x39,0x10(%rsp)
  4028a4:	75 07                	jne    4028ad <phase_3+0x9e>
  4028a6:	b8 70 00 00 00       	mov    $0x70,%eax
  4028ab:	eb c9                	jmp    402876 <phase_3+0x67>
  4028ad:	e8 15 0e 00 00       	call   4036c7 <explode_bomb>
  4028b2:	48 83 7c 24 10 24    	cmpq   $0x24,0x10(%rsp)
  4028b8:	75 07                	jne    4028c1 <phase_3+0xb2>
  4028ba:	b8 69 00 00 00       	mov    $0x69,%eax
  4028bf:	eb b5                	jmp    402876 <phase_3+0x67>
  4028c1:	e8 01 0e 00 00       	call   4036c7 <explode_bomb>
  4028c6:	48 83 7c 24 10 65    	cmpq   $0x65,0x10(%rsp)
  4028cc:	75 07                	jne    4028d5 <phase_3+0xc6>
  4028ce:	b8 6f 00 00 00       	mov    $0x6f,%eax
  4028d3:	eb a1                	jmp    402876 <phase_3+0x67>
  4028d5:	e8 ed 0d 00 00       	call   4036c7 <explode_bomb>
  4028da:	48 83 7c 24 10 29    	cmpq   $0x29,0x10(%rsp)
  4028e0:	75 07                	jne    4028e9 <phase_3+0xda>
  4028e2:	b8 62 00 00 00       	mov    $0x62,%eax
  4028e7:	eb 8d                	jmp    402876 <phase_3+0x67>
  4028e9:	e8 d9 0d 00 00       	call   4036c7 <explode_bomb>
  4028ee:	48 83 7c 24 10 36    	cmpq   $0x36,0x10(%rsp)
  4028f4:	75 0a                	jne    402900 <phase_3+0xf1>
  4028f6:	b8 79 00 00 00       	mov    $0x79,%eax
  4028fb:	e9 76 ff ff ff       	jmp    402876 <phase_3+0x67>
  402900:	e8 c2 0d 00 00       	call   4036c7 <explode_bomb>
  402905:	48 83 7c 24 10 4a    	cmpq   $0x4a,0x10(%rsp)
  40290b:	75 0a                	jne    402917 <phase_3+0x108>
  40290d:	b8 72 00 00 00       	mov    $0x72,%eax
  402912:	e9 5f ff ff ff       	jmp    402876 <phase_3+0x67>
  402917:	e8 ab 0d 00 00       	call   4036c7 <explode_bomb>
  40291c:	48 83 7c 24 10 42    	cmpq   $0x42,0x10(%rsp)
  402922:	75 0a                	jne    40292e <phase_3+0x11f>
  402924:	b8 66 00 00 00       	mov    $0x66,%eax
  402929:	e9 48 ff ff ff       	jmp    402876 <phase_3+0x67>
  40292e:	e8 94 0d 00 00       	call   4036c7 <explode_bomb>
  402933:	e8 8f 0d 00 00       	call   4036c7 <explode_bomb>
  402938:	e8 8a 0d 00 00       	call   4036c7 <explode_bomb>
  40293d:	e8 de f7 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000402942 <phase_4>:
  402942:	48 83 ec 28          	sub    $0x28,%rsp
  402946:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40294d:	00 00 
  40294f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402954:	31 c0                	xor    %eax,%eax
  402956:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40295b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  402960:	48 8d 35 87 1a 00 00 	lea    0x1a87(%rip),%rsi        # 4043ee <__PRETTY_FUNCTION__.0+0xce>
  402967:	e8 a4 f8 ff ff       	call   402210 <__isoc99_sscanf@plt>
  40296c:	83 f8 02             	cmp    $0x2,%eax
  40296f:	75 42                	jne    4029b3 <phase_4+0x71>
  402971:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402976:	48 85 ff             	test   %rdi,%rdi
  402979:	78 38                	js     4029b3 <phase_4+0x71>
  40297b:	48 83 ff 0e          	cmp    $0xe,%rdi
  40297f:	7f 32                	jg     4029b3 <phase_4+0x71>
  402981:	ba 0e 00 00 00       	mov    $0xe,%edx
  402986:	be 00 00 00 00       	mov    $0x0,%esi
  40298b:	e8 62 fd ff ff       	call   4026f2 <func4>
  402990:	48 83 f8 15          	cmp    $0x15,%rax
  402994:	75 22                	jne    4029b8 <phase_4+0x76>
  402996:	48 83 7c 24 10 15    	cmpq   $0x15,0x10(%rsp)
  40299c:	75 1a                	jne    4029b8 <phase_4+0x76>
  40299e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4029a3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4029aa:	00 00 
  4029ac:	75 0f                	jne    4029bd <phase_4+0x7b>
  4029ae:	48 83 c4 28          	add    $0x28,%rsp
  4029b2:	c3                   	ret    
  4029b3:	e8 0f 0d 00 00       	call   4036c7 <explode_bomb>
  4029b8:	e8 0a 0d 00 00       	call   4036c7 <explode_bomb>
  4029bd:	e8 5e f7 ff ff       	call   402120 <__stack_chk_fail@plt>

00000000004029c2 <phase_5>:
  4029c2:	48 83 ec 28          	sub    $0x28,%rsp
  4029c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029cd:	00 00 
  4029cf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4029d4:	31 c0                	xor    %eax,%eax
  4029d6:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  4029db:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4029e0:	48 8d 35 07 1a 00 00 	lea    0x1a07(%rip),%rsi        # 4043ee <__PRETTY_FUNCTION__.0+0xce>
  4029e7:	e8 24 f8 ff ff       	call   402210 <__isoc99_sscanf@plt>
  4029ec:	83 f8 01             	cmp    $0x1,%eax
  4029ef:	7e 19                	jle    402a0a <phase_5+0x48>
  4029f1:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4029f6:	83 e0 0f             	and    $0xf,%eax
  4029f9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4029fe:	ba 00 00 00 00       	mov    $0x0,%edx
  402a03:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a08:	eb 1c                	jmp    402a26 <phase_5+0x64>
  402a0a:	e8 b8 0c 00 00       	call   4036c7 <explode_bomb>
  402a0f:	48 83 c1 01          	add    $0x1,%rcx
  402a13:	48 8d 35 96 17 00 00 	lea    0x1796(%rip),%rsi        # 4041b0 <array.0>
  402a1a:	0f b6 04 06          	movzbl (%rsi,%rax,1),%eax
  402a1e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a23:	48 01 c2             	add    %rax,%rdx
  402a26:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  402a2b:	48 83 f8 0f          	cmp    $0xf,%rax
  402a2f:	75 de                	jne    402a0f <phase_5+0x4d>
  402a31:	48 83 f9 0f          	cmp    $0xf,%rcx
  402a35:	75 1c                	jne    402a53 <phase_5+0x91>
  402a37:	48 39 54 24 10       	cmp    %rdx,0x10(%rsp)
  402a3c:	75 15                	jne    402a53 <phase_5+0x91>
  402a3e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402a43:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402a4a:	00 00 
  402a4c:	75 0a                	jne    402a58 <phase_5+0x96>
  402a4e:	48 83 c4 28          	add    $0x28,%rsp
  402a52:	c3                   	ret    
  402a53:	e8 6f 0c 00 00       	call   4036c7 <explode_bomb>
  402a58:	e8 c3 f6 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000402a5d <phase_6>:
  402a5d:	48 83 ec 78          	sub    $0x78,%rsp
  402a61:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a68:	00 00 
  402a6a:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  402a6f:	31 c0                	xor    %eax,%eax
  402a71:	48 89 e6             	mov    %rsp,%rsi
  402a74:	e8 82 0c 00 00       	call   4036fb <read_six_numbers>
  402a79:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a7e:	48 83 f9 05          	cmp    $0x5,%rcx
  402a82:	7f 31                	jg     402ab5 <phase_6+0x58>
  402a84:	48 8b 14 cc          	mov    (%rsp,%rcx,8),%rdx
  402a88:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
  402a8c:	48 83 f8 05          	cmp    $0x5,%rax
  402a90:	77 09                	ja     402a9b <phase_6+0x3e>
  402a92:	48 83 c1 01          	add    $0x1,%rcx
  402a96:	48 89 c8             	mov    %rcx,%rax
  402a99:	eb 09                	jmp    402aa4 <phase_6+0x47>
  402a9b:	e8 27 0c 00 00       	call   4036c7 <explode_bomb>
  402aa0:	48 83 c0 01          	add    $0x1,%rax
  402aa4:	48 83 f8 05          	cmp    $0x5,%rax
  402aa8:	7f d4                	jg     402a7e <phase_6+0x21>
  402aaa:	48 3b 14 c4          	cmp    (%rsp,%rax,8),%rdx
  402aae:	75 f0                	jne    402aa0 <phase_6+0x43>
  402ab0:	e8 12 0c 00 00       	call   4036c7 <explode_bomb>
  402ab5:	b9 00 00 00 00       	mov    $0x0,%ecx
  402aba:	eb 09                	jmp    402ac5 <phase_6+0x68>
  402abc:	48 89 54 cc 30       	mov    %rdx,0x30(%rsp,%rcx,8)
  402ac1:	48 83 c1 01          	add    $0x1,%rcx
  402ac5:	48 83 f9 05          	cmp    $0x5,%rcx
  402ac9:	7f 1c                	jg     402ae7 <phase_6+0x8a>
  402acb:	b8 01 00 00 00       	mov    $0x1,%eax
  402ad0:	48 8d 15 89 47 00 00 	lea    0x4789(%rip),%rdx        # 407260 <node1>
  402ad7:	48 39 04 cc          	cmp    %rax,(%rsp,%rcx,8)
  402adb:	7e df                	jle    402abc <phase_6+0x5f>
  402add:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  402ae1:	48 83 c0 01          	add    $0x1,%rax
  402ae5:	eb f0                	jmp    402ad7 <phase_6+0x7a>
  402ae7:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  402aec:	48 89 c6             	mov    %rax,%rsi
  402aef:	ba 01 00 00 00       	mov    $0x1,%edx
  402af4:	eb 10                	jmp    402b06 <phase_6+0xa9>
  402af6:	48 8b 4c d4 30       	mov    0x30(%rsp,%rdx,8),%rcx
  402afb:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
  402aff:	48 83 c2 01          	add    $0x1,%rdx
  402b03:	48 89 ce             	mov    %rcx,%rsi
  402b06:	48 83 fa 05          	cmp    $0x5,%rdx
  402b0a:	7e ea                	jle    402af6 <phase_6+0x99>
  402b0c:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  402b13:	00 
  402b14:	ba 00 00 00 00       	mov    $0x0,%edx
  402b19:	48 83 fa 04          	cmp    $0x4,%rdx
  402b1d:	7f 17                	jg     402b36 <phase_6+0xd9>
  402b1f:	48 8b 08             	mov    (%rax),%rcx
  402b22:	48 8b 40 10          	mov    0x10(%rax),%rax
  402b26:	48 3b 08             	cmp    (%rax),%rcx
  402b29:	7c 06                	jl     402b31 <phase_6+0xd4>
  402b2b:	48 83 c2 01          	add    $0x1,%rdx
  402b2f:	eb e8                	jmp    402b19 <phase_6+0xbc>
  402b31:	e8 91 0b 00 00       	call   4036c7 <explode_bomb>
  402b36:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  402b3b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402b42:	00 00 
  402b44:	75 05                	jne    402b4b <phase_6+0xee>
  402b46:	48 83 c4 78          	add    $0x78,%rsp
  402b4a:	c3                   	ret    
  402b4b:	e8 d0 f5 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000402b50 <secret_phase>:
  402b50:	48 83 ec 28          	sub    $0x28,%rsp
  402b54:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b5b:	00 00 
  402b5d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b62:	31 c0                	xor    %eax,%eax
  402b64:	e8 da 0a 00 00       	call   403643 <read_line>
  402b69:	48 89 c7             	mov    %rax,%rdi
  402b6c:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  402b73:	00 00 
  402b75:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  402b7a:	48 89 e2             	mov    %rsp,%rdx
  402b7d:	48 8d 35 ee 15 00 00 	lea    0x15ee(%rip),%rsi        # 404172 <_IO_stdin_used+0x172>
  402b84:	b8 00 00 00 00       	mov    $0x0,%eax
  402b89:	e8 82 f6 ff ff       	call   402210 <__isoc99_sscanf@plt>
  402b8e:	83 f8 02             	cmp    $0x2,%eax
  402b91:	75 46                	jne    402bd9 <secret_phase+0x89>
  402b93:	48 8b 34 24          	mov    (%rsp),%rsi
  402b97:	48 8d 46 d1          	lea    -0x2f(%rsi),%rax
  402b9b:	48 83 f8 7a          	cmp    $0x7a,%rax
  402b9f:	77 3d                	ja     402bde <secret_phase+0x8e>
  402ba1:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  402ba6:	48 8d 3d d3 40 00 00 	lea    0x40d3(%rip),%rdi        # 406c80 <n1>
  402bad:	e8 7f fb ff ff       	call   402731 <fun7>
  402bb2:	48 83 f8 02          	cmp    $0x2,%rax
  402bb6:	75 2b                	jne    402be3 <secret_phase+0x93>
  402bb8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  402bbd:	48 39 44 24 10       	cmp    %rax,0x10(%rsp)
  402bc2:	75 24                	jne    402be8 <secret_phase+0x98>
  402bc4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402bc9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402bd0:	00 00 
  402bd2:	75 19                	jne    402bed <secret_phase+0x9d>
  402bd4:	48 83 c4 28          	add    $0x28,%rsp
  402bd8:	c3                   	ret    
  402bd9:	e8 e9 0a 00 00       	call   4036c7 <explode_bomb>
  402bde:	e8 e4 0a 00 00       	call   4036c7 <explode_bomb>
  402be3:	e8 df 0a 00 00       	call   4036c7 <explode_bomb>
  402be8:	e8 da 0a 00 00       	call   4036c7 <explode_bomb>
  402bed:	e8 2e f5 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000402bf2 <fs>:
  402bf2:	b9 00 00 00 00       	mov    $0x0,%ecx
  402bf7:	eb 06                	jmp    402bff <fs+0xd>
  402bf9:	c6 02 6f             	movb   $0x6f,(%rdx)
  402bfc:	83 c1 01             	add    $0x1,%ecx
  402bff:	48 63 d1             	movslq %ecx,%rdx
  402c02:	48 01 fa             	add    %rdi,%rdx
  402c05:	0f b6 02             	movzbl (%rdx),%eax
  402c08:	84 c0                	test   %al,%al
  402c0a:	74 2e                	je     402c3a <fs+0x48>
  402c0c:	83 e8 61             	sub    $0x61,%eax
  402c0f:	3c 14                	cmp    $0x14,%al
  402c11:	77 e9                	ja     402bfc <fs+0xa>
  402c13:	0f b6 c0             	movzbl %al,%eax
  402c16:	48 8d 35 a3 16 00 00 	lea    0x16a3(%rip),%rsi        # 4042c0 <n48+0x20>
  402c1d:	48 63 04 86          	movslq (%rsi,%rax,4),%rax
  402c21:	48 01 f0             	add    %rsi,%rax
  402c24:	ff e0                	jmp    *%rax
  402c26:	c6 02 69             	movb   $0x69,(%rdx)
  402c29:	eb d1                	jmp    402bfc <fs+0xa>
  402c2b:	c6 02 65             	movb   $0x65,(%rdx)
  402c2e:	eb cc                	jmp    402bfc <fs+0xa>
  402c30:	c6 02 61             	movb   $0x61,(%rdx)
  402c33:	eb c7                	jmp    402bfc <fs+0xa>
  402c35:	c6 02 75             	movb   $0x75,(%rdx)
  402c38:	eb c2                	jmp    402bfc <fs+0xa>
  402c3a:	c3                   	ret    

0000000000402c3b <init_submission_record_internal>:
  402c3b:	48 c7 05 7a 47 00 00 	movq   $0x0,0x477a(%rip)        # 4073c0 <highest_solved_phase>
  402c42:	00 00 00 00 
  402c46:	48 c7 05 5f 47 00 00 	movq   $0x0,0x475f(%rip)        # 4073b0 <most_recent_submission>
  402c4d:	00 00 00 00 
  402c51:	48 c7 05 5c 47 00 00 	movq   $0x0,0x475c(%rip)        # 4073b8 <most_recent_submission+0x8>
  402c58:	00 00 00 00 
  402c5c:	c3                   	ret    

0000000000402c5d <safe_print>:
  402c5d:	55                   	push   %rbp
  402c5e:	53                   	push   %rbx
  402c5f:	48 83 ec 08          	sub    $0x8,%rsp
  402c63:	48 89 fd             	mov    %rdi,%rbp
  402c66:	e8 a5 f4 ff ff       	call   402110 <strlen@plt>
  402c6b:	48 89 c3             	mov    %rax,%rbx
  402c6e:	eb 1b                	jmp    402c8b <safe_print+0x2e>
  402c70:	48 89 da             	mov    %rbx,%rdx
  402c73:	48 89 ee             	mov    %rbp,%rsi
  402c76:	bf 01 00 00 00       	mov    $0x1,%edi
  402c7b:	e8 50 f4 ff ff       	call   4020d0 <write@plt>
  402c80:	48 85 c0             	test   %rax,%rax
  402c83:	78 12                	js     402c97 <safe_print+0x3a>
  402c85:	48 29 c3             	sub    %rax,%rbx
  402c88:	48 01 c5             	add    %rax,%rbp
  402c8b:	48 85 db             	test   %rbx,%rbx
  402c8e:	75 e0                	jne    402c70 <safe_print+0x13>
  402c90:	48 83 c4 08          	add    $0x8,%rsp
  402c94:	5b                   	pop    %rbx
  402c95:	5d                   	pop    %rbp
  402c96:	c3                   	ret    
  402c97:	e8 d4 f3 ff ff       	call   402070 <abort@plt>

0000000000402c9c <so_you_think>:
  402c9c:	53                   	push   %rbx
  402c9d:	48 83 ec 50          	sub    $0x50,%rsp
  402ca1:	89 fb                	mov    %edi,%ebx
  402ca3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402caa:	00 00 
  402cac:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  402cb1:	31 c0                	xor    %eax,%eax
  402cb3:	48 b8 0a 53 6f 20 79 	movabs $0x20756f79206f530a,%rax
  402cba:	6f 75 20 
  402cbd:	48 ba 74 68 69 6e 6b 	movabs $0x6f79206b6e696874,%rdx
  402cc4:	20 79 6f 
  402cc7:	48 89 04 24          	mov    %rax,(%rsp)
  402ccb:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402cd0:	48 b8 75 20 63 61 6e 	movabs $0x7473206e61632075,%rax
  402cd7:	20 73 74 
  402cda:	48 ba 6f 70 20 74 68 	movabs $0x622065687420706f,%rdx
  402ce1:	65 20 62 
  402ce4:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  402ce9:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  402cee:	48 b8 6f 6d 62 20 77 	movabs $0x6874697720626d6f,%rax
  402cf5:	69 74 68 
  402cf8:	48 ba 20 63 74 72 6c 	movabs $0x2c212d6c72746320,%rdx
  402cff:	2d 21 2c 
  402d02:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  402d07:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  402d0c:	48 b8 20 64 6f 20 79 	movabs $0x3f756f79206f6420,%rax
  402d13:	6f 75 3f 
  402d16:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  402d1b:	66 c7 44 24 38 0a 00 	movw   $0xa,0x38(%rsp)
  402d22:	48 89 e7             	mov    %rsp,%rdi
  402d25:	be 21 00 00 00       	mov    $0x21,%esi
  402d2a:	e8 11 f4 ff ff       	call   402140 <strchr@plt>
  402d2f:	83 fb ff             	cmp    $0xffffffff,%ebx
  402d32:	74 0f                	je     402d43 <so_you_think+0xa7>
  402d34:	83 fb 02             	cmp    $0x2,%ebx
  402d37:	74 4b                	je     402d84 <so_you_think+0xe8>
  402d39:	83 fb 03             	cmp    $0x3,%ebx
  402d3c:	75 08                	jne    402d46 <so_you_think+0xaa>
  402d3e:	c6 00 5c             	movb   $0x5c,(%rax)
  402d41:	eb 03                	jmp    402d46 <so_you_think+0xaa>
  402d43:	c6 00 44             	movb   $0x44,(%rax)
  402d46:	48 89 e7             	mov    %rsp,%rdi
  402d49:	e8 0f ff ff ff       	call   402c5d <safe_print>
  402d4e:	bf 03 00 00 00       	mov    $0x3,%edi
  402d53:	e8 e8 f5 ff ff       	call   402340 <sleep@plt>
  402d58:	48 8d 3d da 15 00 00 	lea    0x15da(%rip),%rdi        # 404339 <__PRETTY_FUNCTION__.0+0x19>
  402d5f:	e8 f9 fe ff ff       	call   402c5d <safe_print>
  402d64:	bf 01 00 00 00       	mov    $0x1,%edi
  402d69:	e8 d2 f5 ff ff       	call   402340 <sleep@plt>
  402d6e:	48 8d 3d cc 15 00 00 	lea    0x15cc(%rip),%rdi        # 404341 <__PRETTY_FUNCTION__.0+0x21>
  402d75:	e8 e3 fe ff ff       	call   402c5d <safe_print>
  402d7a:	bf 10 00 00 00       	mov    $0x10,%edi
  402d7f:	e8 1c f3 ff ff       	call   4020a0 <_exit@plt>
  402d84:	c6 00 43             	movb   $0x43,(%rax)
  402d87:	eb bd                	jmp    402d46 <so_you_think+0xaa>

0000000000402d89 <generate_submission>:
  402d89:	55                   	push   %rbp
  402d8a:	53                   	push   %rbx
  402d8b:	48 83 ec 10          	sub    $0x10,%rsp
  402d8f:	48 89 fd             	mov    %rdi,%rbp
  402d92:	49 89 f1             	mov    %rsi,%r9
  402d95:	ff 35 35 46 00 00    	push   0x4635(%rip)        # 4073d0 <num_input_strings>
  402d9b:	44 8b 05 c2 1c 00 00 	mov    0x1cc2(%rip),%r8d        # 404a64 <bomb_id>
  402da2:	48 8b 0d 1f 46 00 00 	mov    0x461f(%rip),%rcx        # 4073c8 <student_id>
  402da9:	48 8d 15 70 16 00 00 	lea    0x1670(%rip),%rdx        # 404420 <__PRETTY_FUNCTION__.0+0x100>
  402db0:	be 01 00 00 00       	mov    $0x1,%esi
  402db5:	b8 00 00 00 00       	mov    $0x0,%eax
  402dba:	e8 31 f5 ff ff       	call   4022f0 <__fprintf_chk@plt>
  402dbf:	48 83 c4 10          	add    $0x10,%rsp
  402dc3:	bb 00 00 00 00       	mov    $0x0,%ebx
  402dc8:	eb 28                	jmp    402df2 <generate_submission+0x69>
  402dca:	48 8d 05 0f 46 00 00 	lea    0x460f(%rip),%rax        # 4073e0 <input_strings>
  402dd1:	48 8b 0c d8          	mov    (%rax,%rbx,8),%rcx
  402dd5:	48 8d 15 48 1a 00 00 	lea    0x1a48(%rip),%rdx        # 404824 <__PRETTY_FUNCTION__.0+0x504>
  402ddc:	be 01 00 00 00       	mov    $0x1,%esi
  402de1:	48 89 ef             	mov    %rbp,%rdi
  402de4:	b8 00 00 00 00       	mov    $0x0,%eax
  402de9:	e8 02 f5 ff ff       	call   4022f0 <__fprintf_chk@plt>
  402dee:	48 83 c3 01          	add    $0x1,%rbx
  402df2:	48 39 1d d7 45 00 00 	cmp    %rbx,0x45d7(%rip)        # 4073d0 <num_input_strings>
  402df9:	77 cf                	ja     402dca <generate_submission+0x41>
  402dfb:	b8 00 00 00 00       	mov    $0x0,%eax
  402e00:	48 83 c4 08          	add    $0x8,%rsp
  402e04:	5b                   	pop    %rbx
  402e05:	5d                   	pop    %rbp
  402e06:	c3                   	ret    

0000000000402e07 <open_submission_record>:
  402e07:	41 54                	push   %r12
  402e09:	55                   	push   %rbp
  402e0a:	53                   	push   %rbx
  402e0b:	48 83 ec 10          	sub    $0x10,%rsp
  402e0f:	48 89 fd             	mov    %rdi,%rbp
  402e12:	89 f3                	mov    %esi,%ebx
  402e14:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e1b:	00 00 
  402e1d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402e22:	31 c0                	xor    %eax,%eax
  402e24:	48 8b 3d 75 45 00 00 	mov    0x4575(%rip),%rdi        # 4073a0 <submission_record_file>
  402e2b:	48 85 ff             	test   %rdi,%rdi
  402e2e:	74 2c                	je     402e5c <open_submission_record+0x55>
  402e30:	83 cb 40             	or     $0x40,%ebx
  402e33:	89 de                	mov    %ebx,%esi
  402e35:	ba 80 01 00 00       	mov    $0x180,%edx
  402e3a:	e8 41 f4 ff ff       	call   402280 <open@plt>
  402e3f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402e44:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402e4b:	00 00 
  402e4d:	0f 85 01 01 00 00    	jne    402f54 <open_submission_record+0x14d>
  402e53:	48 83 c4 10          	add    $0x10,%rsp
  402e57:	5b                   	pop    %rbx
  402e58:	5d                   	pop    %rbp
  402e59:	41 5c                	pop    %r12
  402e5b:	c3                   	ret    
  402e5c:	48 8d 35 e7 14 00 00 	lea    0x14e7(%rip),%rsi        # 40434a <__PRETTY_FUNCTION__.0+0x2a>
  402e63:	4c 8d 25 e6 1b 00 00 	lea    0x1be6(%rip),%r12        # 404a50 <course_and_lab>
  402e6a:	4c 89 e7             	mov    %r12,%rdi
  402e6d:	e8 1e f3 ff ff       	call   402190 <strcspn@plt>
  402e72:	48 89 e7             	mov    %rsp,%rdi
  402e75:	48 83 ec 08          	sub    $0x8,%rsp
  402e79:	8b 15 e5 1b 00 00    	mov    0x1be5(%rip),%edx        # 404a64 <bomb_id>
  402e7f:	52                   	push   %rdx
  402e80:	4d 89 e1             	mov    %r12,%r9
  402e83:	41 89 c0             	mov    %eax,%r8d
  402e86:	48 89 e9             	mov    %rbp,%rcx
  402e89:	48 8d 15 d0 15 00 00 	lea    0x15d0(%rip),%rdx        # 404460 <__PRETTY_FUNCTION__.0+0x140>
  402e90:	be 01 00 00 00       	mov    $0x1,%esi
  402e95:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9a:	e8 11 f3 ff ff       	call   4021b0 <__asprintf_chk@plt>
  402e9f:	48 83 c4 10          	add    $0x10,%rsp
  402ea3:	83 f8 ff             	cmp    $0xffffffff,%eax
  402ea6:	74 97                	je     402e3f <open_submission_record+0x38>
  402ea8:	83 cb 40             	or     $0x40,%ebx
  402eab:	ba 80 01 00 00       	mov    $0x180,%edx
  402eb0:	89 de                	mov    %ebx,%esi
  402eb2:	48 8b 3c 24          	mov    (%rsp),%rdi
  402eb6:	b8 00 00 00 00       	mov    $0x0,%eax
  402ebb:	e8 c0 f3 ff ff       	call   402280 <open@plt>
  402ec0:	85 c0                	test   %eax,%eax
  402ec2:	79 60                	jns    402f24 <open_submission_record+0x11d>
  402ec4:	e8 b7 f1 ff ff       	call   402080 <__errno_location@plt>
  402ec9:	49 89 c4             	mov    %rax,%r12
  402ecc:	83 38 02             	cmpl   $0x2,(%rax)
  402ecf:	75 68                	jne    402f39 <open_submission_record+0x132>
  402ed1:	be 2f 00 00 00       	mov    $0x2f,%esi
  402ed6:	48 8b 3c 24          	mov    (%rsp),%rdi
  402eda:	e8 71 f2 ff ff       	call   402150 <strrchr@plt>
  402edf:	48 89 c5             	mov    %rax,%rbp
  402ee2:	48 85 c0             	test   %rax,%rax
  402ee5:	74 4d                	je     402f34 <open_submission_record+0x12d>
  402ee7:	c6 00 00             	movb   $0x0,(%rax)
  402eea:	be ff 01 00 00       	mov    $0x1ff,%esi
  402eef:	48 8b 3c 24          	mov    (%rsp),%rdi
  402ef3:	e8 b8 f1 ff ff       	call   4020b0 <mkdir@plt>
  402ef8:	85 c0                	test   %eax,%eax
  402efa:	75 3d                	jne    402f39 <open_submission_record+0x132>
  402efc:	c6 45 00 2f          	movb   $0x2f,0x0(%rbp)
  402f00:	ba 80 01 00 00       	mov    $0x180,%edx
  402f05:	89 de                	mov    %ebx,%esi
  402f07:	48 8b 3c 24          	mov    (%rsp),%rdi
  402f0b:	e8 70 f3 ff ff       	call   402280 <open@plt>
  402f10:	85 c0                	test   %eax,%eax
  402f12:	78 25                	js     402f39 <open_submission_record+0x132>
  402f14:	48 8b 14 24          	mov    (%rsp),%rdx
  402f18:	48 89 15 81 44 00 00 	mov    %rdx,0x4481(%rip)        # 4073a0 <submission_record_file>
  402f1f:	e9 1b ff ff ff       	jmp    402e3f <open_submission_record+0x38>
  402f24:	48 8b 14 24          	mov    (%rsp),%rdx
  402f28:	48 89 15 71 44 00 00 	mov    %rdx,0x4471(%rip)        # 4073a0 <submission_record_file>
  402f2f:	e9 0b ff ff ff       	jmp    402e3f <open_submission_record+0x38>
  402f34:	e8 37 f1 ff ff       	call   402070 <abort@plt>
  402f39:	41 8b 1c 24          	mov    (%r12),%ebx
  402f3d:	48 8b 3c 24          	mov    (%rsp),%rdi
  402f41:	e8 fa f0 ff ff       	call   402040 <free@plt>
  402f46:	41 89 1c 24          	mov    %ebx,(%r12)
  402f4a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f4f:	e9 eb fe ff ff       	jmp    402e3f <open_submission_record+0x38>
  402f54:	e8 c7 f1 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000402f59 <read_submission_record>:
  402f59:	53                   	push   %rbx
  402f5a:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  402f61:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f68:	00 00 
  402f6a:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
  402f71:	00 
  402f72:	31 c0                	xor    %eax,%eax
  402f74:	be 00 00 00 00       	mov    $0x0,%esi
  402f79:	e8 89 fe ff ff       	call   402e07 <open_submission_record>
  402f7e:	83 f8 ff             	cmp    $0xffffffff,%eax
  402f81:	0f 84 c9 00 00 00    	je     403050 <read_submission_record+0xf7>
  402f87:	89 c3                	mov    %eax,%ebx
  402f89:	48 8d b4 24 a5 00 00 	lea    0xa5(%rsp),%rsi
  402f90:	00 
  402f91:	ba 02 00 00 00       	mov    $0x2,%edx
  402f96:	89 c7                	mov    %eax,%edi
  402f98:	e8 03 f2 ff ff       	call   4021a0 <read@plt>
  402f9d:	48 85 c0             	test   %rax,%rax
  402fa0:	0f 88 c0 00 00 00    	js     403066 <read_submission_record+0x10d>
  402fa6:	0f 84 d0 00 00 00    	je     40307c <read_submission_record+0x123>
  402fac:	c6 84 04 a5 00 00 00 	movb   $0x0,0xa5(%rsp,%rax,1)
  402fb3:	00 
  402fb4:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  402fb9:	48 8d bc 24 a5 00 00 	lea    0xa5(%rsp),%rdi
  402fc0:	00 
  402fc1:	ba 0a 00 00 00       	mov    $0xa,%edx
  402fc6:	e8 e5 f2 ff ff       	call   4022b0 <strtoul@plt>
  402fcb:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402fd0:	48 8d 8c 24 a6 00 00 	lea    0xa6(%rsp),%rcx
  402fd7:	00 
  402fd8:	48 39 ca             	cmp    %rcx,%rdx
  402fdb:	0f 85 a9 00 00 00    	jne    40308a <read_submission_record+0x131>
  402fe1:	0f b6 12             	movzbl (%rdx),%edx
  402fe4:	84 d2                	test   %dl,%dl
  402fe6:	0f 95 c1             	setne  %cl
  402fe9:	80 fa 0a             	cmp    $0xa,%dl
  402fec:	0f 95 c2             	setne  %dl
  402fef:	84 d1                	test   %dl,%cl
  402ff1:	0f 85 93 00 00 00    	jne    40308a <read_submission_record+0x131>
  402ff7:	48 83 f8 07          	cmp    $0x7,%rax
  402ffb:	0f 87 89 00 00 00    	ja     40308a <read_submission_record+0x131>
  403001:	48 89 05 b8 43 00 00 	mov    %rax,0x43b8(%rip)        # 4073c0 <highest_solved_phase>
  403008:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40300d:	89 df                	mov    %ebx,%edi
  40300f:	e8 3c f3 ff ff       	call   402350 <fstat@plt>
  403014:	85 c0                	test   %eax,%eax
  403016:	0f 85 9c 00 00 00    	jne    4030b8 <read_submission_record+0x15f>
  40301c:	f3 0f 6f 44 24 68    	movdqu 0x68(%rsp),%xmm0
  403022:	0f 29 05 87 43 00 00 	movaps %xmm0,0x4387(%rip)        # 4073b0 <most_recent_submission>
  403029:	89 df                	mov    %ebx,%edi
  40302b:	e8 50 f1 ff ff       	call   402180 <close@plt>
  403030:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
  403037:	00 
  403038:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40303f:	00 00 
  403041:	0f 85 87 00 00 00    	jne    4030ce <read_submission_record+0x175>
  403047:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  40304e:	5b                   	pop    %rbx
  40304f:	c3                   	ret    
  403050:	48 8d 3d 29 14 00 00 	lea    0x1429(%rip),%rdi        # 404480 <__PRETTY_FUNCTION__.0+0x160>
  403057:	e8 44 f2 ff ff       	call   4022a0 <perror@plt>
  40305c:	bf 08 00 00 00       	mov    $0x8,%edi
  403061:	e8 6a f2 ff ff       	call   4022d0 <exit@plt>
  403066:	48 8d 3d df 12 00 00 	lea    0x12df(%rip),%rdi        # 40434c <__PRETTY_FUNCTION__.0+0x2c>
  40306d:	e8 2e f2 ff ff       	call   4022a0 <perror@plt>
  403072:	bf 08 00 00 00       	mov    $0x8,%edi
  403077:	e8 54 f2 ff ff       	call   4022d0 <exit@plt>
  40307c:	e8 ba fb ff ff       	call   402c3b <init_submission_record_internal>
  403081:	89 df                	mov    %ebx,%edi
  403083:	e8 f8 f0 ff ff       	call   402180 <close@plt>
  403088:	eb a6                	jmp    403030 <read_submission_record+0xd7>
  40308a:	48 8b 0d 0f 43 00 00 	mov    0x430f(%rip),%rcx        # 4073a0 <submission_record_file>
  403091:	48 8d 15 18 14 00 00 	lea    0x1418(%rip),%rdx        # 4044b0 <__PRETTY_FUNCTION__.0+0x190>
  403098:	be 01 00 00 00       	mov    $0x1,%esi
  40309d:	48 8b 3d dc 42 00 00 	mov    0x42dc(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  4030a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4030a9:	e8 42 f2 ff ff       	call   4022f0 <__fprintf_chk@plt>
  4030ae:	bf 08 00 00 00       	mov    $0x8,%edi
  4030b3:	e8 18 f2 ff ff       	call   4022d0 <exit@plt>
  4030b8:	48 8d 3d a6 12 00 00 	lea    0x12a6(%rip),%rdi        # 404365 <__PRETTY_FUNCTION__.0+0x45>
  4030bf:	e8 dc f1 ff ff       	call   4022a0 <perror@plt>
  4030c4:	bf 08 00 00 00       	mov    $0x8,%edi
  4030c9:	e8 02 f2 ff ff       	call   4022d0 <exit@plt>
  4030ce:	e8 4d f0 ff ff       	call   402120 <__stack_chk_fail@plt>

00000000004030d3 <blank_line>:
  4030d3:	55                   	push   %rbp
  4030d4:	53                   	push   %rbx
  4030d5:	48 83 ec 08          	sub    $0x8,%rsp
  4030d9:	48 89 fd             	mov    %rdi,%rbp
  4030dc:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  4030e0:	84 db                	test   %bl,%bl
  4030e2:	74 1e                	je     403102 <blank_line+0x2f>
  4030e4:	e8 77 f2 ff ff       	call   402360 <__ctype_b_loc@plt>
  4030e9:	48 8b 00             	mov    (%rax),%rax
  4030ec:	48 83 c5 01          	add    $0x1,%rbp
  4030f0:	48 0f be db          	movsbq %bl,%rbx
  4030f4:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  4030f9:	75 e1                	jne    4030dc <blank_line+0x9>
  4030fb:	b8 00 00 00 00       	mov    $0x0,%eax
  403100:	eb 05                	jmp    403107 <blank_line+0x34>
  403102:	b8 01 00 00 00       	mov    $0x1,%eax
  403107:	48 83 c4 08          	add    $0x8,%rsp
  40310b:	5b                   	pop    %rbx
  40310c:	5d                   	pop    %rbp
  40310d:	c3                   	ret    

000000000040310e <skip>:
  40310e:	55                   	push   %rbp
  40310f:	53                   	push   %rbx
  403110:	48 83 ec 28          	sub    $0x28,%rsp
  403114:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40311b:	00 00 
  40311d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403122:	31 c0                	xor    %eax,%eax
  403124:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40312b:	00 00 
  40312d:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  403134:	00 00 
  403136:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40313b:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  403140:	48 8b 0d d1 42 00 00 	mov    0x42d1(%rip),%rcx        # 407418 <infile>
  403147:	ba 0a 00 00 00       	mov    $0xa,%edx
  40314c:	e8 6f f0 ff ff       	call   4021c0 <__getdelim@plt>
  403151:	48 89 c3             	mov    %rax,%rbx
  403154:	48 85 c0             	test   %rax,%rax
  403157:	78 13                	js     40316c <skip+0x5e>
  403159:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  40315e:	48 89 ef             	mov    %rbp,%rdi
  403161:	e8 6d ff ff ff       	call   4030d3 <blank_line>
  403166:	85 c0                	test   %eax,%eax
  403168:	75 cc                	jne    403136 <skip+0x28>
  40316a:	eb 46                	jmp    4031b2 <skip+0xa4>
  40316c:	48 8b 3d a5 42 00 00 	mov    0x42a5(%rip),%rdi        # 407418 <infile>
  403173:	e8 78 f0 ff ff       	call   4021f0 <feof@plt>
  403178:	85 c0                	test   %eax,%eax
  40317a:	74 1c                	je     403198 <skip+0x8a>
  40317c:	b8 00 00 00 00       	mov    $0x0,%eax
  403181:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403186:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40318d:	00 00 
  40318f:	75 47                	jne    4031d8 <skip+0xca>
  403191:	48 83 c4 28          	add    $0x28,%rsp
  403195:	5b                   	pop    %rbx
  403196:	5d                   	pop    %rbp
  403197:	c3                   	ret    
  403198:	48 8d 3d e0 11 00 00 	lea    0x11e0(%rip),%rdi        # 40437f <__PRETTY_FUNCTION__.0+0x5f>
  40319f:	e8 fc f0 ff ff       	call   4022a0 <perror@plt>
  4031a4:	bf 08 00 00 00       	mov    $0x8,%edi
  4031a9:	e8 22 f1 ff ff       	call   4022d0 <exit@plt>
  4031ae:	48 83 eb 01          	sub    $0x1,%rbx
  4031b2:	48 85 db             	test   %rbx,%rbx
  4031b5:	7e 15                	jle    4031cc <skip+0xbe>
  4031b7:	e8 a4 f1 ff ff       	call   402360 <__ctype_b_loc@plt>
  4031bc:	48 8b 00             	mov    (%rax),%rax
  4031bf:	48 0f be 54 1d ff    	movsbq -0x1(%rbp,%rbx,1),%rdx
  4031c5:	f6 44 50 01 20       	testb  $0x20,0x1(%rax,%rdx,2)
  4031ca:	75 e2                	jne    4031ae <skip+0xa0>
  4031cc:	c6 44 1d 00 00       	movb   $0x0,0x0(%rbp,%rbx,1)
  4031d1:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4031d6:	eb a9                	jmp    403181 <skip+0x73>
  4031d8:	e8 43 ef ff ff       	call   402120 <__stack_chk_fail@plt>

00000000004031dd <update_submission_record>:
  4031dd:	55                   	push   %rbp
  4031de:	53                   	push   %rbx
  4031df:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  4031e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4031ed:	00 00 
  4031ef:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  4031f6:	00 
  4031f7:	31 c0                	xor    %eax,%eax
  4031f9:	48 83 3d 9f 41 00 00 	cmpq   $0x0,0x419f(%rip)        # 4073a0 <submission_record_file>
  403200:	00 
  403201:	0f 84 ab 00 00 00    	je     4032b2 <update_submission_record+0xd5>
  403207:	be 01 02 00 00       	mov    $0x201,%esi
  40320c:	bf 00 00 00 00       	mov    $0x0,%edi
  403211:	e8 f1 fb ff ff       	call   402e07 <open_submission_record>
  403216:	89 c5                	mov    %eax,%ebp
  403218:	83 f8 ff             	cmp    $0xffffffff,%eax
  40321b:	0f 84 b0 00 00 00    	je     4032d1 <update_submission_record+0xf4>
  403221:	48 8d 35 69 11 00 00 	lea    0x1169(%rip),%rsi        # 404391 <__PRETTY_FUNCTION__.0+0x71>
  403228:	89 c7                	mov    %eax,%edi
  40322a:	e8 21 f0 ff ff       	call   402250 <fdopen@plt>
  40322f:	48 89 c3             	mov    %rax,%rbx
  403232:	48 8b 0d 87 41 00 00 	mov    0x4187(%rip),%rcx        # 4073c0 <highest_solved_phase>
  403239:	48 8d 15 53 11 00 00 	lea    0x1153(%rip),%rdx        # 404393 <__PRETTY_FUNCTION__.0+0x73>
  403240:	be 01 00 00 00       	mov    $0x1,%esi
  403245:	48 89 c7             	mov    %rax,%rdi
  403248:	b8 00 00 00 00       	mov    $0x0,%eax
  40324d:	e8 9e f0 ff ff       	call   4022f0 <__fprintf_chk@plt>
  403252:	48 89 df             	mov    %rbx,%rdi
  403255:	e8 a6 ef ff ff       	call   402200 <fflush@plt>
  40325a:	85 c0                	test   %eax,%eax
  40325c:	0f 85 85 00 00 00    	jne    4032e7 <update_submission_record+0x10a>
  403262:	48 89 e6             	mov    %rsp,%rsi
  403265:	89 ef                	mov    %ebp,%edi
  403267:	e8 e4 f0 ff ff       	call   402350 <fstat@plt>
  40326c:	85 c0                	test   %eax,%eax
  40326e:	0f 85 89 00 00 00    	jne    4032fd <update_submission_record+0x120>
  403274:	f3 0f 6f 44 24 58    	movdqu 0x58(%rsp),%xmm0
  40327a:	0f 29 05 2f 41 00 00 	movaps %xmm0,0x412f(%rip)        # 4073b0 <most_recent_submission>
  403281:	48 89 df             	mov    %rbx,%rdi
  403284:	e8 57 ee ff ff       	call   4020e0 <fclose@plt>
  403289:	85 c0                	test   %eax,%eax
  40328b:	0f 85 82 00 00 00    	jne    403313 <update_submission_record+0x136>
  403291:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  403298:	00 
  403299:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4032a0:	00 00 
  4032a2:	0f 85 81 00 00 00    	jne    403329 <update_submission_record+0x14c>
  4032a8:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  4032af:	5b                   	pop    %rbx
  4032b0:	5d                   	pop    %rbp
  4032b1:	c3                   	ret    
  4032b2:	48 8d 0d 67 10 00 00 	lea    0x1067(%rip),%rcx        # 404320 <__PRETTY_FUNCTION__.0>
  4032b9:	ba 51 01 00 00       	mov    $0x151,%edx
  4032be:	48 8d 35 c2 10 00 00 	lea    0x10c2(%rip),%rsi        # 404387 <__PRETTY_FUNCTION__.0+0x67>
  4032c5:	48 8d 3d 14 12 00 00 	lea    0x1214(%rip),%rdi        # 4044e0 <__PRETTY_FUNCTION__.0+0x1c0>
  4032cc:	e8 9f ee ff ff       	call   402170 <__assert_fail@plt>
  4032d1:	48 8b 3d c8 40 00 00 	mov    0x40c8(%rip),%rdi        # 4073a0 <submission_record_file>
  4032d8:	e8 c3 ef ff ff       	call   4022a0 <perror@plt>
  4032dd:	bf 08 00 00 00       	mov    $0x8,%edi
  4032e2:	e8 e9 ef ff ff       	call   4022d0 <exit@plt>
  4032e7:	48 8d 3d aa 10 00 00 	lea    0x10aa(%rip),%rdi        # 404398 <__PRETTY_FUNCTION__.0+0x78>
  4032ee:	e8 ad ef ff ff       	call   4022a0 <perror@plt>
  4032f3:	bf 08 00 00 00       	mov    $0x8,%edi
  4032f8:	e8 d3 ef ff ff       	call   4022d0 <exit@plt>
  4032fd:	48 8d 3d 61 10 00 00 	lea    0x1061(%rip),%rdi        # 404365 <__PRETTY_FUNCTION__.0+0x45>
  403304:	e8 97 ef ff ff       	call   4022a0 <perror@plt>
  403309:	bf 08 00 00 00       	mov    $0x8,%edi
  40330e:	e8 bd ef ff ff       	call   4022d0 <exit@plt>
  403313:	48 8d 3d 7e 10 00 00 	lea    0x107e(%rip),%rdi        # 404398 <__PRETTY_FUNCTION__.0+0x78>
  40331a:	e8 81 ef ff ff       	call   4022a0 <perror@plt>
  40331f:	bf 08 00 00 00       	mov    $0x8,%edi
  403324:	e8 a7 ef ff ff       	call   4022d0 <exit@plt>
  403329:	e8 f2 ed ff ff       	call   402120 <__stack_chk_fail@plt>

000000000040332e <invalid_phase>:
  40332e:	50                   	push   %rax
  40332f:	58                   	pop    %rax
  403330:	48 83 ec 08          	sub    $0x8,%rsp
  403334:	48 89 fa             	mov    %rdi,%rdx
  403337:	48 8d 35 66 10 00 00 	lea    0x1066(%rip),%rsi        # 4043a4 <__PRETTY_FUNCTION__.0+0x84>
  40333e:	bf 01 00 00 00       	mov    $0x1,%edi
  403343:	b8 00 00 00 00       	mov    $0x0,%eax
  403348:	e8 13 ef ff ff       	call   402260 <__printf_chk@plt>
  40334d:	bf 08 00 00 00       	mov    $0x8,%edi
  403352:	e8 79 ef ff ff       	call   4022d0 <exit@plt>

0000000000403357 <string_length>:
  403357:	b8 00 00 00 00       	mov    $0x0,%eax
  40335c:	eb 08                	jmp    403366 <string_length+0xf>
  40335e:	48 83 c7 01          	add    $0x1,%rdi
  403362:	48 83 c0 01          	add    $0x1,%rax
  403366:	80 3f 00             	cmpb   $0x0,(%rdi)
  403369:	75 f3                	jne    40335e <string_length+0x7>
  40336b:	c3                   	ret    

000000000040336c <strings_not_equal>:
  40336c:	41 54                	push   %r12
  40336e:	55                   	push   %rbp
  40336f:	53                   	push   %rbx
  403370:	48 89 fb             	mov    %rdi,%rbx
  403373:	48 89 f5             	mov    %rsi,%rbp
  403376:	e8 dc ff ff ff       	call   403357 <string_length>
  40337b:	49 89 c4             	mov    %rax,%r12
  40337e:	48 89 ef             	mov    %rbp,%rdi
  403381:	e8 d1 ff ff ff       	call   403357 <string_length>
  403386:	49 39 c4             	cmp    %rax,%r12
  403389:	74 12                	je     40339d <strings_not_equal+0x31>
  40338b:	b8 01 00 00 00       	mov    $0x1,%eax
  403390:	5b                   	pop    %rbx
  403391:	5d                   	pop    %rbp
  403392:	41 5c                	pop    %r12
  403394:	c3                   	ret    
  403395:	48 83 c3 01          	add    $0x1,%rbx
  403399:	48 83 c5 01          	add    $0x1,%rbp
  40339d:	0f b6 03             	movzbl (%rbx),%eax
  4033a0:	84 c0                	test   %al,%al
  4033a2:	74 ec                	je     403390 <strings_not_equal+0x24>
  4033a4:	38 45 00             	cmp    %al,0x0(%rbp)
  4033a7:	74 ec                	je     403395 <strings_not_equal+0x29>
  4033a9:	b8 01 00 00 00       	mov    $0x1,%eax
  4033ae:	eb e0                	jmp    403390 <strings_not_equal+0x24>

00000000004033b0 <send_msg>:
  4033b0:	53                   	push   %rbx
  4033b1:	48 83 ec 20          	sub    $0x20,%rsp
  4033b5:	48 89 fb             	mov    %rdi,%rbx
  4033b8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4033bf:	00 00 
  4033c1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4033c6:	31 c0                	xor    %eax,%eax
  4033c8:	48 8d 35 e6 0f 00 00 	lea    0xfe6(%rip),%rsi        # 4043b5 <__PRETTY_FUNCTION__.0+0x95>
  4033cf:	e8 98 ff ff ff       	call   40336c <strings_not_equal>
  4033d4:	84 c0                	test   %al,%al
  4033d6:	75 4c                	jne    403424 <send_msg+0x74>
  4033d8:	48 8b 05 f1 3f 00 00 	mov    0x3ff1(%rip),%rax        # 4073d0 <num_input_strings>
  4033df:	48 39 05 da 3f 00 00 	cmp    %rax,0x3fda(%rip)        # 4073c0 <highest_solved_phase>
  4033e6:	73 26                	jae    40340e <send_msg+0x5e>
  4033e8:	48 89 05 d1 3f 00 00 	mov    %rax,0x3fd1(%rip)        # 4073c0 <highest_solved_phase>
  4033ef:	48 89 da             	mov    %rbx,%rdx
  4033f2:	48 8d 35 90 f9 ff ff 	lea    -0x670(%rip),%rsi        # 402d89 <generate_submission>
  4033f9:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 404a50 <course_and_lab>
  403400:	e8 61 06 00 00       	call   403a66 <autolab_submit_stream>
  403405:	85 c0                	test   %eax,%eax
  403407:	75 45                	jne    40344e <send_msg+0x9e>
  403409:	e8 cf fd ff ff       	call   4031dd <update_submission_record>
  40340e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  403413:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40341a:	00 00 
  40341c:	75 61                	jne    40347f <send_msg+0xcf>
  40341e:	48 83 c4 20          	add    $0x20,%rsp
  403422:	5b                   	pop    %rbx
  403423:	c3                   	ret    
  403424:	66 0f 6f 05 84 3f 00 	movdqa 0x3f84(%rip),%xmm0        # 4073b0 <most_recent_submission>
  40342b:	00 
  40342c:	0f 29 04 24          	movaps %xmm0,(%rsp)
  403430:	48 83 04 24 05       	addq   $0x5,(%rsp)
  403435:	48 89 e2             	mov    %rsp,%rdx
  403438:	b9 00 00 00 00       	mov    $0x0,%ecx
  40343d:	be 01 00 00 00       	mov    $0x1,%esi
  403442:	bf 00 00 00 00       	mov    $0x0,%edi
  403447:	e8 b4 ee ff ff       	call   402300 <clock_nanosleep@plt>
  40344c:	eb a1                	jmp    4033ef <send_msg+0x3f>
  40344e:	89 c7                	mov    %eax,%edi
  403450:	e8 db ee ff ff       	call   402330 <strerror@plt>
  403455:	48 89 c1             	mov    %rax,%rcx
  403458:	48 8d 15 a1 10 00 00 	lea    0x10a1(%rip),%rdx        # 404500 <__PRETTY_FUNCTION__.0+0x1e0>
  40345f:	be 01 00 00 00       	mov    $0x1,%esi
  403464:	48 8b 3d 15 3f 00 00 	mov    0x3f15(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  40346b:	b8 00 00 00 00       	mov    $0x0,%eax
  403470:	e8 7b ee ff ff       	call   4022f0 <__fprintf_chk@plt>
  403475:	bf 01 00 00 00       	mov    $0x1,%edi
  40347a:	e8 51 ee ff ff       	call   4022d0 <exit@plt>
  40347f:	e8 9c ec ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000403484 <initialize_bomb>:
  403484:	41 54                	push   %r12
  403486:	55                   	push   %rbp
  403487:	53                   	push   %rbx
  403488:	48 81 ec 10 04 00 00 	sub    $0x410,%rsp
  40348f:	41 89 f4             	mov    %esi,%r12d
  403492:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403499:	00 00 
  40349b:	48 89 84 24 08 04 00 	mov    %rax,0x408(%rsp)
  4034a2:	00 
  4034a3:	31 c0                	xor    %eax,%eax
  4034a5:	48 89 3d 6c 3f 00 00 	mov    %rdi,0x3f6c(%rip)        # 407418 <infile>
  4034ac:	48 8d 3d 6d 3d 00 00 	lea    0x3d6d(%rip),%rdi        # 407220 <sval>
  4034b3:	e8 3a f7 ff ff       	call   402bf2 <fs>
  4034b8:	48 8d 3d 41 3d 00 00 	lea    0x3d41(%rip),%rdi        # 407200 <tval>
  4034bf:	e8 2e f7 ff ff       	call   402bf2 <fs>
  4034c4:	48 8d 3d be 3e 00 00 	lea    0x3ebe(%rip),%rdi        # 407389 <wval>
  4034cb:	e8 22 f7 ff ff       	call   402bf2 <fs>
  4034d0:	48 8d 1d c5 f7 ff ff 	lea    -0x83b(%rip),%rbx        # 402c9c <so_you_think>
  4034d7:	48 89 de             	mov    %rbx,%rsi
  4034da:	bf 02 00 00 00       	mov    $0x2,%edi
  4034df:	e8 fc ec ff ff       	call   4021e0 <signal@plt>
  4034e4:	48 89 de             	mov    %rbx,%rsi
  4034e7:	bf 03 00 00 00       	mov    $0x3,%edi
  4034ec:	e8 ef ec ff ff       	call   4021e0 <signal@plt>
  4034f1:	48 89 e7             	mov    %rsp,%rdi
  4034f4:	be 01 04 00 00       	mov    $0x401,%esi
  4034f9:	e8 c2 ed ff ff       	call   4022c0 <gethostname@plt>
  4034fe:	85 c0                	test   %eax,%eax
  403500:	75 28                	jne    40352a <initialize_bomb+0xa6>
  403502:	89 c5                	mov    %eax,%ebp
  403504:	89 c3                	mov    %eax,%ebx
  403506:	48 63 c3             	movslq %ebx,%rax
  403509:	48 8d 15 50 38 00 00 	lea    0x3850(%rip),%rdx        # 406d60 <host_table>
  403510:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  403514:	48 85 ff             	test   %rdi,%rdi
  403517:	74 2c                	je     403545 <initialize_bomb+0xc1>
  403519:	48 89 e6             	mov    %rsp,%rsi
  40351c:	e8 2f eb ff ff       	call   402050 <strcasecmp@plt>
  403521:	85 c0                	test   %eax,%eax
  403523:	74 1b                	je     403540 <initialize_bomb+0xbc>
  403525:	83 c3 01             	add    $0x1,%ebx
  403528:	eb dc                	jmp    403506 <initialize_bomb+0x82>
  40352a:	48 8d 3d 8b 0e 00 00 	lea    0xe8b(%rip),%rdi        # 4043bc <__PRETTY_FUNCTION__.0+0x9c>
  403531:	e8 6a ed ff ff       	call   4022a0 <perror@plt>
  403536:	bf 08 00 00 00       	mov    $0x8,%edi
  40353b:	e8 90 ed ff ff       	call   4022d0 <exit@plt>
  403540:	bd 01 00 00 00       	mov    $0x1,%ebp
  403545:	85 ed                	test   %ebp,%ebp
  403547:	0f 84 88 00 00 00    	je     4035d5 <initialize_bomb+0x151>
  40354d:	e8 de eb ff ff       	call   402130 <getuid@plt>
  403552:	89 c7                	mov    %eax,%edi
  403554:	e8 a7 eb ff ff       	call   402100 <getpwuid@plt>
  403559:	48 89 c3             	mov    %rax,%rbx
  40355c:	48 85 c0             	test   %rax,%rax
  40355f:	0f 84 9a 00 00 00    	je     4035ff <initialize_bomb+0x17b>
  403565:	48 8b 38             	mov    (%rax),%rdi
  403568:	48 85 ff             	test   %rdi,%rdi
  40356b:	0f 84 8e 00 00 00    	je     4035ff <initialize_bomb+0x17b>
  403571:	80 3f 00             	cmpb   $0x0,(%rdi)
  403574:	0f 84 85 00 00 00    	je     4035ff <initialize_bomb+0x17b>
  40357a:	48 8b 40 20          	mov    0x20(%rax),%rax
  40357e:	48 85 c0             	test   %rax,%rax
  403581:	74 7c                	je     4035ff <initialize_bomb+0x17b>
  403583:	80 38 00             	cmpb   $0x0,(%rax)
  403586:	74 77                	je     4035ff <initialize_bomb+0x17b>
  403588:	e8 93 ed ff ff       	call   402320 <strdup@plt>
  40358d:	48 89 05 34 3e 00 00 	mov    %rax,0x3e34(%rip)        # 4073c8 <student_id>
  403594:	48 8d 3d 36 0e 00 00 	lea    0xe36(%rip),%rdi        # 4043d1 <__PRETTY_FUNCTION__.0+0xb1>
  40359b:	e8 90 ea ff ff       	call   402030 <getenv@plt>
  4035a0:	48 89 c5             	mov    %rax,%rbp
  4035a3:	48 85 c0             	test   %rax,%rax
  4035a6:	74 6d                	je     403615 <initialize_bomb+0x191>
  4035a8:	41 83 fc 01          	cmp    $0x1,%r12d
  4035ac:	74 6d                	je     40361b <initialize_bomb+0x197>
  4035ae:	48 89 ef             	mov    %rbp,%rdi
  4035b1:	e8 a3 f9 ff ff       	call   402f59 <read_submission_record>
  4035b6:	48 8b 84 24 08 04 00 	mov    0x408(%rsp),%rax
  4035bd:	00 
  4035be:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4035c5:	00 00 
  4035c7:	75 75                	jne    40363e <initialize_bomb+0x1ba>
  4035c9:	48 81 c4 10 04 00 00 	add    $0x410,%rsp
  4035d0:	5b                   	pop    %rbx
  4035d1:	5d                   	pop    %rbp
  4035d2:	41 5c                	pop    %r12
  4035d4:	c3                   	ret    
  4035d5:	48 89 e1             	mov    %rsp,%rcx
  4035d8:	48 8d 15 49 0f 00 00 	lea    0xf49(%rip),%rdx        # 404528 <__PRETTY_FUNCTION__.0+0x208>
  4035df:	be 01 00 00 00       	mov    $0x1,%esi
  4035e4:	48 8b 3d 95 3d 00 00 	mov    0x3d95(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  4035eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f0:	e8 fb ec ff ff       	call   4022f0 <__fprintf_chk@plt>
  4035f5:	bf 08 00 00 00       	mov    $0x8,%edi
  4035fa:	e8 d1 ec ff ff       	call   4022d0 <exit@plt>
  4035ff:	48 8d 3d c2 0d 00 00 	lea    0xdc2(%rip),%rdi        # 4043c8 <__PRETTY_FUNCTION__.0+0xa8>
  403606:	e8 95 ec ff ff       	call   4022a0 <perror@plt>
  40360b:	bf 08 00 00 00       	mov    $0x8,%edi
  403610:	e8 bb ec ff ff       	call   4022d0 <exit@plt>
  403615:	48 8b 6b 20          	mov    0x20(%rbx),%rbp
  403619:	eb 8d                	jmp    4035a8 <initialize_bomb+0x124>
  40361b:	e8 1b f6 ff ff       	call   402c3b <init_submission_record_internal>
  403620:	be 00 00 00 00       	mov    $0x0,%esi
  403625:	48 89 ef             	mov    %rbp,%rdi
  403628:	e8 da f7 ff ff       	call   402e07 <open_submission_record>
  40362d:	83 f8 ff             	cmp    $0xffffffff,%eax
  403630:	74 84                	je     4035b6 <initialize_bomb+0x132>
  403632:	89 c7                	mov    %eax,%edi
  403634:	e8 47 eb ff ff       	call   402180 <close@plt>
  403639:	e9 78 ff ff ff       	jmp    4035b6 <initialize_bomb+0x132>
  40363e:	e8 dd ea ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000403643 <read_line>:
  403643:	48 83 ec 08          	sub    $0x8,%rsp
  403647:	48 83 3d 81 3d 00 00 	cmpq   $0x6,0x3d81(%rip)        # 4073d0 <num_input_strings>
  40364e:	06 
  40364f:	77 23                	ja     403674 <read_line+0x31>
  403651:	e8 b8 fa ff ff       	call   40310e <skip>
  403656:	48 85 c0             	test   %rax,%rax
  403659:	75 4a                	jne    4036a5 <read_line+0x62>
  40365b:	48 8b 05 de 3c 00 00 	mov    0x3cde(%rip),%rax        # 407340 <stdin@GLIBC_2.2.5>
  403662:	48 39 05 af 3d 00 00 	cmp    %rax,0x3daf(%rip)        # 407418 <infile>
  403669:	74 30                	je     40369b <read_line+0x58>
  40366b:	48 89 05 a6 3d 00 00 	mov    %rax,0x3da6(%rip)        # 407418 <infile>
  403672:	eb dd                	jmp    403651 <read_line+0xe>
  403674:	48 8b 0d 05 3d 00 00 	mov    0x3d05(%rip),%rcx        # 407380 <stderr@GLIBC_2.2.5>
  40367b:	ba 45 00 00 00       	mov    $0x45,%edx
  403680:	be 01 00 00 00       	mov    $0x1,%esi
  403685:	48 8d 3d f4 0e 00 00 	lea    0xef4(%rip),%rdi        # 404580 <__PRETTY_FUNCTION__.0+0x260>
  40368c:	e8 4f ec ff ff       	call   4022e0 <fwrite@plt>
  403691:	bf 00 00 00 00       	mov    $0x0,%edi
  403696:	e8 35 ec ff ff       	call   4022d0 <exit@plt>
  40369b:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4036a0:	e8 f7 f5 ff ff       	call   402c9c <so_you_think>
  4036a5:	48 8b 15 24 3d 00 00 	mov    0x3d24(%rip),%rdx        # 4073d0 <num_input_strings>
  4036ac:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  4036b0:	48 89 0d 19 3d 00 00 	mov    %rcx,0x3d19(%rip)        # 4073d0 <num_input_strings>
  4036b7:	48 8d 0d 22 3d 00 00 	lea    0x3d22(%rip),%rcx        # 4073e0 <input_strings>
  4036be:	48 89 04 d1          	mov    %rax,(%rcx,%rdx,8)
  4036c2:	48 83 c4 08          	add    $0x8,%rsp
  4036c6:	c3                   	ret    

00000000004036c7 <explode_bomb>:
  4036c7:	50                   	push   %rax
  4036c8:	58                   	pop    %rax
  4036c9:	48 83 ec 08          	sub    $0x8,%rsp
  4036cd:	48 8d 3d f4 0e 00 00 	lea    0xef4(%rip),%rdi        # 4045c8 <__PRETTY_FUNCTION__.0+0x2a8>
  4036d4:	e8 e7 e9 ff ff       	call   4020c0 <puts@plt>
  4036d9:	48 8d 3d f6 0c 00 00 	lea    0xcf6(%rip),%rdi        # 4043d6 <__PRETTY_FUNCTION__.0+0xb6>
  4036e0:	e8 cb fc ff ff       	call   4033b0 <send_msg>
  4036e5:	48 8d 3d fc 0e 00 00 	lea    0xefc(%rip),%rdi        # 4045e8 <__PRETTY_FUNCTION__.0+0x2c8>
  4036ec:	e8 cf e9 ff ff       	call   4020c0 <puts@plt>
  4036f1:	bf 08 00 00 00       	mov    $0x8,%edi
  4036f6:	e8 d5 eb ff ff       	call   4022d0 <exit@plt>

00000000004036fb <read_six_numbers>:
  4036fb:	48 83 ec 08          	sub    $0x8,%rsp
  4036ff:	48 89 f2             	mov    %rsi,%rdx
  403702:	48 8d 4e 08          	lea    0x8(%rsi),%rcx
  403706:	48 8d 46 28          	lea    0x28(%rsi),%rax
  40370a:	50                   	push   %rax
  40370b:	48 8d 46 20          	lea    0x20(%rsi),%rax
  40370f:	50                   	push   %rax
  403710:	4c 8d 4e 18          	lea    0x18(%rsi),%r9
  403714:	4c 8d 46 10          	lea    0x10(%rsi),%r8
  403718:	48 8d 35 bf 0c 00 00 	lea    0xcbf(%rip),%rsi        # 4043de <__PRETTY_FUNCTION__.0+0xbe>
  40371f:	b8 00 00 00 00       	mov    $0x0,%eax
  403724:	e8 e7 ea ff ff       	call   402210 <__isoc99_sscanf@plt>
  403729:	48 83 c4 10          	add    $0x10,%rsp
  40372d:	83 f8 05             	cmp    $0x5,%eax
  403730:	7e 05                	jle    403737 <read_six_numbers+0x3c>
  403732:	48 83 c4 08          	add    $0x8,%rsp
  403736:	c3                   	ret    
  403737:	e8 8b ff ff ff       	call   4036c7 <explode_bomb>

000000000040373c <phase_defused>:
  40373c:	55                   	push   %rbp
  40373d:	48 89 e5             	mov    %rsp,%rbp
  403740:	41 55                	push   %r13
  403742:	41 54                	push   %r12
  403744:	53                   	push   %rbx
  403745:	48 83 ec 28          	sub    $0x28,%rsp
  403749:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403750:	00 00 
  403752:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  403756:	31 c0                	xor    %eax,%eax
  403758:	48 89 e3             	mov    %rsp,%rbx
  40375b:	48 8d 3d 53 0c 00 00 	lea    0xc53(%rip),%rdi        # 4043b5 <__PRETTY_FUNCTION__.0+0x95>
  403762:	e8 49 fc ff ff       	call   4033b0 <send_msg>
  403767:	48 83 3d 61 3c 00 00 	cmpq   $0x5,0x3c61(%rip)        # 4073d0 <num_input_strings>
  40376e:	05 
  40376f:	77 21                	ja     403792 <phase_defused+0x56>
  403771:	48 89 dc             	mov    %rbx,%rsp
  403774:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  403778:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40377f:	00 00 
  403781:	0f 85 f5 00 00 00    	jne    40387c <phase_defused+0x140>
  403787:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40378b:	5b                   	pop    %rbx
  40378c:	41 5c                	pop    %r12
  40378e:	41 5d                	pop    %r13
  403790:	5d                   	pop    %rbp
  403791:	c3                   	ret    
  403792:	4c 8b 25 5f 3c 00 00 	mov    0x3c5f(%rip),%r12        # 4073f8 <input_strings+0x18>
  403799:	4c 89 e7             	mov    %r12,%rdi
  40379c:	e8 6f e9 ff ff       	call   402110 <strlen@plt>
  4037a1:	48 83 c0 10          	add    $0x10,%rax
  4037a5:	48 89 c1             	mov    %rax,%rcx
  4037a8:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4037ac:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4037b2:	48 89 e2             	mov    %rsp,%rdx
  4037b5:	48 29 c2             	sub    %rax,%rdx
  4037b8:	48 39 d4             	cmp    %rdx,%rsp
  4037bb:	74 12                	je     4037cf <phase_defused+0x93>
  4037bd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4037c4:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4037cb:	00 00 
  4037cd:	eb e9                	jmp    4037b8 <phase_defused+0x7c>
  4037cf:	48 89 c8             	mov    %rcx,%rax
  4037d2:	25 ff 0f 00 00       	and    $0xfff,%eax
  4037d7:	48 29 c4             	sub    %rax,%rsp
  4037da:	48 85 c0             	test   %rax,%rax
  4037dd:	74 06                	je     4037e5 <phase_defused+0xa9>
  4037df:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4037e5:	49 89 e5             	mov    %rsp,%r13
  4037e8:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
  4037ec:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  4037f0:	4c 8d 4d d0          	lea    -0x30(%rbp),%r9
  4037f4:	49 89 e0             	mov    %rsp,%r8
  4037f7:	48 8d 35 f8 0b 00 00 	lea    0xbf8(%rip),%rsi        # 4043f6 <__PRETTY_FUNCTION__.0+0xd6>
  4037fe:	4c 89 e7             	mov    %r12,%rdi
  403801:	b8 00 00 00 00       	mov    $0x0,%eax
  403806:	e8 05 ea ff ff       	call   402210 <__isoc99_sscanf@plt>
  40380b:	83 f8 04             	cmp    $0x4,%eax
  40380e:	74 20                	je     403830 <phase_defused+0xf4>
  403810:	48 8d 3d 81 0e 00 00 	lea    0xe81(%rip),%rdi        # 404698 <__PRETTY_FUNCTION__.0+0x378>
  403817:	e8 a4 e8 ff ff       	call   4020c0 <puts@plt>
  40381c:	48 8d 3d a5 0e 00 00 	lea    0xea5(%rip),%rdi        # 4046c8 <__PRETTY_FUNCTION__.0+0x3a8>
  403823:	e8 98 e8 ff ff       	call   4020c0 <puts@plt>
  403828:	48 89 dc             	mov    %rbx,%rsp
  40382b:	e9 44 ff ff ff       	jmp    403774 <phase_defused+0x38>
  403830:	4c 89 ef             	mov    %r13,%rdi
  403833:	e8 1f fb ff ff       	call   403357 <string_length>
  403838:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  40383c:	75 d2                	jne    403810 <phase_defused+0xd4>
  40383e:	48 8d 35 bb 39 00 00 	lea    0x39bb(%rip),%rsi        # 407200 <tval>
  403845:	4c 89 ef             	mov    %r13,%rdi
  403848:	e8 1f fb ff ff       	call   40336c <strings_not_equal>
  40384d:	84 c0                	test   %al,%al
  40384f:	75 bf                	jne    403810 <phase_defused+0xd4>
  403851:	48 8d 3d b8 0d 00 00 	lea    0xdb8(%rip),%rdi        # 404610 <__PRETTY_FUNCTION__.0+0x2f0>
  403858:	e8 63 e8 ff ff       	call   4020c0 <puts@plt>
  40385d:	e8 ee f2 ff ff       	call   402b50 <secret_phase>
  403862:	48 8d 3d 07 0e 00 00 	lea    0xe07(%rip),%rdi        # 404670 <__PRETTY_FUNCTION__.0+0x350>
  403869:	e8 52 e8 ff ff       	call   4020c0 <puts@plt>
  40386e:	48 8d 3d 40 0b 00 00 	lea    0xb40(%rip),%rdi        # 4043b5 <__PRETTY_FUNCTION__.0+0x95>
  403875:	e8 36 fb ff ff       	call   4033b0 <send_msg>
  40387a:	eb 94                	jmp    403810 <phase_defused+0xd4>
  40387c:	e8 9f e8 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000403881 <autolab_submit_file>:
  403881:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  403888:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40388f:	00 00 
  403891:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  403898:	00 
  403899:	31 c0                	xor    %eax,%eax
  40389b:	48 8d 05 2d 0f 00 00 	lea    0xf2d(%rip),%rax        # 4047cf <__PRETTY_FUNCTION__.0+0x4af>
  4038a2:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4038a7:	48 8d 05 29 0f 00 00 	lea    0xf29(%rip),%rax        # 4047d7 <__PRETTY_FUNCTION__.0+0x4b7>
  4038ae:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4038b3:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  4038b8:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  4038bd:	48 8d 05 1a 0f 00 00 	lea    0xf1a(%rip),%rax        # 4047de <__PRETTY_FUNCTION__.0+0x4be>
  4038c4:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4038c9:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4038d0:	00 00 
  4038d2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4038d7:	e8 84 e7 ff ff       	call   402060 <posix_spawn_file_actions_init@plt>
  4038dc:	85 c0                	test   %eax,%eax
  4038de:	74 1f                	je     4038ff <autolab_submit_file+0x7e>
  4038e0:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
  4038e7:	00 
  4038e8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4038ef:	00 00 
  4038f1:	0f 85 6a 01 00 00    	jne    403a61 <autolab_submit_file+0x1e0>
  4038f7:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  4038fe:	c3                   	ret    
  4038ff:	48 8d 3d db 0e 00 00 	lea    0xedb(%rip),%rdi        # 4047e1 <__PRETTY_FUNCTION__.0+0x4c1>
  403906:	e8 25 e7 ff ff       	call   402030 <getenv@plt>
  40390b:	48 85 c0             	test   %rax,%rax
  40390e:	0f 84 95 00 00 00    	je     4039a9 <autolab_submit_file+0x128>
  403914:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  403919:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  40391e:	4c 8b 0d 3b 3a 00 00 	mov    0x3a3b(%rip),%r9        # 407360 <__environ@GLIBC_2.2.5>
  403925:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  40392a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40392f:	48 8d 35 99 0e 00 00 	lea    0xe99(%rip),%rsi        # 4047cf <__PRETTY_FUNCTION__.0+0x4af>
  403936:	e8 f5 e8 ff ff       	call   402230 <posix_spawnp@plt>
  40393b:	85 c0                	test   %eax,%eax
  40393d:	75 a1                	jne    4038e0 <autolab_submit_file+0x5f>
  40393f:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403944:	e8 a7 e7 ff ff       	call   4020f0 <posix_spawn_file_actions_destroy@plt>
  403949:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40394e:	ba 00 00 00 00       	mov    $0x0,%edx
  403953:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  403957:	e8 14 e9 ff ff       	call   402270 <waitpid@plt>
  40395c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40395f:	0f 84 8e 00 00 00    	je     4039f3 <autolab_submit_file+0x172>
  403965:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  403969:	89 cf                	mov    %ecx,%edi
  40396b:	83 e7 7f             	and    $0x7f,%edi
  40396e:	0f 85 8b 00 00 00    	jne    4039ff <autolab_submit_file+0x17e>
  403974:	0f b6 c5             	movzbl %ch,%eax
  403977:	f6 c5 ff             	test   $0xff,%ch
  40397a:	0f 84 60 ff ff ff    	je     4038e0 <autolab_submit_file+0x5f>
  403980:	89 c1                	mov    %eax,%ecx
  403982:	48 8d 15 72 0e 00 00 	lea    0xe72(%rip),%rdx        # 4047fb <__PRETTY_FUNCTION__.0+0x4db>
  403989:	be 01 00 00 00       	mov    $0x1,%esi
  40398e:	48 8b 3d eb 39 00 00 	mov    0x39eb(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  403995:	b8 00 00 00 00       	mov    $0x0,%eax
  40399a:	e8 51 e9 ff ff       	call   4022f0 <__fprintf_chk@plt>
  40399f:	b8 46 00 00 00       	mov    $0x46,%eax
  4039a4:	e9 37 ff ff ff       	jmp    4038e0 <autolab_submit_file+0x5f>
  4039a9:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4039ae:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4039b4:	b9 01 00 00 00       	mov    $0x1,%ecx
  4039b9:	48 8d 15 31 0e 00 00 	lea    0xe31(%rip),%rdx        # 4047f1 <__PRETTY_FUNCTION__.0+0x4d1>
  4039c0:	be 01 00 00 00       	mov    $0x1,%esi
  4039c5:	e8 56 e8 ff ff       	call   402220 <posix_spawn_file_actions_addopen@plt>
  4039ca:	85 c0                	test   %eax,%eax
  4039cc:	0f 85 0e ff ff ff    	jne    4038e0 <autolab_submit_file+0x5f>
  4039d2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4039d7:	ba 02 00 00 00       	mov    $0x2,%edx
  4039dc:	be 01 00 00 00       	mov    $0x1,%esi
  4039e1:	e8 2a e9 ff ff       	call   402310 <posix_spawn_file_actions_adddup2@plt>
  4039e6:	85 c0                	test   %eax,%eax
  4039e8:	0f 84 26 ff ff ff    	je     403914 <autolab_submit_file+0x93>
  4039ee:	e9 ed fe ff ff       	jmp    4038e0 <autolab_submit_file+0x5f>
  4039f3:	e8 88 e6 ff ff       	call   402080 <__errno_location@plt>
  4039f8:	8b 00                	mov    (%rax),%eax
  4039fa:	e9 e1 fe ff ff       	jmp    4038e0 <autolab_submit_file+0x5f>
  4039ff:	89 c8                	mov    %ecx,%eax
  403a01:	83 e0 7f             	and    $0x7f,%eax
  403a04:	83 c0 01             	add    $0x1,%eax
  403a07:	3c 01                	cmp    $0x1,%al
  403a09:	7e 2f                	jle    403a3a <autolab_submit_file+0x1b9>
  403a0b:	e8 30 e8 ff ff       	call   402240 <strsignal@plt>
  403a10:	48 89 c1             	mov    %rax,%rcx
  403a13:	48 8d 15 fa 0d 00 00 	lea    0xdfa(%rip),%rdx        # 404814 <__PRETTY_FUNCTION__.0+0x4f4>
  403a1a:	be 01 00 00 00       	mov    $0x1,%esi
  403a1f:	48 8b 3d 5a 39 00 00 	mov    0x395a(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  403a26:	b8 00 00 00 00       	mov    $0x0,%eax
  403a2b:	e8 c0 e8 ff ff       	call   4022f0 <__fprintf_chk@plt>
  403a30:	b8 46 00 00 00       	mov    $0x46,%eax
  403a35:	e9 a6 fe ff ff       	jmp    4038e0 <autolab_submit_file+0x5f>
  403a3a:	48 8d 15 e7 0d 00 00 	lea    0xde7(%rip),%rdx        # 404828 <__PRETTY_FUNCTION__.0+0x508>
  403a41:	be 01 00 00 00       	mov    $0x1,%esi
  403a46:	48 8b 3d 33 39 00 00 	mov    0x3933(%rip),%rdi        # 407380 <stderr@GLIBC_2.2.5>
  403a4d:	b8 00 00 00 00       	mov    $0x0,%eax
  403a52:	e8 99 e8 ff ff       	call   4022f0 <__fprintf_chk@plt>
  403a57:	b8 46 00 00 00       	mov    $0x46,%eax
  403a5c:	e9 7f fe ff ff       	jmp    4038e0 <autolab_submit_file+0x5f>
  403a61:	e8 ba e6 ff ff       	call   402120 <__stack_chk_fail@plt>

0000000000403a66 <autolab_submit_stream>:
  403a66:	41 56                	push   %r14
  403a68:	41 55                	push   %r13
  403a6a:	41 54                	push   %r12
  403a6c:	55                   	push   %rbp
  403a6d:	53                   	push   %rbx
  403a6e:	48 83 ec 20          	sub    $0x20,%rsp
  403a72:	48 89 fd             	mov    %rdi,%rbp
  403a75:	48 89 f3             	mov    %rsi,%rbx
  403a78:	49 89 d5             	mov    %rdx,%r13
  403a7b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403a82:	00 00 
  403a84:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403a89:	31 c0                	xor    %eax,%eax
  403a8b:	48 b8 2e 61 73 75 62 	movabs $0x585858627573612e,%rax
  403a92:	58 58 58 
  403a95:	48 89 44 24 0c       	mov    %rax,0xc(%rsp)
  403a9a:	c7 44 24 14 58 58 58 	movl   $0x585858,0x14(%rsp)
  403aa1:	00 
  403aa2:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  403aa7:	be 00 00 08 00       	mov    $0x80000,%esi
  403aac:	e8 af e6 ff ff       	call   402160 <mkostemp@plt>
  403ab1:	83 f8 ff             	cmp    $0xffffffff,%eax
  403ab4:	74 4f                	je     403b05 <autolab_submit_stream+0x9f>
  403ab6:	41 89 c6             	mov    %eax,%r14d
  403ab9:	48 8d 35 84 0d 00 00 	lea    0xd84(%rip),%rsi        # 404844 <__PRETTY_FUNCTION__.0+0x524>
  403ac0:	89 c7                	mov    %eax,%edi
  403ac2:	e8 89 e7 ff ff       	call   402250 <fdopen@plt>
  403ac7:	49 89 c4             	mov    %rax,%r12
  403aca:	48 85 c0             	test   %rax,%rax
  403acd:	74 5c                	je     403b2b <autolab_submit_stream+0xc5>
  403acf:	4c 89 ee             	mov    %r13,%rsi
  403ad2:	48 89 c7             	mov    %rax,%rdi
  403ad5:	ff d3                	call   *%rbx
  403ad7:	89 c3                	mov    %eax,%ebx
  403ad9:	85 c0                	test   %eax,%eax
  403adb:	75 69                	jne    403b46 <autolab_submit_stream+0xe0>
  403add:	4c 89 e7             	mov    %r12,%rdi
  403ae0:	e8 fb e5 ff ff       	call   4020e0 <fclose@plt>
  403ae5:	85 c0                	test   %eax,%eax
  403ae7:	75 71                	jne    403b5a <autolab_submit_stream+0xf4>
  403ae9:	4c 8d 64 24 0c       	lea    0xc(%rsp),%r12
  403aee:	4c 89 e6             	mov    %r12,%rsi
  403af1:	48 89 ef             	mov    %rbp,%rdi
  403af4:	e8 88 fd ff ff       	call   403881 <autolab_submit_file>
  403af9:	89 c3                	mov    %eax,%ebx
  403afb:	4c 89 e7             	mov    %r12,%rdi
  403afe:	e8 8d e5 ff ff       	call   402090 <unlink@plt>
  403b03:	eb 07                	jmp    403b0c <autolab_submit_stream+0xa6>
  403b05:	e8 76 e5 ff ff       	call   402080 <__errno_location@plt>
  403b0a:	8b 18                	mov    (%rax),%ebx
  403b0c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  403b11:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  403b18:	00 00 
  403b1a:	75 51                	jne    403b6d <autolab_submit_stream+0x107>
  403b1c:	89 d8                	mov    %ebx,%eax
  403b1e:	48 83 c4 20          	add    $0x20,%rsp
  403b22:	5b                   	pop    %rbx
  403b23:	5d                   	pop    %rbp
  403b24:	41 5c                	pop    %r12
  403b26:	41 5d                	pop    %r13
  403b28:	41 5e                	pop    %r14
  403b2a:	c3                   	ret    
  403b2b:	e8 50 e5 ff ff       	call   402080 <__errno_location@plt>
  403b30:	8b 18                	mov    (%rax),%ebx
  403b32:	44 89 f7             	mov    %r14d,%edi
  403b35:	e8 46 e6 ff ff       	call   402180 <close@plt>
  403b3a:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  403b3f:	e8 4c e5 ff ff       	call   402090 <unlink@plt>
  403b44:	eb c6                	jmp    403b0c <autolab_submit_stream+0xa6>
  403b46:	4c 89 e7             	mov    %r12,%rdi
  403b49:	e8 92 e5 ff ff       	call   4020e0 <fclose@plt>
  403b4e:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  403b53:	e8 38 e5 ff ff       	call   402090 <unlink@plt>
  403b58:	eb b2                	jmp    403b0c <autolab_submit_stream+0xa6>
  403b5a:	e8 21 e5 ff ff       	call   402080 <__errno_location@plt>
  403b5f:	8b 18                	mov    (%rax),%ebx
  403b61:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  403b66:	e8 25 e5 ff ff       	call   402090 <unlink@plt>
  403b6b:	eb 9f                	jmp    403b0c <autolab_submit_stream+0xa6>
  403b6d:	e8 ae e5 ff ff       	call   402120 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000403b74 <_fini>:
  403b74:	f3 0f 1e fa          	endbr64 
  403b78:	48 83 ec 08          	sub    $0x8,%rsp
  403b7c:	48 83 c4 08          	add    $0x8,%rsp
  403b80:	c3                   	ret    
