
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	3f813103          	ld	sp,1016(sp) # 8000a3f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	281050ef          	jal	ra,80005a9c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    #push all registers to stack
    addi sp, sp, -256 #stack pointer points to the end of the allocated memory block but begins at the front
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	791000ef          	jal	ra,80002014 <_ZN5Riscv20handleSupervisorTrapEv>

    #push all registers back
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:

.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:

    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)
    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
// Created by os on 5/8/24.
//

#include "../h/syscall_c.h"

void *mem_alloc(size_t size) {
    80001144:	fe010113          	addi	sp,sp,-32
    80001148:	00813c23          	sd	s0,24(sp)
    8000114c:	02010413          	addi	s0,sp,32

    uint64 volatile code = 0x01;
    80001150:	00100793          	li	a5,1
    80001154:	fef43423          	sd	a5,-24(s0)

    if(size < 0) return nullptr;

    uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
    80001158:	01050793          	addi	a5,a0,16
    8000115c:	0067d793          	srli	a5,a5,0x6
    80001160:	fef43023          	sd	a5,-32(s0)
    if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;
    80001164:	ff000793          	li	a5,-16
    80001168:	00f50863          	beq	a0,a5,80001178 <_Z9mem_allocm+0x34>
    8000116c:	fe043783          	ld	a5,-32(s0)
    80001170:	00178793          	addi	a5,a5,1
    80001174:	fef43023          	sd	a5,-32(s0)


    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001178:	fe843783          	ld	a5,-24(s0)
    8000117c:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (num_of_blocks));
    80001180:	fe043783          	ld	a5,-32(s0)
    80001184:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    80001188:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000118c:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001190:	01813403          	ld	s0,24(sp)
    80001194:	02010113          	addi	sp,sp,32
    80001198:	00008067          	ret

000000008000119c <_Z8mem_freePv>:

int mem_free(void* addr) {
    8000119c:	fe010113          	addi	sp,sp,-32
    800011a0:	00813c23          	sd	s0,24(sp)
    800011a4:	02010413          	addi	s0,sp,32

    uint64 volatile code = 0x02;
    800011a8:	00200793          	li	a5,2
    800011ac:	fef43423          	sd	a5,-24(s0)
    uint64 volatile volatile_addr = (uint64)addr;
    800011b0:	fea43023          	sd	a0,-32(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800011b4:	fe843783          	ld	a5,-24(s0)
    800011b8:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_addr));
    800011bc:	fe043783          	ld	a5,-32(s0)
    800011c0:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    800011c4:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011c8:	00050513          	mv	a0,a0
    return ret;
}
    800011cc:	0005051b          	sext.w	a0,a0
    800011d0:	01813403          	ld	s0,24(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret

00000000800011dc <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800011dc:	fc010113          	addi	sp,sp,-64
    800011e0:	02113c23          	sd	ra,56(sp)
    800011e4:	02813823          	sd	s0,48(sp)
    800011e8:	02913423          	sd	s1,40(sp)
    800011ec:	03213023          	sd	s2,32(sp)
    800011f0:	01313c23          	sd	s3,24(sp)
    800011f4:	04010413          	addi	s0,sp,64
    800011f8:	00050993          	mv	s3,a0
    800011fc:	00058913          	mv	s2,a1
    80001200:	00060493          	mv	s1,a2
    void* volatile stack_space = mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001204:	00008537          	lui	a0,0x8
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	f3c080e7          	jalr	-196(ra) # 80001144 <_Z9mem_allocm>
    80001210:	fca43423          	sd	a0,-56(s0)

    uint64 volatile code = 0x11;
    80001214:	01100793          	li	a5,17
    80001218:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    8000121c:	fc043783          	ld	a5,-64(s0)
    80001220:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (handle));
    80001224:	00098593          	mv	a1,s3
    __asm__ volatile("mv a2, %0" :  : "r" (start_routine));
    80001228:	00090613          	mv	a2,s2
    __asm__ volatile("mv a3, %0" :  : "r" (arg));
    8000122c:	00048693          	mv	a3,s1
    __asm__ volatile("mv a4, %0" :  : "r" ((uint64)stack_space));
    80001230:	fc843783          	ld	a5,-56(s0)
    80001234:	00078713          	mv	a4,a5

    __asm__ volatile("ecall");
    80001238:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000123c:	00050513          	mv	a0,a0
    return ret;
}
    80001240:	0005051b          	sext.w	a0,a0
    80001244:	03813083          	ld	ra,56(sp)
    80001248:	03013403          	ld	s0,48(sp)
    8000124c:	02813483          	ld	s1,40(sp)
    80001250:	02013903          	ld	s2,32(sp)
    80001254:	01813983          	ld	s3,24(sp)
    80001258:	04010113          	addi	sp,sp,64
    8000125c:	00008067          	ret

0000000080001260 <_Z11thread_exitv>:

int thread_exit (){
    80001260:	fe010113          	addi	sp,sp,-32
    80001264:	00813c23          	sd	s0,24(sp)
    80001268:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x12;
    8000126c:	01200793          	li	a5,18
    80001270:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001274:	fe843783          	ld	a5,-24(s0)
    80001278:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000127c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001280:	00050513          	mv	a0,a0
    return ret;
}
    80001284:	0005051b          	sext.w	a0,a0
    80001288:	01813403          	ld	s0,24(sp)
    8000128c:	02010113          	addi	sp,sp,32
    80001290:	00008067          	ret

0000000080001294 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001294:	fe010113          	addi	sp,sp,-32
    80001298:	00813c23          	sd	s0,24(sp)
    8000129c:	02010413          	addi	s0,sp,32

    uint64 volatile code = 0x13;
    800012a0:	01300793          	li	a5,19
    800012a4:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800012a8:	fe843783          	ld	a5,-24(s0)
    800012ac:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012b0:	00000073          	ecall
}
    800012b4:	01813403          	ld	s0,24(sp)
    800012b8:	02010113          	addi	sp,sp,32
    800012bc:	00008067          	ret

00000000800012c0 <_Z8sem_openPP4_semj>:



int sem_open (sem_t* handle, unsigned init){
    800012c0:	fd010113          	addi	sp,sp,-48
    800012c4:	02813423          	sd	s0,40(sp)
    800012c8:	03010413          	addi	s0,sp,48

    uint64 volatile volatile_handle = (uint64)handle;
    800012cc:	fea43423          	sd	a0,-24(s0)
    uint64 volatile volatile_init = init;
    800012d0:	02059593          	slli	a1,a1,0x20
    800012d4:	0205d593          	srli	a1,a1,0x20
    800012d8:	feb43023          	sd	a1,-32(s0)
    uint64 volatile code = 0x21;
    800012dc:	02100793          	li	a5,33
    800012e0:	fcf43c23          	sd	a5,-40(s0)

    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800012e4:	fd843783          	ld	a5,-40(s0)
    800012e8:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_handle));
    800012ec:	fe843783          	ld	a5,-24(s0)
    800012f0:	00078593          	mv	a1,a5
    __asm__ volatile("mv a2, %0" :  : "r" (volatile_init));
    800012f4:	fe043783          	ld	a5,-32(s0)
    800012f8:	00078613          	mv	a2,a5

    __asm__ volatile("ecall");
    800012fc:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001300:	00050513          	mv	a0,a0
    return ret;

}
    80001304:	0005051b          	sext.w	a0,a0
    80001308:	02813403          	ld	s0,40(sp)
    8000130c:	03010113          	addi	sp,sp,48
    80001310:	00008067          	ret

0000000080001314 <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle){
    80001314:	fe010113          	addi	sp,sp,-32
    80001318:	00813c23          	sd	s0,24(sp)
    8000131c:	02010413          	addi	s0,sp,32

    uint64 volatile code = 0x22;
    80001320:	02200793          	li	a5,34
    80001324:	fef43423          	sd	a5,-24(s0)
    uint64 volatile volatile_handle = (uint64)handle;
    80001328:	fea43023          	sd	a0,-32(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    8000132c:	fe843783          	ld	a5,-24(s0)
    80001330:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_handle));
    80001334:	fe043783          	ld	a5,-32(s0)
    80001338:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    8000133c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001340:	00050513          	mv	a0,a0
    return ret;

}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	01813403          	ld	s0,24(sp)
    8000134c:	02010113          	addi	sp,sp,32
    80001350:	00008067          	ret

0000000080001354 <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id){
    80001354:	fe010113          	addi	sp,sp,-32
    80001358:	00813c23          	sd	s0,24(sp)
    8000135c:	02010413          	addi	s0,sp,32

    uint64 volatile code = 0x23;
    80001360:	02300793          	li	a5,35
    80001364:	fef43423          	sd	a5,-24(s0)
    uint64 volatile volatile_id = (uint64)id;
    80001368:	fea43023          	sd	a0,-32(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    8000136c:	fe843783          	ld	a5,-24(s0)
    80001370:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_id));
    80001374:	fe043783          	ld	a5,-32(s0)
    80001378:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    8000137c:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001380:	00050513          	mv	a0,a0
    return ret;

}
    80001384:	0005051b          	sext.w	a0,a0
    80001388:	01813403          	ld	s0,24(sp)
    8000138c:	02010113          	addi	sp,sp,32
    80001390:	00008067          	ret

0000000080001394 <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id){
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00813c23          	sd	s0,24(sp)
    8000139c:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x24;
    800013a0:	02400793          	li	a5,36
    800013a4:	fef43423          	sd	a5,-24(s0)
    uint64 volatile volatile_id = (uint64)id;
    800013a8:	fea43023          	sd	a0,-32(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800013ac:	fe843783          	ld	a5,-24(s0)
    800013b0:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_id));
    800013b4:	fe043783          	ld	a5,-32(s0)
    800013b8:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    800013bc:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013c0:	00050513          	mv	a0,a0
    return ret;

}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	01813403          	ld	s0,24(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret

00000000800013d4 <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id){
    800013d4:	fe010113          	addi	sp,sp,-32
    800013d8:	00813c23          	sd	s0,24(sp)
    800013dc:	02010413          	addi	s0,sp,32

    uint64 volatile code = 0x26;
    800013e0:	02600793          	li	a5,38
    800013e4:	fef43423          	sd	a5,-24(s0)
    uint64 volatile volatile_id = (uint64)id;
    800013e8:	fea43023          	sd	a0,-32(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800013ec:	fe843783          	ld	a5,-24(s0)
    800013f0:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_id));
    800013f4:	fe043783          	ld	a5,-32(s0)
    800013f8:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    800013fc:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001400:	00050513          	mv	a0,a0
    return ret;

}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	01813403          	ld	s0,24(sp)
    8000140c:	02010113          	addi	sp,sp,32
    80001410:	00008067          	ret

0000000080001414 <_Z13sem_timedwaitP4_semm>:

int sem_timedwait(sem_t id, time_t timeout){
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001420:	00000513          	li	a0,0
    80001424:	00813403          	ld	s0,8(sp)
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret

0000000080001430 <_Z10time_sleepm>:


int time_sleep (time_t){
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    return 0;
}
    8000143c:	00000513          	li	a0,0
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z4getcv>:

char getc (){
    8000144c:	fe010113          	addi	sp,sp,-32
    80001450:	00813c23          	sd	s0,24(sp)
    80001454:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x41;
    80001458:	04100793          	li	a5,65
    8000145c:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001460:	fe843783          	ld	a5,-24(s0)
    80001464:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001468:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000146c:	00050513          	mv	a0,a0
    return (char)ret;

}
    80001470:	0ff57513          	andi	a0,a0,255
    80001474:	01813403          	ld	s0,24(sp)
    80001478:	02010113          	addi	sp,sp,32
    8000147c:	00008067          	ret

0000000080001480 <_Z4putcc>:

void putc (char ch){
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00813c23          	sd	s0,24(sp)
    80001488:	02010413          	addi	s0,sp,32
    char volatile c = ch;
    8000148c:	fea407a3          	sb	a0,-17(s0)
    uint64 volatile code = 0x42;
    80001490:	04200793          	li	a5,66
    80001494:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001498:	fe043783          	ld	a5,-32(s0)
    8000149c:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" :  : "r" (c));
    800014a0:	fef44783          	lbu	a5,-17(s0)
    800014a4:	00078593          	mv	a1,a5
    __asm__ volatile("ecall");
    800014a8:	00000073          	ecall
    800014ac:	01813403          	ld	s0,24(sp)
    800014b0:	02010113          	addi	sp,sp,32
    800014b4:	00008067          	ret

00000000800014b8 <_ZN13userSemaphore7tryWaitEv>:
    if(--val < 0) block();
    return 0;

}

int userSemaphore::tryWait() {
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    if(--val < 0) return 0;
    800014c4:	00052783          	lw	a5,0(a0) # 8000 <_entry-0x7fff8000>
    800014c8:	fff7879b          	addiw	a5,a5,-1
    800014cc:	00f52023          	sw	a5,0(a0)
    800014d0:	02079713          	slli	a4,a5,0x20
    800014d4:	00074a63          	bltz	a4,800014e8 <_ZN13userSemaphore7tryWaitEv+0x30>
    if(val >= 0) return 1;
    800014d8:	00100513          	li	a0,1
    return -1;
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret
    if(--val < 0) return 0;
    800014e8:	00000513          	li	a0,0
    800014ec:	ff1ff06f          	j	800014dc <_ZN13userSemaphore7tryWaitEv+0x24>

00000000800014f0 <_ZN13userSemaphore5blockEv>:
    if(++val <= 0) unblock();
    return 0;

}

void userSemaphore::block() {
    800014f0:	fc010113          	addi	sp,sp,-64
    800014f4:	02113c23          	sd	ra,56(sp)
    800014f8:	02813823          	sd	s0,48(sp)
    800014fc:	02913423          	sd	s1,40(sp)
    80001500:	03213023          	sd	s2,32(sp)
    80001504:	01313c23          	sd	s3,24(sp)
    80001508:	04010413          	addi	s0,sp,64
    8000150c:	00050493          	mv	s1,a0
    CCB *old = CCB::running;
    80001510:	00009797          	auipc	a5,0x9
    80001514:	ef07b783          	ld	a5,-272(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001518:	0007b903          	ld	s2,0(a5)
    blocked.addLast(old);
    8000151c:	00850993          	addi	s3,a0,8
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size){
            uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
    80001520:	fc043423          	sd	zero,-56(s0)
            if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;
    80001524:	fc843783          	ld	a5,-56(s0)
    80001528:	00178793          	addi	a5,a5,1
    8000152c:	fcf43423          	sd	a5,-56(s0)

            return memoryAllocator::mem_alloc(num_of_blocks);
    80001530:	fc843503          	ld	a0,-56(s0)
    80001534:	00000097          	auipc	ra,0x0
    80001538:	2cc080e7          	jalr	716(ra) # 80001800 <_ZN15memoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000153c:	01253023          	sd	s2,0(a0)
    80001540:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80001544:	0089b783          	ld	a5,8(s3)
    80001548:	04078663          	beqz	a5,80001594 <_ZN13userSemaphore5blockEv+0xa4>
        {
            tail->next = elem;
    8000154c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001550:	00a9b423          	sd	a0,8(s3)
    CCB::running = Scheduler::get();
    80001554:	00001097          	auipc	ra,0x1
    80001558:	d74080e7          	jalr	-652(ra) # 800022c8 <_ZN9Scheduler3getEv>
    8000155c:	00009797          	auipc	a5,0x9
    80001560:	ea47b783          	ld	a5,-348(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001564:	00a7b023          	sd	a0,0(a5)
    CCB::contextSwitch(&old->context, &CCB::running->context);
    80001568:	01850593          	addi	a1,a0,24
    8000156c:	01890513          	addi	a0,s2,24
    80001570:	00000097          	auipc	ra,0x0
    80001574:	ba0080e7          	jalr	-1120(ra) # 80001110 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>

}
    80001578:	03813083          	ld	ra,56(sp)
    8000157c:	03013403          	ld	s0,48(sp)
    80001580:	02813483          	ld	s1,40(sp)
    80001584:	02013903          	ld	s2,32(sp)
    80001588:	01813983          	ld	s3,24(sp)
    8000158c:	04010113          	addi	sp,sp,64
    80001590:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001594:	00a9b423          	sd	a0,8(s3)
    80001598:	00a4b423          	sd	a0,8(s1)
    8000159c:	fb9ff06f          	j	80001554 <_ZN13userSemaphore5blockEv+0x64>

00000000800015a0 <_ZN13userSemaphore4waitEv>:
    if(--val < 0) block();
    800015a0:	00052783          	lw	a5,0(a0)
    800015a4:	fff7879b          	addiw	a5,a5,-1
    800015a8:	00f52023          	sw	a5,0(a0)
    800015ac:	02079713          	slli	a4,a5,0x20
    800015b0:	00074663          	bltz	a4,800015bc <_ZN13userSemaphore4waitEv+0x1c>
}
    800015b4:	00000513          	li	a0,0
    800015b8:	00008067          	ret
int userSemaphore::wait() {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00113423          	sd	ra,8(sp)
    800015c4:	00813023          	sd	s0,0(sp)
    800015c8:	01010413          	addi	s0,sp,16
    if(--val < 0) block();
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	f24080e7          	jalr	-220(ra) # 800014f0 <_ZN13userSemaphore5blockEv>
}
    800015d4:	00000513          	li	a0,0
    800015d8:	00813083          	ld	ra,8(sp)
    800015dc:	00013403          	ld	s0,0(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_ZN13userSemaphore7unblockEv>:

void userSemaphore::unblock() {
    800015e8:	fe010113          	addi	sp,sp,-32
    800015ec:	00113c23          	sd	ra,24(sp)
    800015f0:	00813823          	sd	s0,16(sp)
    800015f4:	00913423          	sd	s1,8(sp)
    800015f8:	02010413          	addi	s0,sp,32
    800015fc:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001600:	00853503          	ld	a0,8(a0)
    80001604:	04050263          	beqz	a0,80001648 <_ZN13userSemaphore7unblockEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001608:	00853703          	ld	a4,8(a0)
    8000160c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001610:	02070863          	beqz	a4,80001640 <_ZN13userSemaphore7unblockEv+0x58>

        T *ret = elem->data;
    80001614:	00053483          	ld	s1,0(a0)
            memoryAllocator::mem_free(p);
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	36c080e7          	jalr	876(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>
    CCB* thread = blocked.removeFirst();
    Scheduler::put(thread);
    80001620:	00048513          	mv	a0,s1
    80001624:	00001097          	auipc	ra,0x1
    80001628:	d0c080e7          	jalr	-756(ra) # 80002330 <_ZN9Scheduler3putEP3CCB>
}
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	00813483          	ld	s1,8(sp)
    80001638:	02010113          	addi	sp,sp,32
    8000163c:	00008067          	ret
        if (!head) { tail = 0; }
    80001640:	0007b823          	sd	zero,16(a5)
    80001644:	fd1ff06f          	j	80001614 <_ZN13userSemaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001648:	00050493          	mv	s1,a0
    8000164c:	fd5ff06f          	j	80001620 <_ZN13userSemaphore7unblockEv+0x38>

0000000080001650 <_ZN13userSemaphore6signalEv>:
    if(++val <= 0) unblock();
    80001650:	00052783          	lw	a5,0(a0)
    80001654:	0017879b          	addiw	a5,a5,1
    80001658:	0007871b          	sext.w	a4,a5
    8000165c:	00f52023          	sw	a5,0(a0)
    80001660:	00e05663          	blez	a4,8000166c <_ZN13userSemaphore6signalEv+0x1c>
}
    80001664:	00000513          	li	a0,0
    80001668:	00008067          	ret
int userSemaphore::signal() {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    if(++val <= 0) unblock();
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	f6c080e7          	jalr	-148(ra) # 800015e8 <_ZN13userSemaphore7unblockEv>
}
    80001684:	00000513          	li	a0,0
    80001688:	00813083          	ld	ra,8(sp)
    8000168c:	00013403          	ld	s0,0(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <_ZN13userSemaphore15createSemaphoreEi>:

userSemaphore *userSemaphore::createSemaphore(int val) {
    80001698:	fd010113          	addi	sp,sp,-48
    8000169c:	02113423          	sd	ra,40(sp)
    800016a0:	02813023          	sd	s0,32(sp)
    800016a4:	00913c23          	sd	s1,24(sp)
    800016a8:	03010413          	addi	s0,sp,48
    800016ac:	00050493          	mv	s1,a0
    int signal ();

    int tryWait();

    void* operator new(size_t size){
        uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
    800016b0:	fc043c23          	sd	zero,-40(s0)
        if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;
    800016b4:	fd843783          	ld	a5,-40(s0)
    800016b8:	00178793          	addi	a5,a5,1
    800016bc:	fcf43c23          	sd	a5,-40(s0)

        return memoryAllocator::mem_alloc(num_of_blocks);
    800016c0:	fd843503          	ld	a0,-40(s0)
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	13c080e7          	jalr	316(ra) # 80001800 <_ZN15memoryAllocator9mem_allocEm>
    void block ();

    void unblock ();

private:
    userSemaphore (unsigned short init=1) : val(init) {}
    800016cc:	03049493          	slli	s1,s1,0x30
    800016d0:	0304d493          	srli	s1,s1,0x30
    800016d4:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800016d8:	00053423          	sd	zero,8(a0)
    800016dc:	00053823          	sd	zero,16(a0)
    return new userSemaphore(val);
}
    800016e0:	02813083          	ld	ra,40(sp)
    800016e4:	02013403          	ld	s0,32(sp)
    800016e8:	01813483          	ld	s1,24(sp)
    800016ec:	03010113          	addi	sp,sp,48
    800016f0:	00008067          	ret

00000000800016f4 <_ZN13userSemaphoreD1Ev>:

userSemaphore::~userSemaphore() {
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	00913423          	sd	s1,8(sp)
    80001704:	01213023          	sd	s2,0(sp)
    80001708:	02010413          	addi	s0,sp,32
    8000170c:	00050493          	mv	s1,a0
    80001710:	0200006f          	j	80001730 <_ZN13userSemaphoreD1Ev+0x3c>
        if (!head) { tail = 0; }
    80001714:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001718:	00053903          	ld	s2,0(a0)
            memoryAllocator::mem_free(p);
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	268080e7          	jalr	616(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>

    while(blocked.peekFirst()){
        Scheduler::put(blocked.removeFirst());
    80001724:	00090513          	mv	a0,s2
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	c08080e7          	jalr	-1016(ra) # 80002330 <_ZN9Scheduler3putEP3CCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001730:	0084b503          	ld	a0,8(s1)
    80001734:	00050e63          	beqz	a0,80001750 <_ZN13userSemaphoreD1Ev+0x5c>
        return head->data;
    80001738:	00053783          	ld	a5,0(a0)
    while(blocked.peekFirst()){
    8000173c:	00078a63          	beqz	a5,80001750 <_ZN13userSemaphoreD1Ev+0x5c>
        head = head->next;
    80001740:	00853783          	ld	a5,8(a0)
    80001744:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001748:	fc0798e3          	bnez	a5,80001718 <_ZN13userSemaphoreD1Ev+0x24>
    8000174c:	fc9ff06f          	j	80001714 <_ZN13userSemaphoreD1Ev+0x20>
    }
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	00013903          	ld	s2,0(sp)
    80001760:	02010113          	addi	sp,sp,32
    80001764:	00008067          	ret

0000000080001768 <main>:
#include "../h/riscv.hpp"
#include "../h/ccb.hpp"

extern void userMain();

int main(){
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00113423          	sd	ra,8(sp)
    80001770:	00813023          	sd	s0,0(sp)
    80001774:	01010413          	addi	s0,sp,16

    CCB::running = CCB::createCoroutine(nullptr, nullptr, nullptr);
    80001778:	00000613          	li	a2,0
    8000177c:	00000593          	li	a1,0
    80001780:	00000513          	li	a0,0
    80001784:	00000097          	auipc	ra,0x0
    80001788:	368080e7          	jalr	872(ra) # 80001aec <_ZN3CCB15createCoroutineEPFvPvES0_Pm>
    8000178c:	00009797          	auipc	a5,0x9
    80001790:	c747b783          	ld	a5,-908(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001794:	00a7b023          	sd	a0,0(a5)
    CCB::createCoroutine((void (*)(void*))userMain, nullptr, (uint64*)memoryAllocator::mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64)));
    80001798:	00008537          	lui	a0,0x8
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	064080e7          	jalr	100(ra) # 80001800 <_ZN15memoryAllocator9mem_allocEm>
    800017a4:	00050613          	mv	a2,a0
    800017a8:	00000593          	li	a1,0
    800017ac:	00009517          	auipc	a0,0x9
    800017b0:	c3453503          	ld	a0,-972(a0) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	338080e7          	jalr	824(ra) # 80001aec <_ZN3CCB15createCoroutineEPFvPvES0_Pm>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800017bc:	00009797          	auipc	a5,0x9
    800017c0:	c347b783          	ld	a5,-972(a5) # 8000a3f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800017c4:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800017c8:	00200793          	li	a5,2
    800017cc:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    while(CCB::getThreadCnt() > 1)
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	49c080e7          	jalr	1180(ra) # 80001c6c <_ZN3CCB12getThreadCntEv>
    800017d8:	00100793          	li	a5,1
    800017dc:	00a7d863          	bge	a5,a0,800017ec <main+0x84>
    {
        CCB::dispatch();
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	404080e7          	jalr	1028(ra) # 80001be4 <_ZN3CCB8dispatchEv>
    while(CCB::getThreadCnt() > 1)
    800017e8:	fe9ff06f          	j	800017d0 <main+0x68>
    }

    return 0;
    800017ec:	00000513          	li	a0,0
    800017f0:	00813083          	ld	ra,8(sp)
    800017f4:	00013403          	ld	s0,0(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_ZN15memoryAllocator9mem_allocEm>:

#include "../h/memoryAllocator.hpp"

memoryAllocator::blockHeader* memoryAllocator::freeMemHead = nullptr; //beginning of free memory list

void *memoryAllocator::mem_alloc(size_t size) {
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00813423          	sd	s0,8(sp)
    80001808:	01010413          	addi	s0,sp,16
    8000180c:	00050793          	mv	a5,a0

    if(freeMemHead == nullptr){//allocation of the required block and initialisation of the rest of the space as a free mem block
    80001810:	00009517          	auipc	a0,0x9
    80001814:	c5053503          	ld	a0,-944(a0) # 8000a460 <_ZN15memoryAllocator11freeMemHeadE>
    80001818:	00050663          	beqz	a0,80001824 <_ZN15memoryAllocator9mem_allocEm+0x24>

        return (void*)((uint64)allocatedBlock + sizeof(void*) + sizeof(size_t));
    }

    blockHeader* block = freeMemHead;//we search for the first free block - first fit
    blockHeader* prev = nullptr;
    8000181c:	00000693          	li	a3,0
    80001820:	0840006f          	j	800018a4 <_ZN15memoryAllocator9mem_allocEm+0xa4>
        if((uint64)HEAP_START_ADDR + size * MEM_BLOCK_SIZE >= (uint64)HEAP_END_ADDR) return nullptr;// not enough space for the block in memory
    80001824:	00679613          	slli	a2,a5,0x6
    80001828:	00009717          	auipc	a4,0x9
    8000182c:	bc073703          	ld	a4,-1088(a4) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001830:	00073703          	ld	a4,0(a4)
    80001834:	00e605b3          	add	a1,a2,a4
    80001838:	00009697          	auipc	a3,0x9
    8000183c:	bd06b683          	ld	a3,-1072(a3) # 8000a408 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001840:	0006b683          	ld	a3,0(a3)
    80001844:	0ad5f263          	bgeu	a1,a3,800018e8 <_ZN15memoryAllocator9mem_allocEm+0xe8>
        allocatedBlock->next = nullptr;
    80001848:	00073023          	sd	zero,0(a4)
        allocatedBlock->size = size;
    8000184c:	00f73423          	sd	a5,8(a4)
        freeMemHead = (blockHeader*)((uint64)HEAP_START_ADDR + size * MEM_BLOCK_SIZE);
    80001850:	00009517          	auipc	a0,0x9
    80001854:	b9853503          	ld	a0,-1128(a0) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001858:	00053683          	ld	a3,0(a0)
    8000185c:	00c686b3          	add	a3,a3,a2
    80001860:	00009597          	auipc	a1,0x9
    80001864:	c0058593          	addi	a1,a1,-1024 # 8000a460 <_ZN15memoryAllocator11freeMemHeadE>
    80001868:	00d5b023          	sd	a3,0(a1)
        freeMemHead->next = nullptr;
    8000186c:	0006b023          	sd	zero,0(a3)
        freeMemHead->size = (size_t)(((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - size * MEM_BLOCK_SIZE) / MEM_BLOCK_SIZE);
    80001870:	00009797          	auipc	a5,0x9
    80001874:	b987b783          	ld	a5,-1128(a5) # 8000a408 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001878:	0007b783          	ld	a5,0(a5)
    8000187c:	00053683          	ld	a3,0(a0)
    80001880:	40d787b3          	sub	a5,a5,a3
    80001884:	40c787b3          	sub	a5,a5,a2
    80001888:	0005b683          	ld	a3,0(a1)
    8000188c:	0067d793          	srli	a5,a5,0x6
    80001890:	00f6b423          	sd	a5,8(a3)
        return (void*)((uint64)allocatedBlock + sizeof(void*) + sizeof(size_t));
    80001894:	01070513          	addi	a0,a4,16
    80001898:	0500006f          	j	800018e8 <_ZN15memoryAllocator9mem_allocEm+0xe8>
    for(;block != nullptr; prev = block, block = block->next){
    8000189c:	00050693          	mv	a3,a0
    800018a0:	00053503          	ld	a0,0(a0)
    800018a4:	00050663          	beqz	a0,800018b0 <_ZN15memoryAllocator9mem_allocEm+0xb0>
        if(block->size >= size) break;
    800018a8:	00853703          	ld	a4,8(a0)
    800018ac:	fef768e3          	bltu	a4,a5,8000189c <_ZN15memoryAllocator9mem_allocEm+0x9c>
    }

    if(block == nullptr)return nullptr;//no free mem space left;
    800018b0:	02050c63          	beqz	a0,800018e8 <_ZN15memoryAllocator9mem_allocEm+0xe8>

    //allocate the requested block
    size_t remainingSize = block->size - size;
    800018b4:	00853703          	ld	a4,8(a0)
    800018b8:	40f70633          	sub	a2,a4,a5
    if(remainingSize >= 1){//a fragment exists in the block that we want to allocate
    800018bc:	04f70263          	beq	a4,a5,80001900 <_ZN15memoryAllocator9mem_allocEm+0x100>
        block->size = size;
    800018c0:	00f53423          	sd	a5,8(a0)
        blockHeader* newBlock = (blockHeader*)((uint64)block + size * MEM_BLOCK_SIZE);
    800018c4:	00679793          	slli	a5,a5,0x6
    800018c8:	00f507b3          	add	a5,a0,a5

        if(prev)prev->next = newBlock;
    800018cc:	02068463          	beqz	a3,800018f4 <_ZN15memoryAllocator9mem_allocEm+0xf4>
    800018d0:	00f6b023          	sd	a5,0(a3)
        else freeMemHead = newBlock;

        newBlock->next = block->next;
    800018d4:	00053703          	ld	a4,0(a0)
    800018d8:	00e7b023          	sd	a4,0(a5)
        newBlock->size = remainingSize;
    800018dc:	00c7b423          	sd	a2,8(a5)
    else{//no remaining fragment in the block we want to allocate
        if(prev) prev->next = block->next;
        else freeMemHead = block->next;
    }

    block->next = nullptr; // the block is allocated, so it doesn't point to the next free segment
    800018e0:	00053023          	sd	zero,0(a0)

    return (void*)((uint64)block + sizeof(void*) + sizeof(size_t));
    800018e4:	01050513          	addi	a0,a0,16
}
    800018e8:	00813403          	ld	s0,8(sp)
    800018ec:	01010113          	addi	sp,sp,16
    800018f0:	00008067          	ret
        else freeMemHead = newBlock;
    800018f4:	00009717          	auipc	a4,0x9
    800018f8:	b6f73623          	sd	a5,-1172(a4) # 8000a460 <_ZN15memoryAllocator11freeMemHeadE>
    800018fc:	fd9ff06f          	j	800018d4 <_ZN15memoryAllocator9mem_allocEm+0xd4>
        if(prev) prev->next = block->next;
    80001900:	00068863          	beqz	a3,80001910 <_ZN15memoryAllocator9mem_allocEm+0x110>
    80001904:	00053783          	ld	a5,0(a0)
    80001908:	00f6b023          	sd	a5,0(a3)
    8000190c:	fd5ff06f          	j	800018e0 <_ZN15memoryAllocator9mem_allocEm+0xe0>
        else freeMemHead = block->next;
    80001910:	00053783          	ld	a5,0(a0)
    80001914:	00009717          	auipc	a4,0x9
    80001918:	b4f73623          	sd	a5,-1204(a4) # 8000a460 <_ZN15memoryAllocator11freeMemHeadE>
    8000191c:	fc5ff06f          	j	800018e0 <_ZN15memoryAllocator9mem_allocEm+0xe0>

0000000080001920 <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE>:

    return 0;

}

int memoryAllocator::tryToJoin(blockHeader* curr){ //join two blocks that are next to each other
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00813423          	sd	s0,8(sp)
    80001928:	01010413          	addi	s0,sp,16
    if(!curr) return 0;
    8000192c:	04050463          	beqz	a0,80001974 <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE+0x54>
    if(curr->next && (uint64)curr + curr->size * MEM_BLOCK_SIZE == (uint64)curr->next){
    80001930:	00053783          	ld	a5,0(a0)
    80001934:	04078463          	beqz	a5,8000197c <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE+0x5c>
    80001938:	00853683          	ld	a3,8(a0)
    8000193c:	00669713          	slli	a4,a3,0x6
    80001940:	00e50733          	add	a4,a0,a4
    80001944:	00f70a63          	beq	a4,a5,80001958 <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE+0x38>
        //remove the curr->next block
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        return 1;
    }
    else return 0;
    80001948:	00000513          	li	a0,0
}
    8000194c:	00813403          	ld	s0,8(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret
        curr->size += curr->next->size;
    80001958:	0087b703          	ld	a4,8(a5)
    8000195c:	00e686b3          	add	a3,a3,a4
    80001960:	00d53423          	sd	a3,8(a0)
        curr->next = curr->next->next;
    80001964:	0007b783          	ld	a5,0(a5)
    80001968:	00f53023          	sd	a5,0(a0)
        return 1;
    8000196c:	00100513          	li	a0,1
    80001970:	fddff06f          	j	8000194c <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE+0x2c>
    if(!curr) return 0;
    80001974:	00000513          	li	a0,0
    80001978:	fd5ff06f          	j	8000194c <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE+0x2c>
    else return 0;
    8000197c:	00000513          	li	a0,0
    80001980:	fcdff06f          	j	8000194c <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE+0x2c>

0000000080001984 <_ZN15memoryAllocator8mem_freeEPv>:
int memoryAllocator::mem_free(void * addr) {
    80001984:	00050713          	mv	a4,a0
    addr = (void*)((uint64)addr - sizeof(size_t) - sizeof(void*));//we change the address so it points to the beginning of the blockHeader
    80001988:	ff050513          	addi	a0,a0,-16
    if(addr < HEAP_START_ADDR || addr > (void*)((uint64)HEAP_END_ADDR - 64)) return -1; // these addresses couldn't have been allocated
    8000198c:	00009797          	auipc	a5,0x9
    80001990:	a5c7b783          	ld	a5,-1444(a5) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001994:	0007b783          	ld	a5,0(a5)
    80001998:	0cf56263          	bltu	a0,a5,80001a5c <_ZN15memoryAllocator8mem_freeEPv+0xd8>
    8000199c:	00009797          	auipc	a5,0x9
    800019a0:	a6c7b783          	ld	a5,-1428(a5) # 8000a408 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019a4:	0007b783          	ld	a5,0(a5)
    800019a8:	fc078793          	addi	a5,a5,-64
    800019ac:	0aa7ec63          	bltu	a5,a0,80001a64 <_ZN15memoryAllocator8mem_freeEPv+0xe0>
int memoryAllocator::mem_free(void * addr) {
    800019b0:	fe010113          	addi	sp,sp,-32
    800019b4:	00113c23          	sd	ra,24(sp)
    800019b8:	00813823          	sd	s0,16(sp)
    800019bc:	00913423          	sd	s1,8(sp)
    800019c0:	02010413          	addi	s0,sp,32
    if(freeMemHead && addr >= (void*)freeMemHead){//we search for the space where the new free segment would fit in the free mem list
    800019c4:	00009697          	auipc	a3,0x9
    800019c8:	a9c6b683          	ld	a3,-1380(a3) # 8000a460 <_ZN15memoryAllocator11freeMemHeadE>
    800019cc:	02068063          	beqz	a3,800019ec <_ZN15memoryAllocator8mem_freeEPv+0x68>
    800019d0:	02d56263          	bltu	a0,a3,800019f4 <_ZN15memoryAllocator8mem_freeEPv+0x70>
        for(curr = freeMemHead; curr->next != nullptr && addr >= (void*) curr->next; curr = curr->next);
    800019d4:	00068793          	mv	a5,a3
    800019d8:	00078493          	mv	s1,a5
    800019dc:	0007b783          	ld	a5,0(a5)
    800019e0:	00078c63          	beqz	a5,800019f8 <_ZN15memoryAllocator8mem_freeEPv+0x74>
    800019e4:	fef57ae3          	bgeu	a0,a5,800019d8 <_ZN15memoryAllocator8mem_freeEPv+0x54>
    800019e8:	0100006f          	j	800019f8 <_ZN15memoryAllocator8mem_freeEPv+0x74>
    blockHeader* curr = nullptr;
    800019ec:	00068493          	mv	s1,a3
    800019f0:	0080006f          	j	800019f8 <_ZN15memoryAllocator8mem_freeEPv+0x74>
    800019f4:	00000493          	li	s1,0
    if(curr == bhAddr || (curr && (blockHeader*)((uint64)curr + curr->size * MEM_BLOCK_SIZE) > bhAddr) ) return -2; // the block is already in the free memory list
    800019f8:	06a48a63          	beq	s1,a0,80001a6c <_ZN15memoryAllocator8mem_freeEPv+0xe8>
    800019fc:	00048a63          	beqz	s1,80001a10 <_ZN15memoryAllocator8mem_freeEPv+0x8c>
    80001a00:	0084b783          	ld	a5,8(s1)
    80001a04:	00679793          	slli	a5,a5,0x6
    80001a08:	00f487b3          	add	a5,s1,a5
    80001a0c:	06f56463          	bltu	a0,a5,80001a74 <_ZN15memoryAllocator8mem_freeEPv+0xf0>
    if(curr) {
    80001a10:	02048e63          	beqz	s1,80001a4c <_ZN15memoryAllocator8mem_freeEPv+0xc8>
        newBlock->next = curr->next;
    80001a14:	0004b783          	ld	a5,0(s1)
    80001a18:	fef73823          	sd	a5,-16(a4)
        curr->next = newBlock;
    80001a1c:	00a4b023          	sd	a0,0(s1)
    tryToJoin(newBlock);
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	f00080e7          	jalr	-256(ra) # 80001920 <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE>
    tryToJoin(curr);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	ef4080e7          	jalr	-268(ra) # 80001920 <_ZN15memoryAllocator9tryToJoinEPNS_11blockHeaderE>
    return 0;
    80001a34:	00000513          	li	a0,0
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret
        newBlock->next = freeMemHead;
    80001a4c:	fed73823          	sd	a3,-16(a4)
        freeMemHead = newBlock;
    80001a50:	00009797          	auipc	a5,0x9
    80001a54:	a0a7b823          	sd	a0,-1520(a5) # 8000a460 <_ZN15memoryAllocator11freeMemHeadE>
    80001a58:	fc9ff06f          	j	80001a20 <_ZN15memoryAllocator8mem_freeEPv+0x9c>
    if(addr < HEAP_START_ADDR || addr > (void*)((uint64)HEAP_END_ADDR - 64)) return -1; // these addresses couldn't have been allocated
    80001a5c:	fff00513          	li	a0,-1
    80001a60:	00008067          	ret
    80001a64:	fff00513          	li	a0,-1
}
    80001a68:	00008067          	ret
    if(curr == bhAddr || (curr && (blockHeader*)((uint64)curr + curr->size * MEM_BLOCK_SIZE) > bhAddr) ) return -2; // the block is already in the free memory list
    80001a6c:	ffe00513          	li	a0,-2
    80001a70:	fc9ff06f          	j	80001a38 <_ZN15memoryAllocator8mem_freeEPv+0xb4>
    80001a74:	ffe00513          	li	a0,-2
    80001a78:	fc1ff06f          	j	80001a38 <_ZN15memoryAllocator8mem_freeEPv+0xb4>

0000000080001a7c <_ZN3CCB13threadWrapperEv>:

    running = Scheduler::get();
    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {
    80001a7c:	fd010113          	addi	sp,sp,-48
    80001a80:	02113423          	sd	ra,40(sp)
    80001a84:	02813023          	sd	s0,32(sp)
    80001a88:	00913c23          	sd	s1,24(sp)
    80001a8c:	03010413          	addi	s0,sp,48
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001a90:	10000793          	li	a5,256
    80001a94:	1007b073          	csrc	sstatus,a5

    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	55c080e7          	jalr	1372(ra) # 80001ff4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001aa0:	00009497          	auipc	s1,0x9
    80001aa4:	9c848493          	addi	s1,s1,-1592 # 8000a468 <_ZN3CCB7runningE>
    80001aa8:	0004b783          	ld	a5,0(s1)
    80001aac:	0007b703          	ld	a4,0(a5)
    80001ab0:	0087b503          	ld	a0,8(a5)
    80001ab4:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ab8:	0004b783          	ld	a5,0(s1)

    static CCB *running; //the currently running thread

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001abc:	00100713          	li	a4,1
    80001ac0:	02e78423          	sb	a4,40(a5)

    uint64 volatile code = 0x13;
    80001ac4:	01300793          	li	a5,19
    80001ac8:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001acc:	fd843783          	ld	a5,-40(s0)
    80001ad0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001ad4:	00000073          	ecall
}
    80001ad8:	02813083          	ld	ra,40(sp)
    80001adc:	02013403          	ld	s0,32(sp)
    80001ae0:	01813483          	ld	s1,24(sp)
    80001ae4:	03010113          	addi	sp,sp,48
    80001ae8:	00008067          	ret

0000000080001aec <_ZN3CCB15createCoroutineEPFvPvES0_Pm>:
{
    80001aec:	fc010113          	addi	sp,sp,-64
    80001af0:	02113c23          	sd	ra,56(sp)
    80001af4:	02813823          	sd	s0,48(sp)
    80001af8:	02913423          	sd	s1,40(sp)
    80001afc:	03213023          	sd	s2,32(sp)
    80001b00:	01313c23          	sd	s3,24(sp)
    80001b04:	01413823          	sd	s4,16(sp)
    80001b08:	04010413          	addi	s0,sp,64
    80001b0c:	00050993          	mv	s3,a0
    80001b10:	00058a13          	mv	s4,a1
    80001b14:	00060913          	mv	s2,a2
    threadCnt++;
    80001b18:	00009717          	auipc	a4,0x9
    80001b1c:	95070713          	addi	a4,a4,-1712 # 8000a468 <_ZN3CCB7runningE>
    80001b20:	00873783          	ld	a5,8(a4)
    80001b24:	00178793          	addi	a5,a5,1
    80001b28:	00f73423          	sd	a5,8(a4)

    static void dispatch();//change of context

    void* operator new(size_t size){ //allocation of space for a new thread
        uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
    80001b2c:	00100793          	li	a5,1
    80001b30:	fcf43423          	sd	a5,-56(s0)
        if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;
    80001b34:	fc843783          	ld	a5,-56(s0)
    80001b38:	00178793          	addi	a5,a5,1
    80001b3c:	fcf43423          	sd	a5,-56(s0)

        return memoryAllocator::mem_alloc(num_of_blocks);
    80001b40:	fc843503          	ld	a0,-56(s0)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	cbc080e7          	jalr	-836(ra) # 80001800 <_ZN15memoryAllocator9mem_allocEm>
    80001b4c:	00050493          	mv	s1,a0
private:
    explicit CCB(Body _body,void* _arg, uint64* _stack) : body(_body), arg(_arg), stack(_stack),
            context({body != nullptr ? (uint64) &threadWrapper : 0,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false)
    80001b50:	01353023          	sd	s3,0(a0)
    80001b54:	01453423          	sd	s4,8(a0)
    80001b58:	01253823          	sd	s2,16(a0)
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    80001b5c:	02098c63          	beqz	s3,80001b94 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xa8>
    80001b60:	00000797          	auipc	a5,0x0
    80001b64:	f1c78793          	addi	a5,a5,-228 # 80001a7c <_ZN3CCB13threadWrapperEv>
            finished(false)
    80001b68:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b6c:	02090863          	beqz	s2,80001b9c <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xb0>
    80001b70:	00008637          	lui	a2,0x8
    80001b74:	00c90933          	add	s2,s2,a2
            finished(false)
    80001b78:	0324b023          	sd	s2,32(s1)
    80001b7c:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this);}
    80001b80:	04098063          	beqz	s3,80001bc0 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xd4>
    80001b84:	00048513          	mv	a0,s1
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	7a8080e7          	jalr	1960(ra) # 80002330 <_ZN9Scheduler3putEP3CCB>
    80001b90:	0300006f          	j	80001bc0 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0xd4>
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    80001b94:	00000793          	li	a5,0
    80001b98:	fd1ff06f          	j	80001b68 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x7c>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b9c:	00000913          	li	s2,0
    80001ba0:	fd9ff06f          	j	80001b78 <_ZN3CCB15createCoroutineEPFvPvES0_Pm+0x8c>
    80001ba4:	00050913          	mv	s2,a0
        memoryAllocator::mem_free(p);
    80001ba8:	00048513          	mv	a0,s1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	dd8080e7          	jalr	-552(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>
    80001bb4:	00090513          	mv	a0,s2
    80001bb8:	0000a097          	auipc	ra,0xa
    80001bbc:	9f0080e7          	jalr	-1552(ra) # 8000b5a8 <_Unwind_Resume>
}
    80001bc0:	00048513          	mv	a0,s1
    80001bc4:	03813083          	ld	ra,56(sp)
    80001bc8:	03013403          	ld	s0,48(sp)
    80001bcc:	02813483          	ld	s1,40(sp)
    80001bd0:	02013903          	ld	s2,32(sp)
    80001bd4:	01813983          	ld	s3,24(sp)
    80001bd8:	01013a03          	ld	s4,16(sp)
    80001bdc:	04010113          	addi	sp,sp,64
    80001be0:	00008067          	ret

0000000080001be4 <_ZN3CCB8dispatchEv>:
{
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001bf8:	00009497          	auipc	s1,0x9
    80001bfc:	8704b483          	ld	s1,-1936(s1) # 8000a468 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001c00:	0284c783          	lbu	a5,40(s1)
    if (old->isFinished()) {
    80001c04:	04078c63          	beqz	a5,80001c5c <_ZN3CCB8dispatchEv+0x78>
        threadCnt--;
    80001c08:	00009717          	auipc	a4,0x9
    80001c0c:	86070713          	addi	a4,a4,-1952 # 8000a468 <_ZN3CCB7runningE>
    80001c10:	00873783          	ld	a5,8(a4)
    80001c14:	fff78793          	addi	a5,a5,-1
    80001c18:	00f73423          	sd	a5,8(a4)
        memoryAllocator::mem_free(old);
    80001c1c:	00048513          	mv	a0,s1
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	d64080e7          	jalr	-668(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>
    running = Scheduler::get();
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	6a0080e7          	jalr	1696(ra) # 800022c8 <_ZN9Scheduler3getEv>
    80001c30:	00009797          	auipc	a5,0x9
    80001c34:	82a7bc23          	sd	a0,-1992(a5) # 8000a468 <_ZN3CCB7runningE>
    CCB::contextSwitch(&old->context, &running->context);
    80001c38:	01850593          	addi	a1,a0,24
    80001c3c:	01848513          	addi	a0,s1,24
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	4d0080e7          	jalr	1232(ra) # 80001110 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret
        Scheduler::put(old);
    80001c5c:	00048513          	mv	a0,s1
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	6d0080e7          	jalr	1744(ra) # 80002330 <_ZN9Scheduler3putEP3CCB>
    80001c68:	fc1ff06f          	j	80001c28 <_ZN3CCB8dispatchEv+0x44>

0000000080001c6c <_ZN3CCB12getThreadCntEv>:

int CCB::getThreadCnt() {
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return threadCnt;
}
    80001c78:	00008517          	auipc	a0,0x8
    80001c7c:	7f852503          	lw	a0,2040(a0) # 8000a470 <_ZN3CCB9threadCntE>
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN3CCB10time_sleepEm>:

int CCB::time_sleep(time_t) {
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
    return 0;
}
    80001c98:	00000513          	li	a0,0
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN6ThreadD1Ev>:
//THREADS
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg), myHandle(nullptr){

}

Thread::~Thread() {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
}
    80001cb4:	00813403          	ld	s0,8(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN6Thread10threadBaseEPv>:
int Thread::start() {
    thread_create(&myHandle, threadBase, this);
    return 0;
}

void Thread::threadBase(void* arg){
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00113423          	sd	ra,8(sp)
    80001cc8:	00813023          	sd	s0,0(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    Thread* currThread = (Thread*)arg;
    if(currThread->body != nullptr){
    80001cd0:	00853783          	ld	a5,8(a0)
    80001cd4:	00078e63          	beqz	a5,80001cf0 <_ZN6Thread10threadBaseEPv+0x30>
        //putc('1');
        currThread->body(currThread->arg);
    80001cd8:	01053503          	ld	a0,16(a0)
    80001cdc:	000780e7          	jalr	a5
    }
    else{
        //putc('2');
        currThread->run();
    }
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret
        currThread->run();
    80001cf0:	00053783          	ld	a5,0(a0)
    80001cf4:	0107b783          	ld	a5,16(a5)
    80001cf8:	000780e7          	jalr	a5
}
    80001cfc:	fe5ff06f          	j	80001ce0 <_ZN6Thread10threadBaseEPv+0x20>

0000000080001d00 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	00008797          	auipc	a5,0x8
    80001d14:	4e878793          	addi	a5,a5,1256 # 8000a1f8 <_ZTV9Semaphore+0x10>
    80001d18:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d1c:	00853503          	ld	a0,8(a0)
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	5f4080e7          	jalr	1524(ra) # 80001314 <_Z9sem_closeP4_sem>
}
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_Znwm>:
void* operator new (size_t size){
    80001d38:	ff010113          	addi	sp,sp,-16
    80001d3c:	00113423          	sd	ra,8(sp)
    80001d40:	00813023          	sd	s0,0(sp)
    80001d44:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	3fc080e7          	jalr	1020(ra) # 80001144 <_Z9mem_allocm>
}
    80001d50:	00813083          	ld	ra,8(sp)
    80001d54:	00013403          	ld	s0,0(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_ZdlPv>:
void operator delete (void* p){
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	42c080e7          	jalr	1068(ra) # 8000119c <_Z8mem_freePv>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d88:	fe010113          	addi	sp,sp,-32
    80001d8c:	00113c23          	sd	ra,24(sp)
    80001d90:	00813823          	sd	s0,16(sp)
    80001d94:	00913423          	sd	s1,8(sp)
    80001d98:	02010413          	addi	s0,sp,32
    80001d9c:	00050493          	mv	s1,a0
}
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	f60080e7          	jalr	-160(ra) # 80001d00 <_ZN9SemaphoreD1Ev>
    80001da8:	00048513          	mv	a0,s1
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	fb4080e7          	jalr	-76(ra) # 80001d60 <_ZdlPv>
    80001db4:	01813083          	ld	ra,24(sp)
    80001db8:	01013403          	ld	s0,16(sp)
    80001dbc:	00813483          	ld	s1,8(sp)
    80001dc0:	02010113          	addi	sp,sp,32
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00113423          	sd	ra,8(sp)
    80001dd0:	00813023          	sd	s0,0(sp)
    80001dd4:	01010413          	addi	s0,sp,16
}
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f88080e7          	jalr	-120(ra) # 80001d60 <_ZdlPv>
    80001de0:	00813083          	ld	ra,8(sp)
    80001de4:	00013403          	ld	s0,0(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    80001e00:	00008797          	auipc	a5,0x8
    80001e04:	3f878793          	addi	a5,a5,1016 # 8000a1f8 <_ZTV9Semaphore+0x10>
    80001e08:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001e0c:	00850513          	addi	a0,a0,8
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	4b0080e7          	jalr	1200(ra) # 800012c0 <_Z8sem_openPP4_semj>
}
    80001e18:	00813083          	ld	ra,8(sp)
    80001e1c:	00013403          	ld	s0,0(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00113423          	sd	ra,8(sp)
    80001e30:	00813023          	sd	s0,0(sp)
    80001e34:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e38:	00853503          	ld	a0,8(a0)
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	518080e7          	jalr	1304(ra) # 80001354 <_Z8sem_waitP4_sem>
}
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001e64:	00853503          	ld	a0,8(a0)
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	52c080e7          	jalr	1324(ra) # 80001394 <_Z10sem_signalP4_sem>
}
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001e90:	00853503          	ld	a0,8(a0)
    80001e94:	fffff097          	auipc	ra,0xfffff
    80001e98:	540080e7          	jalr	1344(ra) # 800013d4 <_Z11sem_trywaitP4_sem>
}
    80001e9c:	00813083          	ld	ra,8(sp)
    80001ea0:	00013403          	ld	s0,0(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg), myHandle(nullptr){
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813423          	sd	s0,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00008797          	auipc	a5,0x8
    80001ebc:	36078793          	addi	a5,a5,864 # 8000a218 <_ZTV6Thread+0x10>
    80001ec0:	00f53023          	sd	a5,0(a0)
    80001ec4:	00b53423          	sd	a1,8(a0)
    80001ec8:	00c53823          	sd	a2,16(a0)
    80001ecc:	00053c23          	sd	zero,24(a0)
}
    80001ed0:	00813403          	ld	s0,8(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_ZN6Thread5startEv>:
int Thread::start() {
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	00813023          	sd	s0,0(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    thread_create(&myHandle, threadBase, this);
    80001eec:	00050613          	mv	a2,a0
    80001ef0:	00000597          	auipc	a1,0x0
    80001ef4:	dd058593          	addi	a1,a1,-560 # 80001cc0 <_ZN6Thread10threadBaseEPv>
    80001ef8:	01850513          	addi	a0,a0,24
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	2e0080e7          	jalr	736(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001f04:	00000513          	li	a0,0
    80001f08:	00813083          	ld	ra,8(sp)
    80001f0c:	00013403          	ld	s0,0(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	36c080e7          	jalr	876(ra) # 80001294 <_Z15thread_dispatchv>
}
    80001f30:	00813083          	ld	ra,8(sp)
    80001f34:	00013403          	ld	s0,0(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t) {
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    return 0;
}
    80001f4c:	00000513          	li	a0,0
    80001f50:	00813403          	ld	s0,8(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN6ThreadC1Ev>:

Thread::Thread() : body(nullptr), arg(nullptr), myHandle(nullptr){
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00813423          	sd	s0,8(sp)
    80001f64:	01010413          	addi	s0,sp,16
    80001f68:	00008797          	auipc	a5,0x8
    80001f6c:	2b078793          	addi	a5,a5,688 # 8000a218 <_ZTV6Thread+0x10>
    80001f70:	00f53023          	sd	a5,0(a0)
    80001f74:	00053423          	sd	zero,8(a0)
    80001f78:	00053823          	sd	zero,16(a0)
    80001f7c:	00053c23          	sd	zero,24(a0)

}
    80001f80:	00813403          	ld	s0,8(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_ZN7Console4getcEv>:

//CONSOLE
char Console::getc() {
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00113423          	sd	ra,8(sp)
    80001f94:	00813023          	sd	s0,0(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	4b0080e7          	jalr	1200(ra) # 8000144c <_Z4getcv>
}
    80001fa4:	00813083          	ld	ra,8(sp)
    80001fa8:	00013403          	ld	s0,0(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN7Console4putcEc>:

void Console::putc(char ch) {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    ::putc(ch);
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	4bc080e7          	jalr	1212(ra) # 80001480 <_Z4putcc>
}
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00813423          	sd	s0,8(sp)
    80001fe4:	01010413          	addi	s0,sp,16
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/memoryAllocator.hpp"
#include "../h/ccb.hpp"
#include "../h/userSemaphore.hpp"

void Riscv::popSppSpie()
{
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00813423          	sd	s0,8(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");//stores the pc of the previous process to the sepc of the current process so it gets loaded into pc after sret
    80002000:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //writes spp bit of the previous state into the current state, spie bit into sie and sepc into pc
    80002004:	10200073          	sret
    //it enables us to get into user mode by clearing the spp bit with Riscv::mc_sstatus(Riscv::SSTATUS_SPP); before calling
    //popSppSpie. Also it sets SIE to enable interruptions because we wrote in main ms_sstatus(Riscv::SSTATUS_SIE) which enables
    //interrupts, but after calling __asm__ volatile("ecall"); we went into system mode. SIE is now 0 so by calling sret we set
    //it again to 1 which enables interruptions.
}
    80002008:	00813403          	ld	s0,8(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_ZN5Riscv20handleSupervisorTrapEv>:
typedef sysThread* sysThread_t;

class sysSem;
typedef sysSem* sysSem_t;

void Riscv::handleSupervisorTrap() {
    80002014:	f9010113          	addi	sp,sp,-112
    80002018:	06113423          	sd	ra,104(sp)
    8000201c:	06813023          	sd	s0,96(sp)
    80002020:	04913c23          	sd	s1,88(sp)
    80002024:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002028:	142027f3          	csrr	a5,scause
    8000202c:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002030:	fa043703          	ld	a4,-96(s0)
    uint64 volatile param0;
    uint64 volatile param1;
    uint64 volatile param2;
    uint64 volatile param3;

    __asm__ volatile("ld %0, 80(s0)" : "=r" (code));
    80002034:	05043783          	ld	a5,80(s0)
    80002038:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("ld %0, 88(s0)" : "=r" (param0) );
    8000203c:	05843783          	ld	a5,88(s0)
    80002040:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("ld %0, 96(s0)" : "=r" (param1) );
    80002044:	06043783          	ld	a5,96(s0)
    80002048:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("ld %0, 104(s0)" : "=r" (param2) );
    8000204c:	06843783          	ld	a5,104(s0)
    80002050:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("ld %0, 112(s0)" : "=r" (param3) );
    80002054:	07043783          	ld	a5,112(s0)
    80002058:	faf43c23          	sd	a5,-72(s0)



    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
    8000205c:	ff870693          	addi	a3,a4,-8
    80002060:	00100793          	li	a5,1
    80002064:	02d7f863          	bgeu	a5,a3,80002094 <_ZN5Riscv20handleSupervisorTrapEv+0x80>

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scause == 0x8000000000000001UL){
    80002068:	fff00793          	li	a5,-1
    8000206c:	03f79793          	slli	a5,a5,0x3f
    80002070:	00178793          	addi	a5,a5,1
    80002074:	20f70463          	beq	a4,a5,8000227c <_ZN5Riscv20handleSupervisorTrapEv+0x268>
        //Interrupt from timer
        mc_sip(SIP_SSIP);
    }
    else if(scause == 0x8000000000000009UL){
    80002078:	fff00793          	li	a5,-1
    8000207c:	03f79793          	slli	a5,a5,0x3f
    80002080:	00978793          	addi	a5,a5,9
    80002084:	06f71e63          	bne	a4,a5,80002100 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
        //Interrupt from console
        console_handler();
    80002088:	00006097          	auipc	ra,0x6
    8000208c:	b48080e7          	jalr	-1208(ra) # 80007bd0 <console_handler>
    else{
        //unexpected trap cause
        //printInt(scause);
    }

    80002090:	0700006f          	j	80002100 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002094:	141027f3          	csrr	a5,sepc
    80002098:	faf43823          	sd	a5,-80(s0)
    return sepc;
    8000209c:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sepc = r_sepc()	+ 4;
    800020a0:	00478793          	addi	a5,a5,4
    800020a4:	f8f43823          	sd	a5,-112(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020a8:	100027f3          	csrr	a5,sstatus
    800020ac:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800020b0:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus = r_sstatus();
    800020b4:	f8f43c23          	sd	a5,-104(s0)
        switch(code){
    800020b8:	fd843783          	ld	a5,-40(s0)
    800020bc:	04200713          	li	a4,66
    800020c0:	02f76863          	bltu	a4,a5,800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    800020c4:	00279793          	slli	a5,a5,0x2
    800020c8:	00006717          	auipc	a4,0x6
    800020cc:	f5870713          	addi	a4,a4,-168 # 80008020 <CONSOLE_STATUS+0x10>
    800020d0:	00e787b3          	add	a5,a5,a4
    800020d4:	0007a783          	lw	a5,0(a5)
    800020d8:	00e787b3          	add	a5,a5,a4
    800020dc:	00078067          	jr	a5
                ret_addr = memoryAllocator::mem_alloc((size_t)param0);
    800020e0:	fd043503          	ld	a0,-48(s0)
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	71c080e7          	jalr	1820(ra) # 80001800 <_ZN15memoryAllocator9mem_allocEm>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_addr));
    800020ec:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800020f0:	f9843783          	ld	a5,-104(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020f4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800020f8:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020fc:	14179073          	csrw	sepc,a5
    80002100:	06813083          	ld	ra,104(sp)
    80002104:	06013403          	ld	s0,96(sp)
    80002108:	05813483          	ld	s1,88(sp)
    8000210c:	07010113          	addi	sp,sp,112
    80002110:	00008067          	ret
                ret_val = memoryAllocator::mem_free((void*)param0);
    80002114:	fd043503          	ld	a0,-48(s0)
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	86c080e7          	jalr	-1940(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    80002120:	04a43823          	sd	a0,80(s0)
                break;
    80002124:	fcdff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                sysThread_t* handle = (sysThread_t*)param0;
    80002128:	fd043483          	ld	s1,-48(s0)
                void (*start_routine)(void*) = (void (*)(void*))param1;
    8000212c:	fc843503          	ld	a0,-56(s0)
                void* arg = (void*)param2;
    80002130:	fc043583          	ld	a1,-64(s0)
                uint64* stack_space = (uint64*)param3;
    80002134:	fb843603          	ld	a2,-72(s0)
                CCB* thr = CCB::createCoroutine(start_routine, arg, stack_space);
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	9b4080e7          	jalr	-1612(ra) # 80001aec <_ZN3CCB15createCoroutineEPFvPvES0_Pm>
                if(thr != nullptr){
    80002140:	00050a63          	beqz	a0,80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                    *handle = (sysThread_t)thr;
    80002144:	00a4b023          	sd	a0,0(s1)
                    ret_val = 0;
    80002148:	00000793          	li	a5,0
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    8000214c:	04f43823          	sd	a5,80(s0)
                break;
    80002150:	fa1ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    *handle = nullptr;
    80002154:	0004b023          	sd	zero,0(s1)
                    ret_val = -1;
    80002158:	fff00793          	li	a5,-1
    8000215c:	ff1ff06f          	j	8000214c <_ZN5Riscv20handleSupervisorTrapEv+0x138>
                if(CCB::running->isFinished()){
    80002160:	00008797          	auipc	a5,0x8
    80002164:	2a07b783          	ld	a5,672(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002168:	0007b783          	ld	a5,0(a5)
    8000216c:	0287c703          	lbu	a4,40(a5)
    80002170:	02071063          	bnez	a4,80002190 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
    void setFinished(bool value) { finished = value; }
    80002174:	00100713          	li	a4,1
    80002178:	02e78423          	sb	a4,40(a5)
                    ret_val = 0;
    8000217c:	00000493          	li	s1,0
                CCB::dispatch(); //this will change the sp, so when we return from the system mode we will load register values of the new process
    80002180:	00000097          	auipc	ra,0x0
    80002184:	a64080e7          	jalr	-1436(ra) # 80001be4 <_ZN3CCB8dispatchEv>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    80002188:	04943823          	sd	s1,80(s0)
                break;
    8000218c:	f65ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    ret_val = -1;
    80002190:	fff00493          	li	s1,-1
    80002194:	fedff06f          	j	80002180 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                CCB::dispatch();
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	a4c080e7          	jalr	-1460(ra) # 80001be4 <_ZN3CCB8dispatchEv>
                break;
    800021a0:	f51ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                sysSem_t* handle = (sysSem_t*)param0;
    800021a4:	fd043483          	ld	s1,-48(s0)
                if((param0 <= 0)) {
    800021a8:	fd043783          	ld	a5,-48(s0)
    800021ac:	00079a63          	bnez	a5,800021c0 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                    *handle = nullptr;
    800021b0:	0004b023          	sd	zero,0(s1)
                    ret_val = -1;
    800021b4:	fff00793          	li	a5,-1
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    800021b8:	04f43823          	sd	a5,80(s0)
                break;
    800021bc:	f35ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                    currSem = userSemaphore::createSemaphore(param1);
    800021c0:	fc843503          	ld	a0,-56(s0)
    800021c4:	0005051b          	sext.w	a0,a0
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	4d0080e7          	jalr	1232(ra) # 80001698 <_ZN13userSemaphore15createSemaphoreEi>
                    if(currSem != nullptr){
    800021d0:	00050863          	beqz	a0,800021e0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                        *handle = (sysSem_t)currSem;
    800021d4:	00a4b023          	sd	a0,0(s1)
                        ret_val = 0;
    800021d8:	00000793          	li	a5,0
    800021dc:	fddff06f          	j	800021b8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
                        *handle = nullptr;
    800021e0:	0004b023          	sd	zero,0(s1)
                        ret_val = -2;
    800021e4:	ffe00793          	li	a5,-2
    800021e8:	fd1ff06f          	j	800021b8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
                currSem = (userSemaphore*) param0;
    800021ec:	fd043483          	ld	s1,-48(s0)
                delete currSem;
    800021f0:	00049863          	bnez	s1,80002200 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    800021f4:	00000793          	li	a5,0
    800021f8:	04f43823          	sd	a5,80(s0)
                break;
    800021fc:	ef5ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                delete currSem;
    80002200:	00048513          	mv	a0,s1
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	4f0080e7          	jalr	1264(ra) # 800016f4 <_ZN13userSemaphoreD1Ev>
        memoryAllocator::mem_free(p);
    8000220c:	00048513          	mv	a0,s1
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	774080e7          	jalr	1908(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>
    }
    80002218:	fddff06f          	j	800021f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
                currSem = (userSemaphore*)param0;
    8000221c:	fd043503          	ld	a0,-48(s0)
                ret_val = currSem->wait();
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	380080e7          	jalr	896(ra) # 800015a0 <_ZN13userSemaphore4waitEv>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    80002228:	04a43823          	sd	a0,80(s0)
                break;
    8000222c:	ec5ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                currSem = (userSemaphore*)param0;
    80002230:	fd043503          	ld	a0,-48(s0)
                ret_val = currSem->signal();
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	41c080e7          	jalr	1052(ra) # 80001650 <_ZN13userSemaphore6signalEv>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    8000223c:	04a43823          	sd	a0,80(s0)
                break;
    80002240:	eb1ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                currSem = (userSemaphore*)param0;
    80002244:	fd043503          	ld	a0,-48(s0)
                ret_val = currSem->tryWait();
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	270080e7          	jalr	624(ra) # 800014b8 <_ZN13userSemaphore7tryWaitEv>
                __asm__ volatile("sd %0, 80(s0)" : : "r" ((uint64)ret_val));
    80002250:	04a43823          	sd	a0,80(s0)
                break;
    80002254:	e9dff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                ret_val = (uint64)__getc();
    80002258:	00006097          	auipc	ra,0x6
    8000225c:	940080e7          	jalr	-1728(ra) # 80007b98 <__getc>
                __asm__ volatile("sd %0, 80(s0)" : : "r" (ret_val));
    80002260:	04a43823          	sd	a0,80(s0)
                break;
    80002264:	e8dff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
                __putc((char)param0);
    80002268:	fd043503          	ld	a0,-48(s0)
    8000226c:	0ff57513          	andi	a0,a0,255
    80002270:	00006097          	auipc	ra,0x6
    80002274:	8ec080e7          	jalr	-1812(ra) # 80007b5c <__putc>
                break;
    80002278:	e79ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000227c:	00200793          	li	a5,2
    80002280:	1447b073          	csrc	sip,a5
}
    80002284:	e7dff06f          	j	80002100 <_ZN5Riscv20handleSupervisorTrapEv+0xec>

0000000080002288 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813423          	sd	s0,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    80002294:	00100793          	li	a5,1
    80002298:	00f50863          	beq	a0,a5,800022a8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000229c:	00813403          	ld	s0,8(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret
    800022a8:	000107b7          	lui	a5,0x10
    800022ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800022b0:	fef596e3          	bne	a1,a5,8000229c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    800022b4:	00008797          	auipc	a5,0x8
    800022b8:	1c478793          	addi	a5,a5,452 # 8000a478 <_ZN9Scheduler19readyCoroutineQueueE>
    800022bc:	0007b023          	sd	zero,0(a5)
    800022c0:	0007b423          	sd	zero,8(a5)
    800022c4:	fd9ff06f          	j	8000229c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800022c8 <_ZN9Scheduler3getEv>:
{
    800022c8:	fe010113          	addi	sp,sp,-32
    800022cc:	00113c23          	sd	ra,24(sp)
    800022d0:	00813823          	sd	s0,16(sp)
    800022d4:	00913423          	sd	s1,8(sp)
    800022d8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800022dc:	00008517          	auipc	a0,0x8
    800022e0:	19c53503          	ld	a0,412(a0) # 8000a478 <_ZN9Scheduler19readyCoroutineQueueE>
    800022e4:	04050263          	beqz	a0,80002328 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800022e8:	00853783          	ld	a5,8(a0)
    800022ec:	00008717          	auipc	a4,0x8
    800022f0:	18f73623          	sd	a5,396(a4) # 8000a478 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800022f4:	02078463          	beqz	a5,8000231c <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800022f8:	00053483          	ld	s1,0(a0)
            memoryAllocator::mem_free(p);
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	688080e7          	jalr	1672(ra) # 80001984 <_ZN15memoryAllocator8mem_freeEPv>
}
    80002304:	00048513          	mv	a0,s1
    80002308:	01813083          	ld	ra,24(sp)
    8000230c:	01013403          	ld	s0,16(sp)
    80002310:	00813483          	ld	s1,8(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret
        if (!head) { tail = 0; }
    8000231c:	00008797          	auipc	a5,0x8
    80002320:	1607b223          	sd	zero,356(a5) # 8000a480 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002324:	fd5ff06f          	j	800022f8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002328:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    8000232c:	fd9ff06f          	j	80002304 <_ZN9Scheduler3getEv+0x3c>

0000000080002330 <_ZN9Scheduler3putEP3CCB>:
{
    80002330:	fd010113          	addi	sp,sp,-48
    80002334:	02113423          	sd	ra,40(sp)
    80002338:	02813023          	sd	s0,32(sp)
    8000233c:	00913c23          	sd	s1,24(sp)
    80002340:	03010413          	addi	s0,sp,48
    80002344:	00050493          	mv	s1,a0
            uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
    80002348:	fc043c23          	sd	zero,-40(s0)
            if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;
    8000234c:	fd843783          	ld	a5,-40(s0)
    80002350:	00178793          	addi	a5,a5,1
    80002354:	fcf43c23          	sd	a5,-40(s0)
            return memoryAllocator::mem_alloc(num_of_blocks);
    80002358:	fd843503          	ld	a0,-40(s0)
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	4a4080e7          	jalr	1188(ra) # 80001800 <_ZN15memoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002364:	00953023          	sd	s1,0(a0)
    80002368:	00053423          	sd	zero,8(a0)
        if (tail)
    8000236c:	00008797          	auipc	a5,0x8
    80002370:	1147b783          	ld	a5,276(a5) # 8000a480 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002374:	02078263          	beqz	a5,80002398 <_ZN9Scheduler3putEP3CCB+0x68>
            tail->next = elem;
    80002378:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000237c:	00008797          	auipc	a5,0x8
    80002380:	10a7b223          	sd	a0,260(a5) # 8000a480 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002384:	02813083          	ld	ra,40(sp)
    80002388:	02013403          	ld	s0,32(sp)
    8000238c:	01813483          	ld	s1,24(sp)
    80002390:	03010113          	addi	sp,sp,48
    80002394:	00008067          	ret
            head = tail = elem;
    80002398:	00008797          	auipc	a5,0x8
    8000239c:	0e078793          	addi	a5,a5,224 # 8000a478 <_ZN9Scheduler19readyCoroutineQueueE>
    800023a0:	00a7b423          	sd	a0,8(a5)
    800023a4:	00a7b023          	sd	a0,0(a5)
    800023a8:	fddff06f          	j	80002384 <_ZN9Scheduler3putEP3CCB+0x54>

00000000800023ac <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00113423          	sd	ra,8(sp)
    800023b4:	00813023          	sd	s0,0(sp)
    800023b8:	01010413          	addi	s0,sp,16
    800023bc:	000105b7          	lui	a1,0x10
    800023c0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800023c4:	00100513          	li	a0,1
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	ec0080e7          	jalr	-320(ra) # 80002288 <_Z41__static_initialization_and_destruction_0ii>
    800023d0:	00813083          	ld	ra,8(sp)
    800023d4:	00013403          	ld	s0,0(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800023e0:	fe010113          	addi	sp,sp,-32
    800023e4:	00113c23          	sd	ra,24(sp)
    800023e8:	00813823          	sd	s0,16(sp)
    800023ec:	00913423          	sd	s1,8(sp)
    800023f0:	01213023          	sd	s2,0(sp)
    800023f4:	02010413          	addi	s0,sp,32
    800023f8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800023fc:	00000913          	li	s2,0
    80002400:	00c0006f          	j	8000240c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	e90080e7          	jalr	-368(ra) # 80001294 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	040080e7          	jalr	64(ra) # 8000144c <_Z4getcv>
    80002414:	0005059b          	sext.w	a1,a0
    80002418:	01b00793          	li	a5,27
    8000241c:	02f58a63          	beq	a1,a5,80002450 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002420:	0084b503          	ld	a0,8(s1)
    80002424:	00003097          	auipc	ra,0x3
    80002428:	3f4080e7          	jalr	1012(ra) # 80005818 <_ZN6Buffer3putEi>
        i++;
    8000242c:	0019071b          	addiw	a4,s2,1
    80002430:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002434:	0004a683          	lw	a3,0(s1)
    80002438:	0026979b          	slliw	a5,a3,0x2
    8000243c:	00d787bb          	addw	a5,a5,a3
    80002440:	0017979b          	slliw	a5,a5,0x1
    80002444:	02f767bb          	remw	a5,a4,a5
    80002448:	fc0792e3          	bnez	a5,8000240c <_ZL16producerKeyboardPv+0x2c>
    8000244c:	fb9ff06f          	j	80002404 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002450:	00100793          	li	a5,1
    80002454:	00008717          	auipc	a4,0x8
    80002458:	02f72a23          	sw	a5,52(a4) # 8000a488 <_ZL9threadEnd>
    data->buffer->put('!');
    8000245c:	02100593          	li	a1,33
    80002460:	0084b503          	ld	a0,8(s1)
    80002464:	00003097          	auipc	ra,0x3
    80002468:	3b4080e7          	jalr	948(ra) # 80005818 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000246c:	0104b503          	ld	a0,16(s1)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	f24080e7          	jalr	-220(ra) # 80001394 <_Z10sem_signalP4_sem>
}
    80002478:	01813083          	ld	ra,24(sp)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	00813483          	ld	s1,8(sp)
    80002484:	00013903          	ld	s2,0(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00008067          	ret

0000000080002490 <_ZL8producerPv>:

static void producer(void *arg) {
    80002490:	fe010113          	addi	sp,sp,-32
    80002494:	00113c23          	sd	ra,24(sp)
    80002498:	00813823          	sd	s0,16(sp)
    8000249c:	00913423          	sd	s1,8(sp)
    800024a0:	01213023          	sd	s2,0(sp)
    800024a4:	02010413          	addi	s0,sp,32
    800024a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800024ac:	00000913          	li	s2,0
    800024b0:	00c0006f          	j	800024bc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	de0080e7          	jalr	-544(ra) # 80001294 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800024bc:	00008797          	auipc	a5,0x8
    800024c0:	fcc7a783          	lw	a5,-52(a5) # 8000a488 <_ZL9threadEnd>
    800024c4:	02079e63          	bnez	a5,80002500 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800024c8:	0004a583          	lw	a1,0(s1)
    800024cc:	0305859b          	addiw	a1,a1,48
    800024d0:	0084b503          	ld	a0,8(s1)
    800024d4:	00003097          	auipc	ra,0x3
    800024d8:	344080e7          	jalr	836(ra) # 80005818 <_ZN6Buffer3putEi>
        i++;
    800024dc:	0019071b          	addiw	a4,s2,1
    800024e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024e4:	0004a683          	lw	a3,0(s1)
    800024e8:	0026979b          	slliw	a5,a3,0x2
    800024ec:	00d787bb          	addw	a5,a5,a3
    800024f0:	0017979b          	slliw	a5,a5,0x1
    800024f4:	02f767bb          	remw	a5,a4,a5
    800024f8:	fc0792e3          	bnez	a5,800024bc <_ZL8producerPv+0x2c>
    800024fc:	fb9ff06f          	j	800024b4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002500:	0104b503          	ld	a0,16(s1)
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	e90080e7          	jalr	-368(ra) # 80001394 <_Z10sem_signalP4_sem>
}
    8000250c:	01813083          	ld	ra,24(sp)
    80002510:	01013403          	ld	s0,16(sp)
    80002514:	00813483          	ld	s1,8(sp)
    80002518:	00013903          	ld	s2,0(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret

0000000080002524 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002524:	fd010113          	addi	sp,sp,-48
    80002528:	02113423          	sd	ra,40(sp)
    8000252c:	02813023          	sd	s0,32(sp)
    80002530:	00913c23          	sd	s1,24(sp)
    80002534:	01213823          	sd	s2,16(sp)
    80002538:	01313423          	sd	s3,8(sp)
    8000253c:	03010413          	addi	s0,sp,48
    80002540:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002544:	00000993          	li	s3,0
    80002548:	01c0006f          	j	80002564 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	d48080e7          	jalr	-696(ra) # 80001294 <_Z15thread_dispatchv>
    80002554:	0500006f          	j	800025a4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002558:	00a00513          	li	a0,10
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	f24080e7          	jalr	-220(ra) # 80001480 <_Z4putcc>
    while (!threadEnd) {
    80002564:	00008797          	auipc	a5,0x8
    80002568:	f247a783          	lw	a5,-220(a5) # 8000a488 <_ZL9threadEnd>
    8000256c:	06079063          	bnez	a5,800025cc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002570:	00893503          	ld	a0,8(s2)
    80002574:	00003097          	auipc	ra,0x3
    80002578:	334080e7          	jalr	820(ra) # 800058a8 <_ZN6Buffer3getEv>
        i++;
    8000257c:	0019849b          	addiw	s1,s3,1
    80002580:	0004899b          	sext.w	s3,s1
        putc(key);
    80002584:	0ff57513          	andi	a0,a0,255
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	ef8080e7          	jalr	-264(ra) # 80001480 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002590:	00092703          	lw	a4,0(s2)
    80002594:	0027179b          	slliw	a5,a4,0x2
    80002598:	00e787bb          	addw	a5,a5,a4
    8000259c:	02f4e7bb          	remw	a5,s1,a5
    800025a0:	fa0786e3          	beqz	a5,8000254c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800025a4:	05000793          	li	a5,80
    800025a8:	02f4e4bb          	remw	s1,s1,a5
    800025ac:	fa049ce3          	bnez	s1,80002564 <_ZL8consumerPv+0x40>
    800025b0:	fa9ff06f          	j	80002558 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800025b4:	00893503          	ld	a0,8(s2)
    800025b8:	00003097          	auipc	ra,0x3
    800025bc:	2f0080e7          	jalr	752(ra) # 800058a8 <_ZN6Buffer3getEv>
        putc(key);
    800025c0:	0ff57513          	andi	a0,a0,255
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	ebc080e7          	jalr	-324(ra) # 80001480 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800025cc:	00893503          	ld	a0,8(s2)
    800025d0:	00003097          	auipc	ra,0x3
    800025d4:	364080e7          	jalr	868(ra) # 80005934 <_ZN6Buffer6getCntEv>
    800025d8:	fca04ee3          	bgtz	a0,800025b4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800025dc:	01093503          	ld	a0,16(s2)
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	db4080e7          	jalr	-588(ra) # 80001394 <_Z10sem_signalP4_sem>
}
    800025e8:	02813083          	ld	ra,40(sp)
    800025ec:	02013403          	ld	s0,32(sp)
    800025f0:	01813483          	ld	s1,24(sp)
    800025f4:	01013903          	ld	s2,16(sp)
    800025f8:	00813983          	ld	s3,8(sp)
    800025fc:	03010113          	addi	sp,sp,48
    80002600:	00008067          	ret

0000000080002604 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002604:	f9010113          	addi	sp,sp,-112
    80002608:	06113423          	sd	ra,104(sp)
    8000260c:	06813023          	sd	s0,96(sp)
    80002610:	04913c23          	sd	s1,88(sp)
    80002614:	05213823          	sd	s2,80(sp)
    80002618:	05313423          	sd	s3,72(sp)
    8000261c:	05413023          	sd	s4,64(sp)
    80002620:	03513c23          	sd	s5,56(sp)
    80002624:	03613823          	sd	s6,48(sp)
    80002628:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000262c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002630:	00006517          	auipc	a0,0x6
    80002634:	b0050513          	addi	a0,a0,-1280 # 80008130 <CONSOLE_STATUS+0x120>
    80002638:	00002097          	auipc	ra,0x2
    8000263c:	220080e7          	jalr	544(ra) # 80004858 <_Z11printStringPKc>
    getString(input, 30);
    80002640:	01e00593          	li	a1,30
    80002644:	fa040493          	addi	s1,s0,-96
    80002648:	00048513          	mv	a0,s1
    8000264c:	00002097          	auipc	ra,0x2
    80002650:	294080e7          	jalr	660(ra) # 800048e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002654:	00048513          	mv	a0,s1
    80002658:	00002097          	auipc	ra,0x2
    8000265c:	360080e7          	jalr	864(ra) # 800049b8 <_Z11stringToIntPKc>
    80002660:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002664:	00006517          	auipc	a0,0x6
    80002668:	aec50513          	addi	a0,a0,-1300 # 80008150 <CONSOLE_STATUS+0x140>
    8000266c:	00002097          	auipc	ra,0x2
    80002670:	1ec080e7          	jalr	492(ra) # 80004858 <_Z11printStringPKc>
    getString(input, 30);
    80002674:	01e00593          	li	a1,30
    80002678:	00048513          	mv	a0,s1
    8000267c:	00002097          	auipc	ra,0x2
    80002680:	264080e7          	jalr	612(ra) # 800048e0 <_Z9getStringPci>
    n = stringToInt(input);
    80002684:	00048513          	mv	a0,s1
    80002688:	00002097          	auipc	ra,0x2
    8000268c:	330080e7          	jalr	816(ra) # 800049b8 <_Z11stringToIntPKc>
    80002690:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002694:	00006517          	auipc	a0,0x6
    80002698:	adc50513          	addi	a0,a0,-1316 # 80008170 <CONSOLE_STATUS+0x160>
    8000269c:	00002097          	auipc	ra,0x2
    800026a0:	1bc080e7          	jalr	444(ra) # 80004858 <_Z11printStringPKc>
    800026a4:	00000613          	li	a2,0
    800026a8:	00a00593          	li	a1,10
    800026ac:	00090513          	mv	a0,s2
    800026b0:	00002097          	auipc	ra,0x2
    800026b4:	358080e7          	jalr	856(ra) # 80004a08 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800026b8:	00006517          	auipc	a0,0x6
    800026bc:	ad050513          	addi	a0,a0,-1328 # 80008188 <CONSOLE_STATUS+0x178>
    800026c0:	00002097          	auipc	ra,0x2
    800026c4:	198080e7          	jalr	408(ra) # 80004858 <_Z11printStringPKc>
    800026c8:	00000613          	li	a2,0
    800026cc:	00a00593          	li	a1,10
    800026d0:	00048513          	mv	a0,s1
    800026d4:	00002097          	auipc	ra,0x2
    800026d8:	334080e7          	jalr	820(ra) # 80004a08 <_Z8printIntiii>
    printString(".\n");
    800026dc:	00006517          	auipc	a0,0x6
    800026e0:	ac450513          	addi	a0,a0,-1340 # 800081a0 <CONSOLE_STATUS+0x190>
    800026e4:	00002097          	auipc	ra,0x2
    800026e8:	174080e7          	jalr	372(ra) # 80004858 <_Z11printStringPKc>
    if(threadNum > n) {
    800026ec:	0324c463          	blt	s1,s2,80002714 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800026f0:	03205c63          	blez	s2,80002728 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800026f4:	03800513          	li	a0,56
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	640080e7          	jalr	1600(ra) # 80001d38 <_Znwm>
    80002700:	00050a13          	mv	s4,a0
    80002704:	00048593          	mv	a1,s1
    80002708:	00003097          	auipc	ra,0x3
    8000270c:	074080e7          	jalr	116(ra) # 8000577c <_ZN6BufferC1Ei>
    80002710:	0300006f          	j	80002740 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002714:	00006517          	auipc	a0,0x6
    80002718:	a9450513          	addi	a0,a0,-1388 # 800081a8 <CONSOLE_STATUS+0x198>
    8000271c:	00002097          	auipc	ra,0x2
    80002720:	13c080e7          	jalr	316(ra) # 80004858 <_Z11printStringPKc>
        return;
    80002724:	0140006f          	j	80002738 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002728:	00006517          	auipc	a0,0x6
    8000272c:	ac050513          	addi	a0,a0,-1344 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002730:	00002097          	auipc	ra,0x2
    80002734:	128080e7          	jalr	296(ra) # 80004858 <_Z11printStringPKc>
        return;
    80002738:	000b0113          	mv	sp,s6
    8000273c:	1500006f          	j	8000288c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002740:	00000593          	li	a1,0
    80002744:	00008517          	auipc	a0,0x8
    80002748:	d4c50513          	addi	a0,a0,-692 # 8000a490 <_ZL10waitForAll>
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	b74080e7          	jalr	-1164(ra) # 800012c0 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002754:	00391793          	slli	a5,s2,0x3
    80002758:	00f78793          	addi	a5,a5,15
    8000275c:	ff07f793          	andi	a5,a5,-16
    80002760:	40f10133          	sub	sp,sp,a5
    80002764:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002768:	0019071b          	addiw	a4,s2,1
    8000276c:	00171793          	slli	a5,a4,0x1
    80002770:	00e787b3          	add	a5,a5,a4
    80002774:	00379793          	slli	a5,a5,0x3
    80002778:	00f78793          	addi	a5,a5,15
    8000277c:	ff07f793          	andi	a5,a5,-16
    80002780:	40f10133          	sub	sp,sp,a5
    80002784:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002788:	00191613          	slli	a2,s2,0x1
    8000278c:	012607b3          	add	a5,a2,s2
    80002790:	00379793          	slli	a5,a5,0x3
    80002794:	00f987b3          	add	a5,s3,a5
    80002798:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000279c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800027a0:	00008717          	auipc	a4,0x8
    800027a4:	cf073703          	ld	a4,-784(a4) # 8000a490 <_ZL10waitForAll>
    800027a8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800027ac:	00078613          	mv	a2,a5
    800027b0:	00000597          	auipc	a1,0x0
    800027b4:	d7458593          	addi	a1,a1,-652 # 80002524 <_ZL8consumerPv>
    800027b8:	f9840513          	addi	a0,s0,-104
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	a20080e7          	jalr	-1504(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800027c4:	00000493          	li	s1,0
    800027c8:	0280006f          	j	800027f0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800027cc:	00000597          	auipc	a1,0x0
    800027d0:	c1458593          	addi	a1,a1,-1004 # 800023e0 <_ZL16producerKeyboardPv>
                      data + i);
    800027d4:	00179613          	slli	a2,a5,0x1
    800027d8:	00f60633          	add	a2,a2,a5
    800027dc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800027e0:	00c98633          	add	a2,s3,a2
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	9f8080e7          	jalr	-1544(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800027ec:	0014849b          	addiw	s1,s1,1
    800027f0:	0524d263          	bge	s1,s2,80002834 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800027f4:	00149793          	slli	a5,s1,0x1
    800027f8:	009787b3          	add	a5,a5,s1
    800027fc:	00379793          	slli	a5,a5,0x3
    80002800:	00f987b3          	add	a5,s3,a5
    80002804:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002808:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000280c:	00008717          	auipc	a4,0x8
    80002810:	c8473703          	ld	a4,-892(a4) # 8000a490 <_ZL10waitForAll>
    80002814:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002818:	00048793          	mv	a5,s1
    8000281c:	00349513          	slli	a0,s1,0x3
    80002820:	00aa8533          	add	a0,s5,a0
    80002824:	fa9054e3          	blez	s1,800027cc <_Z22producerConsumer_C_APIv+0x1c8>
    80002828:	00000597          	auipc	a1,0x0
    8000282c:	c6858593          	addi	a1,a1,-920 # 80002490 <_ZL8producerPv>
    80002830:	fa5ff06f          	j	800027d4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	a60080e7          	jalr	-1440(ra) # 80001294 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000283c:	00000493          	li	s1,0
    80002840:	00994e63          	blt	s2,s1,8000285c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002844:	00008517          	auipc	a0,0x8
    80002848:	c4c53503          	ld	a0,-948(a0) # 8000a490 <_ZL10waitForAll>
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	b08080e7          	jalr	-1272(ra) # 80001354 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002854:	0014849b          	addiw	s1,s1,1
    80002858:	fe9ff06f          	j	80002840 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000285c:	00008517          	auipc	a0,0x8
    80002860:	c3453503          	ld	a0,-972(a0) # 8000a490 <_ZL10waitForAll>
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	ab0080e7          	jalr	-1360(ra) # 80001314 <_Z9sem_closeP4_sem>
    delete buffer;
    8000286c:	000a0e63          	beqz	s4,80002888 <_Z22producerConsumer_C_APIv+0x284>
    80002870:	000a0513          	mv	a0,s4
    80002874:	00003097          	auipc	ra,0x3
    80002878:	148080e7          	jalr	328(ra) # 800059bc <_ZN6BufferD1Ev>
    8000287c:	000a0513          	mv	a0,s4
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	4e0080e7          	jalr	1248(ra) # 80001d60 <_ZdlPv>
    80002888:	000b0113          	mv	sp,s6

}
    8000288c:	f9040113          	addi	sp,s0,-112
    80002890:	06813083          	ld	ra,104(sp)
    80002894:	06013403          	ld	s0,96(sp)
    80002898:	05813483          	ld	s1,88(sp)
    8000289c:	05013903          	ld	s2,80(sp)
    800028a0:	04813983          	ld	s3,72(sp)
    800028a4:	04013a03          	ld	s4,64(sp)
    800028a8:	03813a83          	ld	s5,56(sp)
    800028ac:	03013b03          	ld	s6,48(sp)
    800028b0:	07010113          	addi	sp,sp,112
    800028b4:	00008067          	ret
    800028b8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800028bc:	000a0513          	mv	a0,s4
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	4a0080e7          	jalr	1184(ra) # 80001d60 <_ZdlPv>
    800028c8:	00048513          	mv	a0,s1
    800028cc:	00009097          	auipc	ra,0x9
    800028d0:	cdc080e7          	jalr	-804(ra) # 8000b5a8 <_Unwind_Resume>

00000000800028d4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800028d4:	fe010113          	addi	sp,sp,-32
    800028d8:	00113c23          	sd	ra,24(sp)
    800028dc:	00813823          	sd	s0,16(sp)
    800028e0:	00913423          	sd	s1,8(sp)
    800028e4:	01213023          	sd	s2,0(sp)
    800028e8:	02010413          	addi	s0,sp,32
    800028ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800028f0:	00100793          	li	a5,1
    800028f4:	02a7f863          	bgeu	a5,a0,80002924 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800028f8:	00a00793          	li	a5,10
    800028fc:	02f577b3          	remu	a5,a0,a5
    80002900:	02078e63          	beqz	a5,8000293c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002904:	fff48513          	addi	a0,s1,-1
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	fcc080e7          	jalr	-52(ra) # 800028d4 <_ZL9fibonaccim>
    80002910:	00050913          	mv	s2,a0
    80002914:	ffe48513          	addi	a0,s1,-2
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	fbc080e7          	jalr	-68(ra) # 800028d4 <_ZL9fibonaccim>
    80002920:	00a90533          	add	a0,s2,a0
}
    80002924:	01813083          	ld	ra,24(sp)
    80002928:	01013403          	ld	s0,16(sp)
    8000292c:	00813483          	ld	s1,8(sp)
    80002930:	00013903          	ld	s2,0(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	958080e7          	jalr	-1704(ra) # 80001294 <_Z15thread_dispatchv>
    80002944:	fc1ff06f          	j	80002904 <_ZL9fibonaccim+0x30>

0000000080002948 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	01213023          	sd	s2,0(sp)
    8000295c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002960:	00000913          	li	s2,0
    80002964:	0380006f          	j	8000299c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	92c080e7          	jalr	-1748(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002970:	00148493          	addi	s1,s1,1
    80002974:	000027b7          	lui	a5,0x2
    80002978:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000297c:	0097ee63          	bltu	a5,s1,80002998 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002980:	00000713          	li	a4,0
    80002984:	000077b7          	lui	a5,0x7
    80002988:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000298c:	fce7eee3          	bltu	a5,a4,80002968 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002990:	00170713          	addi	a4,a4,1
    80002994:	ff1ff06f          	j	80002984 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002998:	00190913          	addi	s2,s2,1
    8000299c:	00900793          	li	a5,9
    800029a0:	0527e063          	bltu	a5,s2,800029e0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800029a4:	00006517          	auipc	a0,0x6
    800029a8:	87450513          	addi	a0,a0,-1932 # 80008218 <CONSOLE_STATUS+0x208>
    800029ac:	00002097          	auipc	ra,0x2
    800029b0:	eac080e7          	jalr	-340(ra) # 80004858 <_Z11printStringPKc>
    800029b4:	00000613          	li	a2,0
    800029b8:	00a00593          	li	a1,10
    800029bc:	0009051b          	sext.w	a0,s2
    800029c0:	00002097          	auipc	ra,0x2
    800029c4:	048080e7          	jalr	72(ra) # 80004a08 <_Z8printIntiii>
    800029c8:	00006517          	auipc	a0,0x6
    800029cc:	ad050513          	addi	a0,a0,-1328 # 80008498 <CONSOLE_STATUS+0x488>
    800029d0:	00002097          	auipc	ra,0x2
    800029d4:	e88080e7          	jalr	-376(ra) # 80004858 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800029d8:	00000493          	li	s1,0
    800029dc:	f99ff06f          	j	80002974 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800029e0:	00006517          	auipc	a0,0x6
    800029e4:	84050513          	addi	a0,a0,-1984 # 80008220 <CONSOLE_STATUS+0x210>
    800029e8:	00002097          	auipc	ra,0x2
    800029ec:	e70080e7          	jalr	-400(ra) # 80004858 <_Z11printStringPKc>
    finishedA = true;
    800029f0:	00100793          	li	a5,1
    800029f4:	00008717          	auipc	a4,0x8
    800029f8:	aaf70223          	sb	a5,-1372(a4) # 8000a498 <_ZL9finishedA>
}
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	00013903          	ld	s2,0(sp)
    80002a0c:	02010113          	addi	sp,sp,32
    80002a10:	00008067          	ret

0000000080002a14 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002a14:	fe010113          	addi	sp,sp,-32
    80002a18:	00113c23          	sd	ra,24(sp)
    80002a1c:	00813823          	sd	s0,16(sp)
    80002a20:	00913423          	sd	s1,8(sp)
    80002a24:	01213023          	sd	s2,0(sp)
    80002a28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a2c:	00000913          	li	s2,0
    80002a30:	0380006f          	j	80002a68 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	860080e7          	jalr	-1952(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a3c:	00148493          	addi	s1,s1,1
    80002a40:	000027b7          	lui	a5,0x2
    80002a44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a48:	0097ee63          	bltu	a5,s1,80002a64 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a4c:	00000713          	li	a4,0
    80002a50:	000077b7          	lui	a5,0x7
    80002a54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a58:	fce7eee3          	bltu	a5,a4,80002a34 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002a5c:	00170713          	addi	a4,a4,1
    80002a60:	ff1ff06f          	j	80002a50 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002a64:	00190913          	addi	s2,s2,1
    80002a68:	00f00793          	li	a5,15
    80002a6c:	0527e063          	bltu	a5,s2,80002aac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a70:	00005517          	auipc	a0,0x5
    80002a74:	7c050513          	addi	a0,a0,1984 # 80008230 <CONSOLE_STATUS+0x220>
    80002a78:	00002097          	auipc	ra,0x2
    80002a7c:	de0080e7          	jalr	-544(ra) # 80004858 <_Z11printStringPKc>
    80002a80:	00000613          	li	a2,0
    80002a84:	00a00593          	li	a1,10
    80002a88:	0009051b          	sext.w	a0,s2
    80002a8c:	00002097          	auipc	ra,0x2
    80002a90:	f7c080e7          	jalr	-132(ra) # 80004a08 <_Z8printIntiii>
    80002a94:	00006517          	auipc	a0,0x6
    80002a98:	a0450513          	addi	a0,a0,-1532 # 80008498 <CONSOLE_STATUS+0x488>
    80002a9c:	00002097          	auipc	ra,0x2
    80002aa0:	dbc080e7          	jalr	-580(ra) # 80004858 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002aa4:	00000493          	li	s1,0
    80002aa8:	f99ff06f          	j	80002a40 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002aac:	00005517          	auipc	a0,0x5
    80002ab0:	78c50513          	addi	a0,a0,1932 # 80008238 <CONSOLE_STATUS+0x228>
    80002ab4:	00002097          	auipc	ra,0x2
    80002ab8:	da4080e7          	jalr	-604(ra) # 80004858 <_Z11printStringPKc>
    finishedB = true;
    80002abc:	00100793          	li	a5,1
    80002ac0:	00008717          	auipc	a4,0x8
    80002ac4:	9cf70ca3          	sb	a5,-1575(a4) # 8000a499 <_ZL9finishedB>
    thread_dispatch();
    80002ac8:	ffffe097          	auipc	ra,0xffffe
    80002acc:	7cc080e7          	jalr	1996(ra) # 80001294 <_Z15thread_dispatchv>
}
    80002ad0:	01813083          	ld	ra,24(sp)
    80002ad4:	01013403          	ld	s0,16(sp)
    80002ad8:	00813483          	ld	s1,8(sp)
    80002adc:	00013903          	ld	s2,0(sp)
    80002ae0:	02010113          	addi	sp,sp,32
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002ae8:	fe010113          	addi	sp,sp,-32
    80002aec:	00113c23          	sd	ra,24(sp)
    80002af0:	00813823          	sd	s0,16(sp)
    80002af4:	00913423          	sd	s1,8(sp)
    80002af8:	01213023          	sd	s2,0(sp)
    80002afc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002b00:	00000493          	li	s1,0
    80002b04:	0400006f          	j	80002b44 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002b08:	00005517          	auipc	a0,0x5
    80002b0c:	74050513          	addi	a0,a0,1856 # 80008248 <CONSOLE_STATUS+0x238>
    80002b10:	00002097          	auipc	ra,0x2
    80002b14:	d48080e7          	jalr	-696(ra) # 80004858 <_Z11printStringPKc>
    80002b18:	00000613          	li	a2,0
    80002b1c:	00a00593          	li	a1,10
    80002b20:	00048513          	mv	a0,s1
    80002b24:	00002097          	auipc	ra,0x2
    80002b28:	ee4080e7          	jalr	-284(ra) # 80004a08 <_Z8printIntiii>
    80002b2c:	00006517          	auipc	a0,0x6
    80002b30:	96c50513          	addi	a0,a0,-1684 # 80008498 <CONSOLE_STATUS+0x488>
    80002b34:	00002097          	auipc	ra,0x2
    80002b38:	d24080e7          	jalr	-732(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b3c:	0014849b          	addiw	s1,s1,1
    80002b40:	0ff4f493          	andi	s1,s1,255
    80002b44:	00200793          	li	a5,2
    80002b48:	fc97f0e3          	bgeu	a5,s1,80002b08 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002b4c:	00005517          	auipc	a0,0x5
    80002b50:	70450513          	addi	a0,a0,1796 # 80008250 <CONSOLE_STATUS+0x240>
    80002b54:	00002097          	auipc	ra,0x2
    80002b58:	d04080e7          	jalr	-764(ra) # 80004858 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b5c:	00700313          	li	t1,7
    thread_dispatch();
    80002b60:	ffffe097          	auipc	ra,0xffffe
    80002b64:	734080e7          	jalr	1844(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b68:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002b6c:	00005517          	auipc	a0,0x5
    80002b70:	6f450513          	addi	a0,a0,1780 # 80008260 <CONSOLE_STATUS+0x250>
    80002b74:	00002097          	auipc	ra,0x2
    80002b78:	ce4080e7          	jalr	-796(ra) # 80004858 <_Z11printStringPKc>
    80002b7c:	00000613          	li	a2,0
    80002b80:	00a00593          	li	a1,10
    80002b84:	0009051b          	sext.w	a0,s2
    80002b88:	00002097          	auipc	ra,0x2
    80002b8c:	e80080e7          	jalr	-384(ra) # 80004a08 <_Z8printIntiii>
    80002b90:	00006517          	auipc	a0,0x6
    80002b94:	90850513          	addi	a0,a0,-1784 # 80008498 <CONSOLE_STATUS+0x488>
    80002b98:	00002097          	auipc	ra,0x2
    80002b9c:	cc0080e7          	jalr	-832(ra) # 80004858 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002ba0:	00c00513          	li	a0,12
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	d30080e7          	jalr	-720(ra) # 800028d4 <_ZL9fibonaccim>
    80002bac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002bb0:	00005517          	auipc	a0,0x5
    80002bb4:	6b850513          	addi	a0,a0,1720 # 80008268 <CONSOLE_STATUS+0x258>
    80002bb8:	00002097          	auipc	ra,0x2
    80002bbc:	ca0080e7          	jalr	-864(ra) # 80004858 <_Z11printStringPKc>
    80002bc0:	00000613          	li	a2,0
    80002bc4:	00a00593          	li	a1,10
    80002bc8:	0009051b          	sext.w	a0,s2
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	e3c080e7          	jalr	-452(ra) # 80004a08 <_Z8printIntiii>
    80002bd4:	00006517          	auipc	a0,0x6
    80002bd8:	8c450513          	addi	a0,a0,-1852 # 80008498 <CONSOLE_STATUS+0x488>
    80002bdc:	00002097          	auipc	ra,0x2
    80002be0:	c7c080e7          	jalr	-900(ra) # 80004858 <_Z11printStringPKc>
    80002be4:	0400006f          	j	80002c24 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002be8:	00005517          	auipc	a0,0x5
    80002bec:	66050513          	addi	a0,a0,1632 # 80008248 <CONSOLE_STATUS+0x238>
    80002bf0:	00002097          	auipc	ra,0x2
    80002bf4:	c68080e7          	jalr	-920(ra) # 80004858 <_Z11printStringPKc>
    80002bf8:	00000613          	li	a2,0
    80002bfc:	00a00593          	li	a1,10
    80002c00:	00048513          	mv	a0,s1
    80002c04:	00002097          	auipc	ra,0x2
    80002c08:	e04080e7          	jalr	-508(ra) # 80004a08 <_Z8printIntiii>
    80002c0c:	00006517          	auipc	a0,0x6
    80002c10:	88c50513          	addi	a0,a0,-1908 # 80008498 <CONSOLE_STATUS+0x488>
    80002c14:	00002097          	auipc	ra,0x2
    80002c18:	c44080e7          	jalr	-956(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002c1c:	0014849b          	addiw	s1,s1,1
    80002c20:	0ff4f493          	andi	s1,s1,255
    80002c24:	00500793          	li	a5,5
    80002c28:	fc97f0e3          	bgeu	a5,s1,80002be8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002c2c:	00005517          	auipc	a0,0x5
    80002c30:	5f450513          	addi	a0,a0,1524 # 80008220 <CONSOLE_STATUS+0x210>
    80002c34:	00002097          	auipc	ra,0x2
    80002c38:	c24080e7          	jalr	-988(ra) # 80004858 <_Z11printStringPKc>
    finishedC = true;
    80002c3c:	00100793          	li	a5,1
    80002c40:	00008717          	auipc	a4,0x8
    80002c44:	84f70d23          	sb	a5,-1958(a4) # 8000a49a <_ZL9finishedC>
    thread_dispatch();
    80002c48:	ffffe097          	auipc	ra,0xffffe
    80002c4c:	64c080e7          	jalr	1612(ra) # 80001294 <_Z15thread_dispatchv>
}
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00813483          	ld	s1,8(sp)
    80002c5c:	00013903          	ld	s2,0(sp)
    80002c60:	02010113          	addi	sp,sp,32
    80002c64:	00008067          	ret

0000000080002c68 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002c68:	fe010113          	addi	sp,sp,-32
    80002c6c:	00113c23          	sd	ra,24(sp)
    80002c70:	00813823          	sd	s0,16(sp)
    80002c74:	00913423          	sd	s1,8(sp)
    80002c78:	01213023          	sd	s2,0(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c80:	00a00493          	li	s1,10
    80002c84:	0400006f          	j	80002cc4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c88:	00005517          	auipc	a0,0x5
    80002c8c:	5f050513          	addi	a0,a0,1520 # 80008278 <CONSOLE_STATUS+0x268>
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	bc8080e7          	jalr	-1080(ra) # 80004858 <_Z11printStringPKc>
    80002c98:	00000613          	li	a2,0
    80002c9c:	00a00593          	li	a1,10
    80002ca0:	00048513          	mv	a0,s1
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	d64080e7          	jalr	-668(ra) # 80004a08 <_Z8printIntiii>
    80002cac:	00005517          	auipc	a0,0x5
    80002cb0:	7ec50513          	addi	a0,a0,2028 # 80008498 <CONSOLE_STATUS+0x488>
    80002cb4:	00002097          	auipc	ra,0x2
    80002cb8:	ba4080e7          	jalr	-1116(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002cbc:	0014849b          	addiw	s1,s1,1
    80002cc0:	0ff4f493          	andi	s1,s1,255
    80002cc4:	00c00793          	li	a5,12
    80002cc8:	fc97f0e3          	bgeu	a5,s1,80002c88 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002ccc:	00005517          	auipc	a0,0x5
    80002cd0:	5b450513          	addi	a0,a0,1460 # 80008280 <CONSOLE_STATUS+0x270>
    80002cd4:	00002097          	auipc	ra,0x2
    80002cd8:	b84080e7          	jalr	-1148(ra) # 80004858 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002cdc:	00500313          	li	t1,5
    thread_dispatch();
    80002ce0:	ffffe097          	auipc	ra,0xffffe
    80002ce4:	5b4080e7          	jalr	1460(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002ce8:	01000513          	li	a0,16
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	be8080e7          	jalr	-1048(ra) # 800028d4 <_ZL9fibonaccim>
    80002cf4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002cf8:	00005517          	auipc	a0,0x5
    80002cfc:	59850513          	addi	a0,a0,1432 # 80008290 <CONSOLE_STATUS+0x280>
    80002d00:	00002097          	auipc	ra,0x2
    80002d04:	b58080e7          	jalr	-1192(ra) # 80004858 <_Z11printStringPKc>
    80002d08:	00000613          	li	a2,0
    80002d0c:	00a00593          	li	a1,10
    80002d10:	0009051b          	sext.w	a0,s2
    80002d14:	00002097          	auipc	ra,0x2
    80002d18:	cf4080e7          	jalr	-780(ra) # 80004a08 <_Z8printIntiii>
    80002d1c:	00005517          	auipc	a0,0x5
    80002d20:	77c50513          	addi	a0,a0,1916 # 80008498 <CONSOLE_STATUS+0x488>
    80002d24:	00002097          	auipc	ra,0x2
    80002d28:	b34080e7          	jalr	-1228(ra) # 80004858 <_Z11printStringPKc>
    80002d2c:	0400006f          	j	80002d6c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d30:	00005517          	auipc	a0,0x5
    80002d34:	54850513          	addi	a0,a0,1352 # 80008278 <CONSOLE_STATUS+0x268>
    80002d38:	00002097          	auipc	ra,0x2
    80002d3c:	b20080e7          	jalr	-1248(ra) # 80004858 <_Z11printStringPKc>
    80002d40:	00000613          	li	a2,0
    80002d44:	00a00593          	li	a1,10
    80002d48:	00048513          	mv	a0,s1
    80002d4c:	00002097          	auipc	ra,0x2
    80002d50:	cbc080e7          	jalr	-836(ra) # 80004a08 <_Z8printIntiii>
    80002d54:	00005517          	auipc	a0,0x5
    80002d58:	74450513          	addi	a0,a0,1860 # 80008498 <CONSOLE_STATUS+0x488>
    80002d5c:	00002097          	auipc	ra,0x2
    80002d60:	afc080e7          	jalr	-1284(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002d64:	0014849b          	addiw	s1,s1,1
    80002d68:	0ff4f493          	andi	s1,s1,255
    80002d6c:	00f00793          	li	a5,15
    80002d70:	fc97f0e3          	bgeu	a5,s1,80002d30 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002d74:	00005517          	auipc	a0,0x5
    80002d78:	52c50513          	addi	a0,a0,1324 # 800082a0 <CONSOLE_STATUS+0x290>
    80002d7c:	00002097          	auipc	ra,0x2
    80002d80:	adc080e7          	jalr	-1316(ra) # 80004858 <_Z11printStringPKc>
    finishedD = true;
    80002d84:	00100793          	li	a5,1
    80002d88:	00007717          	auipc	a4,0x7
    80002d8c:	70f709a3          	sb	a5,1811(a4) # 8000a49b <_ZL9finishedD>
    thread_dispatch();
    80002d90:	ffffe097          	auipc	ra,0xffffe
    80002d94:	504080e7          	jalr	1284(ra) # 80001294 <_Z15thread_dispatchv>
}
    80002d98:	01813083          	ld	ra,24(sp)
    80002d9c:	01013403          	ld	s0,16(sp)
    80002da0:	00813483          	ld	s1,8(sp)
    80002da4:	00013903          	ld	s2,0(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret

0000000080002db0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002db0:	fc010113          	addi	sp,sp,-64
    80002db4:	02113c23          	sd	ra,56(sp)
    80002db8:	02813823          	sd	s0,48(sp)
    80002dbc:	02913423          	sd	s1,40(sp)
    80002dc0:	03213023          	sd	s2,32(sp)
    80002dc4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002dc8:	02000513          	li	a0,32
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	f6c080e7          	jalr	-148(ra) # 80001d38 <_Znwm>
    80002dd4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	184080e7          	jalr	388(ra) # 80001f5c <_ZN6ThreadC1Ev>
    80002de0:	00007797          	auipc	a5,0x7
    80002de4:	46078793          	addi	a5,a5,1120 # 8000a240 <_ZTV7WorkerA+0x10>
    80002de8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002dec:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002df0:	00005517          	auipc	a0,0x5
    80002df4:	4c050513          	addi	a0,a0,1216 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	a60080e7          	jalr	-1440(ra) # 80004858 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002e00:	02000513          	li	a0,32
    80002e04:	fffff097          	auipc	ra,0xfffff
    80002e08:	f34080e7          	jalr	-204(ra) # 80001d38 <_Znwm>
    80002e0c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	14c080e7          	jalr	332(ra) # 80001f5c <_ZN6ThreadC1Ev>
    80002e18:	00007797          	auipc	a5,0x7
    80002e1c:	45078793          	addi	a5,a5,1104 # 8000a268 <_ZTV7WorkerB+0x10>
    80002e20:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002e24:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	4a050513          	addi	a0,a0,1184 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	a28080e7          	jalr	-1496(ra) # 80004858 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002e38:	02000513          	li	a0,32
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	efc080e7          	jalr	-260(ra) # 80001d38 <_Znwm>
    80002e44:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	114080e7          	jalr	276(ra) # 80001f5c <_ZN6ThreadC1Ev>
    80002e50:	00007797          	auipc	a5,0x7
    80002e54:	44078793          	addi	a5,a5,1088 # 8000a290 <_ZTV7WorkerC+0x10>
    80002e58:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002e5c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002e60:	00005517          	auipc	a0,0x5
    80002e64:	48050513          	addi	a0,a0,1152 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002e68:	00002097          	auipc	ra,0x2
    80002e6c:	9f0080e7          	jalr	-1552(ra) # 80004858 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002e70:	02000513          	li	a0,32
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	ec4080e7          	jalr	-316(ra) # 80001d38 <_Znwm>
    80002e7c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	0dc080e7          	jalr	220(ra) # 80001f5c <_ZN6ThreadC1Ev>
    80002e88:	00007797          	auipc	a5,0x7
    80002e8c:	43078793          	addi	a5,a5,1072 # 8000a2b8 <_ZTV7WorkerD+0x10>
    80002e90:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002e94:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002e98:	00005517          	auipc	a0,0x5
    80002e9c:	46050513          	addi	a0,a0,1120 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80002ea0:	00002097          	auipc	ra,0x2
    80002ea4:	9b8080e7          	jalr	-1608(ra) # 80004858 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002ea8:	00000493          	li	s1,0
    80002eac:	00300793          	li	a5,3
    80002eb0:	0297c663          	blt	a5,s1,80002edc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002eb4:	00349793          	slli	a5,s1,0x3
    80002eb8:	fe040713          	addi	a4,s0,-32
    80002ebc:	00f707b3          	add	a5,a4,a5
    80002ec0:	fe07b503          	ld	a0,-32(a5)
    80002ec4:	fffff097          	auipc	ra,0xfffff
    80002ec8:	018080e7          	jalr	24(ra) # 80001edc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002ecc:	0014849b          	addiw	s1,s1,1
    80002ed0:	fddff06f          	j	80002eac <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	044080e7          	jalr	68(ra) # 80001f18 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002edc:	00007797          	auipc	a5,0x7
    80002ee0:	5bc7c783          	lbu	a5,1468(a5) # 8000a498 <_ZL9finishedA>
    80002ee4:	fe0788e3          	beqz	a5,80002ed4 <_Z20Threads_CPP_API_testv+0x124>
    80002ee8:	00007797          	auipc	a5,0x7
    80002eec:	5b17c783          	lbu	a5,1457(a5) # 8000a499 <_ZL9finishedB>
    80002ef0:	fe0782e3          	beqz	a5,80002ed4 <_Z20Threads_CPP_API_testv+0x124>
    80002ef4:	00007797          	auipc	a5,0x7
    80002ef8:	5a67c783          	lbu	a5,1446(a5) # 8000a49a <_ZL9finishedC>
    80002efc:	fc078ce3          	beqz	a5,80002ed4 <_Z20Threads_CPP_API_testv+0x124>
    80002f00:	00007797          	auipc	a5,0x7
    80002f04:	59b7c783          	lbu	a5,1435(a5) # 8000a49b <_ZL9finishedD>
    80002f08:	fc0786e3          	beqz	a5,80002ed4 <_Z20Threads_CPP_API_testv+0x124>
    80002f0c:	fc040493          	addi	s1,s0,-64
    80002f10:	0080006f          	j	80002f18 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002f14:	00848493          	addi	s1,s1,8
    80002f18:	fe040793          	addi	a5,s0,-32
    80002f1c:	08f48663          	beq	s1,a5,80002fa8 <_Z20Threads_CPP_API_testv+0x1f8>
    80002f20:	0004b503          	ld	a0,0(s1)
    80002f24:	fe0508e3          	beqz	a0,80002f14 <_Z20Threads_CPP_API_testv+0x164>
    80002f28:	00053783          	ld	a5,0(a0)
    80002f2c:	0087b783          	ld	a5,8(a5)
    80002f30:	000780e7          	jalr	a5
    80002f34:	fe1ff06f          	j	80002f14 <_Z20Threads_CPP_API_testv+0x164>
    80002f38:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002f3c:	00048513          	mv	a0,s1
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	e20080e7          	jalr	-480(ra) # 80001d60 <_ZdlPv>
    80002f48:	00090513          	mv	a0,s2
    80002f4c:	00008097          	auipc	ra,0x8
    80002f50:	65c080e7          	jalr	1628(ra) # 8000b5a8 <_Unwind_Resume>
    80002f54:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002f58:	00048513          	mv	a0,s1
    80002f5c:	fffff097          	auipc	ra,0xfffff
    80002f60:	e04080e7          	jalr	-508(ra) # 80001d60 <_ZdlPv>
    80002f64:	00090513          	mv	a0,s2
    80002f68:	00008097          	auipc	ra,0x8
    80002f6c:	640080e7          	jalr	1600(ra) # 8000b5a8 <_Unwind_Resume>
    80002f70:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002f74:	00048513          	mv	a0,s1
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	de8080e7          	jalr	-536(ra) # 80001d60 <_ZdlPv>
    80002f80:	00090513          	mv	a0,s2
    80002f84:	00008097          	auipc	ra,0x8
    80002f88:	624080e7          	jalr	1572(ra) # 8000b5a8 <_Unwind_Resume>
    80002f8c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002f90:	00048513          	mv	a0,s1
    80002f94:	fffff097          	auipc	ra,0xfffff
    80002f98:	dcc080e7          	jalr	-564(ra) # 80001d60 <_ZdlPv>
    80002f9c:	00090513          	mv	a0,s2
    80002fa0:	00008097          	auipc	ra,0x8
    80002fa4:	608080e7          	jalr	1544(ra) # 8000b5a8 <_Unwind_Resume>
}
    80002fa8:	03813083          	ld	ra,56(sp)
    80002fac:	03013403          	ld	s0,48(sp)
    80002fb0:	02813483          	ld	s1,40(sp)
    80002fb4:	02013903          	ld	s2,32(sp)
    80002fb8:	04010113          	addi	sp,sp,64
    80002fbc:	00008067          	ret

0000000080002fc0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002fc0:	ff010113          	addi	sp,sp,-16
    80002fc4:	00113423          	sd	ra,8(sp)
    80002fc8:	00813023          	sd	s0,0(sp)
    80002fcc:	01010413          	addi	s0,sp,16
    80002fd0:	00007797          	auipc	a5,0x7
    80002fd4:	27078793          	addi	a5,a5,624 # 8000a240 <_ZTV7WorkerA+0x10>
    80002fd8:	00f53023          	sd	a5,0(a0)
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	ccc080e7          	jalr	-820(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80002fe4:	00813083          	ld	ra,8(sp)
    80002fe8:	00013403          	ld	s0,0(sp)
    80002fec:	01010113          	addi	sp,sp,16
    80002ff0:	00008067          	ret

0000000080002ff4 <_ZN7WorkerAD0Ev>:
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	02010413          	addi	s0,sp,32
    80003008:	00050493          	mv	s1,a0
    8000300c:	00007797          	auipc	a5,0x7
    80003010:	23478793          	addi	a5,a5,564 # 8000a240 <_ZTV7WorkerA+0x10>
    80003014:	00f53023          	sd	a5,0(a0)
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	c90080e7          	jalr	-880(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003020:	00048513          	mv	a0,s1
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	d3c080e7          	jalr	-708(ra) # 80001d60 <_ZdlPv>
    8000302c:	01813083          	ld	ra,24(sp)
    80003030:	01013403          	ld	s0,16(sp)
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	02010113          	addi	sp,sp,32
    8000303c:	00008067          	ret

0000000080003040 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00113423          	sd	ra,8(sp)
    80003048:	00813023          	sd	s0,0(sp)
    8000304c:	01010413          	addi	s0,sp,16
    80003050:	00007797          	auipc	a5,0x7
    80003054:	21878793          	addi	a5,a5,536 # 8000a268 <_ZTV7WorkerB+0x10>
    80003058:	00f53023          	sd	a5,0(a0)
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	c4c080e7          	jalr	-948(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003064:	00813083          	ld	ra,8(sp)
    80003068:	00013403          	ld	s0,0(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN7WorkerBD0Ev>:
    80003074:	fe010113          	addi	sp,sp,-32
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	00813823          	sd	s0,16(sp)
    80003080:	00913423          	sd	s1,8(sp)
    80003084:	02010413          	addi	s0,sp,32
    80003088:	00050493          	mv	s1,a0
    8000308c:	00007797          	auipc	a5,0x7
    80003090:	1dc78793          	addi	a5,a5,476 # 8000a268 <_ZTV7WorkerB+0x10>
    80003094:	00f53023          	sd	a5,0(a0)
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	c10080e7          	jalr	-1008(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800030a0:	00048513          	mv	a0,s1
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	cbc080e7          	jalr	-836(ra) # 80001d60 <_ZdlPv>
    800030ac:	01813083          	ld	ra,24(sp)
    800030b0:	01013403          	ld	s0,16(sp)
    800030b4:	00813483          	ld	s1,8(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret

00000000800030c0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00113423          	sd	ra,8(sp)
    800030c8:	00813023          	sd	s0,0(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	00007797          	auipc	a5,0x7
    800030d4:	1c078793          	addi	a5,a5,448 # 8000a290 <_ZTV7WorkerC+0x10>
    800030d8:	00f53023          	sd	a5,0(a0)
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	bcc080e7          	jalr	-1076(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <_ZN7WorkerCD0Ev>:
    800030f4:	fe010113          	addi	sp,sp,-32
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	00813823          	sd	s0,16(sp)
    80003100:	00913423          	sd	s1,8(sp)
    80003104:	02010413          	addi	s0,sp,32
    80003108:	00050493          	mv	s1,a0
    8000310c:	00007797          	auipc	a5,0x7
    80003110:	18478793          	addi	a5,a5,388 # 8000a290 <_ZTV7WorkerC+0x10>
    80003114:	00f53023          	sd	a5,0(a0)
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	b90080e7          	jalr	-1136(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003120:	00048513          	mv	a0,s1
    80003124:	fffff097          	auipc	ra,0xfffff
    80003128:	c3c080e7          	jalr	-964(ra) # 80001d60 <_ZdlPv>
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	01013403          	ld	s0,16(sp)
    80003134:	00813483          	ld	s1,8(sp)
    80003138:	02010113          	addi	sp,sp,32
    8000313c:	00008067          	ret

0000000080003140 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003140:	ff010113          	addi	sp,sp,-16
    80003144:	00113423          	sd	ra,8(sp)
    80003148:	00813023          	sd	s0,0(sp)
    8000314c:	01010413          	addi	s0,sp,16
    80003150:	00007797          	auipc	a5,0x7
    80003154:	16878793          	addi	a5,a5,360 # 8000a2b8 <_ZTV7WorkerD+0x10>
    80003158:	00f53023          	sd	a5,0(a0)
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	b4c080e7          	jalr	-1204(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003164:	00813083          	ld	ra,8(sp)
    80003168:	00013403          	ld	s0,0(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_ZN7WorkerDD0Ev>:
    80003174:	fe010113          	addi	sp,sp,-32
    80003178:	00113c23          	sd	ra,24(sp)
    8000317c:	00813823          	sd	s0,16(sp)
    80003180:	00913423          	sd	s1,8(sp)
    80003184:	02010413          	addi	s0,sp,32
    80003188:	00050493          	mv	s1,a0
    8000318c:	00007797          	auipc	a5,0x7
    80003190:	12c78793          	addi	a5,a5,300 # 8000a2b8 <_ZTV7WorkerD+0x10>
    80003194:	00f53023          	sd	a5,0(a0)
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	b10080e7          	jalr	-1264(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800031a0:	00048513          	mv	a0,s1
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	bbc080e7          	jalr	-1092(ra) # 80001d60 <_ZdlPv>
    800031ac:	01813083          	ld	ra,24(sp)
    800031b0:	01013403          	ld	s0,16(sp)
    800031b4:	00813483          	ld	s1,8(sp)
    800031b8:	02010113          	addi	sp,sp,32
    800031bc:	00008067          	ret

00000000800031c0 <_ZN7WorkerA3runEv>:
    void run() override {
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800031d0:	00000593          	li	a1,0
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	774080e7          	jalr	1908(ra) # 80002948 <_ZN7WorkerA11workerBodyAEPv>
    }
    800031dc:	00813083          	ld	ra,8(sp)
    800031e0:	00013403          	ld	s0,0(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <_ZN7WorkerB3runEv>:
    void run() override {
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00113423          	sd	ra,8(sp)
    800031f4:	00813023          	sd	s0,0(sp)
    800031f8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800031fc:	00000593          	li	a1,0
    80003200:	00000097          	auipc	ra,0x0
    80003204:	814080e7          	jalr	-2028(ra) # 80002a14 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003208:	00813083          	ld	ra,8(sp)
    8000320c:	00013403          	ld	s0,0(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret

0000000080003218 <_ZN7WorkerC3runEv>:
    void run() override {
    80003218:	ff010113          	addi	sp,sp,-16
    8000321c:	00113423          	sd	ra,8(sp)
    80003220:	00813023          	sd	s0,0(sp)
    80003224:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003228:	00000593          	li	a1,0
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	8bc080e7          	jalr	-1860(ra) # 80002ae8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003234:	00813083          	ld	ra,8(sp)
    80003238:	00013403          	ld	s0,0(sp)
    8000323c:	01010113          	addi	sp,sp,16
    80003240:	00008067          	ret

0000000080003244 <_ZN7WorkerD3runEv>:
    void run() override {
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00113423          	sd	ra,8(sp)
    8000324c:	00813023          	sd	s0,0(sp)
    80003250:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003254:	00000593          	li	a1,0
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	a10080e7          	jalr	-1520(ra) # 80002c68 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003260:	00813083          	ld	ra,8(sp)
    80003264:	00013403          	ld	s0,0(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret

0000000080003270 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003270:	f8010113          	addi	sp,sp,-128
    80003274:	06113c23          	sd	ra,120(sp)
    80003278:	06813823          	sd	s0,112(sp)
    8000327c:	06913423          	sd	s1,104(sp)
    80003280:	07213023          	sd	s2,96(sp)
    80003284:	05313c23          	sd	s3,88(sp)
    80003288:	05413823          	sd	s4,80(sp)
    8000328c:	05513423          	sd	s5,72(sp)
    80003290:	05613023          	sd	s6,64(sp)
    80003294:	03713c23          	sd	s7,56(sp)
    80003298:	03813823          	sd	s8,48(sp)
    8000329c:	03913423          	sd	s9,40(sp)
    800032a0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800032a4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800032a8:	00005517          	auipc	a0,0x5
    800032ac:	e8850513          	addi	a0,a0,-376 # 80008130 <CONSOLE_STATUS+0x120>
    800032b0:	00001097          	auipc	ra,0x1
    800032b4:	5a8080e7          	jalr	1448(ra) # 80004858 <_Z11printStringPKc>
    getString(input, 30);
    800032b8:	01e00593          	li	a1,30
    800032bc:	f8040493          	addi	s1,s0,-128
    800032c0:	00048513          	mv	a0,s1
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	61c080e7          	jalr	1564(ra) # 800048e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800032cc:	00048513          	mv	a0,s1
    800032d0:	00001097          	auipc	ra,0x1
    800032d4:	6e8080e7          	jalr	1768(ra) # 800049b8 <_Z11stringToIntPKc>
    800032d8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800032dc:	00005517          	auipc	a0,0x5
    800032e0:	e7450513          	addi	a0,a0,-396 # 80008150 <CONSOLE_STATUS+0x140>
    800032e4:	00001097          	auipc	ra,0x1
    800032e8:	574080e7          	jalr	1396(ra) # 80004858 <_Z11printStringPKc>
    getString(input, 30);
    800032ec:	01e00593          	li	a1,30
    800032f0:	00048513          	mv	a0,s1
    800032f4:	00001097          	auipc	ra,0x1
    800032f8:	5ec080e7          	jalr	1516(ra) # 800048e0 <_Z9getStringPci>
    n = stringToInt(input);
    800032fc:	00048513          	mv	a0,s1
    80003300:	00001097          	auipc	ra,0x1
    80003304:	6b8080e7          	jalr	1720(ra) # 800049b8 <_Z11stringToIntPKc>
    80003308:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000330c:	00005517          	auipc	a0,0x5
    80003310:	e6450513          	addi	a0,a0,-412 # 80008170 <CONSOLE_STATUS+0x160>
    80003314:	00001097          	auipc	ra,0x1
    80003318:	544080e7          	jalr	1348(ra) # 80004858 <_Z11printStringPKc>
    printInt(threadNum);
    8000331c:	00000613          	li	a2,0
    80003320:	00a00593          	li	a1,10
    80003324:	00098513          	mv	a0,s3
    80003328:	00001097          	auipc	ra,0x1
    8000332c:	6e0080e7          	jalr	1760(ra) # 80004a08 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003330:	00005517          	auipc	a0,0x5
    80003334:	e5850513          	addi	a0,a0,-424 # 80008188 <CONSOLE_STATUS+0x178>
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	520080e7          	jalr	1312(ra) # 80004858 <_Z11printStringPKc>
    printInt(n);
    80003340:	00000613          	li	a2,0
    80003344:	00a00593          	li	a1,10
    80003348:	00048513          	mv	a0,s1
    8000334c:	00001097          	auipc	ra,0x1
    80003350:	6bc080e7          	jalr	1724(ra) # 80004a08 <_Z8printIntiii>
    printString(".\n");
    80003354:	00005517          	auipc	a0,0x5
    80003358:	e4c50513          	addi	a0,a0,-436 # 800081a0 <CONSOLE_STATUS+0x190>
    8000335c:	00001097          	auipc	ra,0x1
    80003360:	4fc080e7          	jalr	1276(ra) # 80004858 <_Z11printStringPKc>
    if (threadNum > n) {
    80003364:	0334c463          	blt	s1,s3,8000338c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003368:	03305c63          	blez	s3,800033a0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000336c:	03800513          	li	a0,56
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	9c8080e7          	jalr	-1592(ra) # 80001d38 <_Znwm>
    80003378:	00050a93          	mv	s5,a0
    8000337c:	00048593          	mv	a1,s1
    80003380:	00001097          	auipc	ra,0x1
    80003384:	7a8080e7          	jalr	1960(ra) # 80004b28 <_ZN9BufferCPPC1Ei>
    80003388:	0300006f          	j	800033b8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000338c:	00005517          	auipc	a0,0x5
    80003390:	e1c50513          	addi	a0,a0,-484 # 800081a8 <CONSOLE_STATUS+0x198>
    80003394:	00001097          	auipc	ra,0x1
    80003398:	4c4080e7          	jalr	1220(ra) # 80004858 <_Z11printStringPKc>
        return;
    8000339c:	0140006f          	j	800033b0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800033a0:	00005517          	auipc	a0,0x5
    800033a4:	e4850513          	addi	a0,a0,-440 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	4b0080e7          	jalr	1200(ra) # 80004858 <_Z11printStringPKc>
        return;
    800033b0:	000c0113          	mv	sp,s8
    800033b4:	2140006f          	j	800035c8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800033b8:	01000513          	li	a0,16
    800033bc:	fffff097          	auipc	ra,0xfffff
    800033c0:	97c080e7          	jalr	-1668(ra) # 80001d38 <_Znwm>
    800033c4:	00050913          	mv	s2,a0
    800033c8:	00000593          	li	a1,0
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	a24080e7          	jalr	-1500(ra) # 80001df0 <_ZN9SemaphoreC1Ej>
    800033d4:	00007797          	auipc	a5,0x7
    800033d8:	0d27ba23          	sd	s2,212(a5) # 8000a4a8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800033dc:	00399793          	slli	a5,s3,0x3
    800033e0:	00f78793          	addi	a5,a5,15
    800033e4:	ff07f793          	andi	a5,a5,-16
    800033e8:	40f10133          	sub	sp,sp,a5
    800033ec:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800033f0:	0019871b          	addiw	a4,s3,1
    800033f4:	00171793          	slli	a5,a4,0x1
    800033f8:	00e787b3          	add	a5,a5,a4
    800033fc:	00379793          	slli	a5,a5,0x3
    80003400:	00f78793          	addi	a5,a5,15
    80003404:	ff07f793          	andi	a5,a5,-16
    80003408:	40f10133          	sub	sp,sp,a5
    8000340c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003410:	00199493          	slli	s1,s3,0x1
    80003414:	013484b3          	add	s1,s1,s3
    80003418:	00349493          	slli	s1,s1,0x3
    8000341c:	009b04b3          	add	s1,s6,s1
    80003420:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003424:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003428:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000342c:	02800513          	li	a0,40
    80003430:	fffff097          	auipc	ra,0xfffff
    80003434:	908080e7          	jalr	-1784(ra) # 80001d38 <_Znwm>
    80003438:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000343c:	fffff097          	auipc	ra,0xfffff
    80003440:	b20080e7          	jalr	-1248(ra) # 80001f5c <_ZN6ThreadC1Ev>
    80003444:	00007797          	auipc	a5,0x7
    80003448:	eec78793          	addi	a5,a5,-276 # 8000a330 <_ZTV8Consumer+0x10>
    8000344c:	00fbb023          	sd	a5,0(s7)
    80003450:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003454:	000b8513          	mv	a0,s7
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	a84080e7          	jalr	-1404(ra) # 80001edc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003460:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003464:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003468:	00007797          	auipc	a5,0x7
    8000346c:	0407b783          	ld	a5,64(a5) # 8000a4a8 <_ZL10waitForAll>
    80003470:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003474:	02800513          	li	a0,40
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	8c0080e7          	jalr	-1856(ra) # 80001d38 <_Znwm>
    80003480:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	ad8080e7          	jalr	-1320(ra) # 80001f5c <_ZN6ThreadC1Ev>
    8000348c:	00007797          	auipc	a5,0x7
    80003490:	e5478793          	addi	a5,a5,-428 # 8000a2e0 <_ZTV16ProducerKeyborad+0x10>
    80003494:	00f4b023          	sd	a5,0(s1)
    80003498:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000349c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800034a0:	00048513          	mv	a0,s1
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	a38080e7          	jalr	-1480(ra) # 80001edc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800034ac:	00100913          	li	s2,1
    800034b0:	0300006f          	j	800034e0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800034b4:	00007797          	auipc	a5,0x7
    800034b8:	e5478793          	addi	a5,a5,-428 # 8000a308 <_ZTV8Producer+0x10>
    800034bc:	00fcb023          	sd	a5,0(s9)
    800034c0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800034c4:	00391793          	slli	a5,s2,0x3
    800034c8:	00fa07b3          	add	a5,s4,a5
    800034cc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800034d0:	000c8513          	mv	a0,s9
    800034d4:	fffff097          	auipc	ra,0xfffff
    800034d8:	a08080e7          	jalr	-1528(ra) # 80001edc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800034dc:	0019091b          	addiw	s2,s2,1
    800034e0:	05395263          	bge	s2,s3,80003524 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800034e4:	00191493          	slli	s1,s2,0x1
    800034e8:	012484b3          	add	s1,s1,s2
    800034ec:	00349493          	slli	s1,s1,0x3
    800034f0:	009b04b3          	add	s1,s6,s1
    800034f4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800034f8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800034fc:	00007797          	auipc	a5,0x7
    80003500:	fac7b783          	ld	a5,-84(a5) # 8000a4a8 <_ZL10waitForAll>
    80003504:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003508:	02800513          	li	a0,40
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	82c080e7          	jalr	-2004(ra) # 80001d38 <_Znwm>
    80003514:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003518:	fffff097          	auipc	ra,0xfffff
    8000351c:	a44080e7          	jalr	-1468(ra) # 80001f5c <_ZN6ThreadC1Ev>
    80003520:	f95ff06f          	j	800034b4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003524:	fffff097          	auipc	ra,0xfffff
    80003528:	9f4080e7          	jalr	-1548(ra) # 80001f18 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000352c:	00000493          	li	s1,0
    80003530:	0099ce63          	blt	s3,s1,8000354c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003534:	00007517          	auipc	a0,0x7
    80003538:	f7453503          	ld	a0,-140(a0) # 8000a4a8 <_ZL10waitForAll>
    8000353c:	fffff097          	auipc	ra,0xfffff
    80003540:	8ec080e7          	jalr	-1812(ra) # 80001e28 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003544:	0014849b          	addiw	s1,s1,1
    80003548:	fe9ff06f          	j	80003530 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000354c:	00007517          	auipc	a0,0x7
    80003550:	f5c53503          	ld	a0,-164(a0) # 8000a4a8 <_ZL10waitForAll>
    80003554:	00050863          	beqz	a0,80003564 <_Z20testConsumerProducerv+0x2f4>
    80003558:	00053783          	ld	a5,0(a0)
    8000355c:	0087b783          	ld	a5,8(a5)
    80003560:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003564:	00000493          	li	s1,0
    80003568:	0080006f          	j	80003570 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000356c:	0014849b          	addiw	s1,s1,1
    80003570:	0334d263          	bge	s1,s3,80003594 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003574:	00349793          	slli	a5,s1,0x3
    80003578:	00fa07b3          	add	a5,s4,a5
    8000357c:	0007b503          	ld	a0,0(a5)
    80003580:	fe0506e3          	beqz	a0,8000356c <_Z20testConsumerProducerv+0x2fc>
    80003584:	00053783          	ld	a5,0(a0)
    80003588:	0087b783          	ld	a5,8(a5)
    8000358c:	000780e7          	jalr	a5
    80003590:	fddff06f          	j	8000356c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003594:	000b8a63          	beqz	s7,800035a8 <_Z20testConsumerProducerv+0x338>
    80003598:	000bb783          	ld	a5,0(s7)
    8000359c:	0087b783          	ld	a5,8(a5)
    800035a0:	000b8513          	mv	a0,s7
    800035a4:	000780e7          	jalr	a5
    delete buffer;
    800035a8:	000a8e63          	beqz	s5,800035c4 <_Z20testConsumerProducerv+0x354>
    800035ac:	000a8513          	mv	a0,s5
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	870080e7          	jalr	-1936(ra) # 80004e20 <_ZN9BufferCPPD1Ev>
    800035b8:	000a8513          	mv	a0,s5
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	7a4080e7          	jalr	1956(ra) # 80001d60 <_ZdlPv>
    800035c4:	000c0113          	mv	sp,s8
}
    800035c8:	f8040113          	addi	sp,s0,-128
    800035cc:	07813083          	ld	ra,120(sp)
    800035d0:	07013403          	ld	s0,112(sp)
    800035d4:	06813483          	ld	s1,104(sp)
    800035d8:	06013903          	ld	s2,96(sp)
    800035dc:	05813983          	ld	s3,88(sp)
    800035e0:	05013a03          	ld	s4,80(sp)
    800035e4:	04813a83          	ld	s5,72(sp)
    800035e8:	04013b03          	ld	s6,64(sp)
    800035ec:	03813b83          	ld	s7,56(sp)
    800035f0:	03013c03          	ld	s8,48(sp)
    800035f4:	02813c83          	ld	s9,40(sp)
    800035f8:	08010113          	addi	sp,sp,128
    800035fc:	00008067          	ret
    80003600:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003604:	000a8513          	mv	a0,s5
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	758080e7          	jalr	1880(ra) # 80001d60 <_ZdlPv>
    80003610:	00048513          	mv	a0,s1
    80003614:	00008097          	auipc	ra,0x8
    80003618:	f94080e7          	jalr	-108(ra) # 8000b5a8 <_Unwind_Resume>
    8000361c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003620:	00090513          	mv	a0,s2
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	73c080e7          	jalr	1852(ra) # 80001d60 <_ZdlPv>
    8000362c:	00048513          	mv	a0,s1
    80003630:	00008097          	auipc	ra,0x8
    80003634:	f78080e7          	jalr	-136(ra) # 8000b5a8 <_Unwind_Resume>
    80003638:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000363c:	000b8513          	mv	a0,s7
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	720080e7          	jalr	1824(ra) # 80001d60 <_ZdlPv>
    80003648:	00048513          	mv	a0,s1
    8000364c:	00008097          	auipc	ra,0x8
    80003650:	f5c080e7          	jalr	-164(ra) # 8000b5a8 <_Unwind_Resume>
    80003654:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003658:	00048513          	mv	a0,s1
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	704080e7          	jalr	1796(ra) # 80001d60 <_ZdlPv>
    80003664:	00090513          	mv	a0,s2
    80003668:	00008097          	auipc	ra,0x8
    8000366c:	f40080e7          	jalr	-192(ra) # 8000b5a8 <_Unwind_Resume>
    80003670:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003674:	000c8513          	mv	a0,s9
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	6e8080e7          	jalr	1768(ra) # 80001d60 <_ZdlPv>
    80003680:	00048513          	mv	a0,s1
    80003684:	00008097          	auipc	ra,0x8
    80003688:	f24080e7          	jalr	-220(ra) # 8000b5a8 <_Unwind_Resume>

000000008000368c <_ZN8Consumer3runEv>:
    void run() override {
    8000368c:	fd010113          	addi	sp,sp,-48
    80003690:	02113423          	sd	ra,40(sp)
    80003694:	02813023          	sd	s0,32(sp)
    80003698:	00913c23          	sd	s1,24(sp)
    8000369c:	01213823          	sd	s2,16(sp)
    800036a0:	01313423          	sd	s3,8(sp)
    800036a4:	03010413          	addi	s0,sp,48
    800036a8:	00050913          	mv	s2,a0
        int i = 0;
    800036ac:	00000993          	li	s3,0
    800036b0:	0100006f          	j	800036c0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800036b4:	00a00513          	li	a0,10
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	8fc080e7          	jalr	-1796(ra) # 80001fb4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800036c0:	00007797          	auipc	a5,0x7
    800036c4:	de07a783          	lw	a5,-544(a5) # 8000a4a0 <_ZL9threadEnd>
    800036c8:	04079a63          	bnez	a5,8000371c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800036cc:	02093783          	ld	a5,32(s2)
    800036d0:	0087b503          	ld	a0,8(a5)
    800036d4:	00001097          	auipc	ra,0x1
    800036d8:	638080e7          	jalr	1592(ra) # 80004d0c <_ZN9BufferCPP3getEv>
            i++;
    800036dc:	0019849b          	addiw	s1,s3,1
    800036e0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800036e4:	0ff57513          	andi	a0,a0,255
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	8cc080e7          	jalr	-1844(ra) # 80001fb4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800036f0:	05000793          	li	a5,80
    800036f4:	02f4e4bb          	remw	s1,s1,a5
    800036f8:	fc0494e3          	bnez	s1,800036c0 <_ZN8Consumer3runEv+0x34>
    800036fc:	fb9ff06f          	j	800036b4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003700:	02093783          	ld	a5,32(s2)
    80003704:	0087b503          	ld	a0,8(a5)
    80003708:	00001097          	auipc	ra,0x1
    8000370c:	604080e7          	jalr	1540(ra) # 80004d0c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003710:	0ff57513          	andi	a0,a0,255
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	8a0080e7          	jalr	-1888(ra) # 80001fb4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000371c:	02093783          	ld	a5,32(s2)
    80003720:	0087b503          	ld	a0,8(a5)
    80003724:	00001097          	auipc	ra,0x1
    80003728:	674080e7          	jalr	1652(ra) # 80004d98 <_ZN9BufferCPP6getCntEv>
    8000372c:	fca04ae3          	bgtz	a0,80003700 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003730:	02093783          	ld	a5,32(s2)
    80003734:	0107b503          	ld	a0,16(a5)
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	71c080e7          	jalr	1820(ra) # 80001e54 <_ZN9Semaphore6signalEv>
    }
    80003740:	02813083          	ld	ra,40(sp)
    80003744:	02013403          	ld	s0,32(sp)
    80003748:	01813483          	ld	s1,24(sp)
    8000374c:	01013903          	ld	s2,16(sp)
    80003750:	00813983          	ld	s3,8(sp)
    80003754:	03010113          	addi	sp,sp,48
    80003758:	00008067          	ret

000000008000375c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00113423          	sd	ra,8(sp)
    80003764:	00813023          	sd	s0,0(sp)
    80003768:	01010413          	addi	s0,sp,16
    8000376c:	00007797          	auipc	a5,0x7
    80003770:	bc478793          	addi	a5,a5,-1084 # 8000a330 <_ZTV8Consumer+0x10>
    80003774:	00f53023          	sd	a5,0(a0)
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	530080e7          	jalr	1328(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003780:	00813083          	ld	ra,8(sp)
    80003784:	00013403          	ld	s0,0(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret

0000000080003790 <_ZN8ConsumerD0Ev>:
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00813823          	sd	s0,16(sp)
    8000379c:	00913423          	sd	s1,8(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	00050493          	mv	s1,a0
    800037a8:	00007797          	auipc	a5,0x7
    800037ac:	b8878793          	addi	a5,a5,-1144 # 8000a330 <_ZTV8Consumer+0x10>
    800037b0:	00f53023          	sd	a5,0(a0)
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	4f4080e7          	jalr	1268(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800037bc:	00048513          	mv	a0,s1
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	5a0080e7          	jalr	1440(ra) # 80001d60 <_ZdlPv>
    800037c8:	01813083          	ld	ra,24(sp)
    800037cc:	01013403          	ld	s0,16(sp)
    800037d0:	00813483          	ld	s1,8(sp)
    800037d4:	02010113          	addi	sp,sp,32
    800037d8:	00008067          	ret

00000000800037dc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800037dc:	ff010113          	addi	sp,sp,-16
    800037e0:	00113423          	sd	ra,8(sp)
    800037e4:	00813023          	sd	s0,0(sp)
    800037e8:	01010413          	addi	s0,sp,16
    800037ec:	00007797          	auipc	a5,0x7
    800037f0:	af478793          	addi	a5,a5,-1292 # 8000a2e0 <_ZTV16ProducerKeyborad+0x10>
    800037f4:	00f53023          	sd	a5,0(a0)
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	4b0080e7          	jalr	1200(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003800:	00813083          	ld	ra,8(sp)
    80003804:	00013403          	ld	s0,0(sp)
    80003808:	01010113          	addi	sp,sp,16
    8000380c:	00008067          	ret

0000000080003810 <_ZN16ProducerKeyboradD0Ev>:
    80003810:	fe010113          	addi	sp,sp,-32
    80003814:	00113c23          	sd	ra,24(sp)
    80003818:	00813823          	sd	s0,16(sp)
    8000381c:	00913423          	sd	s1,8(sp)
    80003820:	02010413          	addi	s0,sp,32
    80003824:	00050493          	mv	s1,a0
    80003828:	00007797          	auipc	a5,0x7
    8000382c:	ab878793          	addi	a5,a5,-1352 # 8000a2e0 <_ZTV16ProducerKeyborad+0x10>
    80003830:	00f53023          	sd	a5,0(a0)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	474080e7          	jalr	1140(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    8000383c:	00048513          	mv	a0,s1
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	520080e7          	jalr	1312(ra) # 80001d60 <_ZdlPv>
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret

000000008000385c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000385c:	ff010113          	addi	sp,sp,-16
    80003860:	00113423          	sd	ra,8(sp)
    80003864:	00813023          	sd	s0,0(sp)
    80003868:	01010413          	addi	s0,sp,16
    8000386c:	00007797          	auipc	a5,0x7
    80003870:	a9c78793          	addi	a5,a5,-1380 # 8000a308 <_ZTV8Producer+0x10>
    80003874:	00f53023          	sd	a5,0(a0)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	430080e7          	jalr	1072(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80003880:	00813083          	ld	ra,8(sp)
    80003884:	00013403          	ld	s0,0(sp)
    80003888:	01010113          	addi	sp,sp,16
    8000388c:	00008067          	ret

0000000080003890 <_ZN8ProducerD0Ev>:
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00813823          	sd	s0,16(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	00050493          	mv	s1,a0
    800038a8:	00007797          	auipc	a5,0x7
    800038ac:	a6078793          	addi	a5,a5,-1440 # 8000a308 <_ZTV8Producer+0x10>
    800038b0:	00f53023          	sd	a5,0(a0)
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	3f4080e7          	jalr	1012(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800038bc:	00048513          	mv	a0,s1
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	4a0080e7          	jalr	1184(ra) # 80001d60 <_ZdlPv>
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	02010113          	addi	sp,sp,32
    800038d8:	00008067          	ret

00000000800038dc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800038dc:	fe010113          	addi	sp,sp,-32
    800038e0:	00113c23          	sd	ra,24(sp)
    800038e4:	00813823          	sd	s0,16(sp)
    800038e8:	00913423          	sd	s1,8(sp)
    800038ec:	02010413          	addi	s0,sp,32
    800038f0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	b58080e7          	jalr	-1192(ra) # 8000144c <_Z4getcv>
    800038fc:	0005059b          	sext.w	a1,a0
    80003900:	01b00793          	li	a5,27
    80003904:	00f58c63          	beq	a1,a5,8000391c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003908:	0204b783          	ld	a5,32(s1)
    8000390c:	0087b503          	ld	a0,8(a5)
    80003910:	00001097          	auipc	ra,0x1
    80003914:	36c080e7          	jalr	876(ra) # 80004c7c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003918:	fddff06f          	j	800038f4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000391c:	00100793          	li	a5,1
    80003920:	00007717          	auipc	a4,0x7
    80003924:	b8f72023          	sw	a5,-1152(a4) # 8000a4a0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003928:	0204b783          	ld	a5,32(s1)
    8000392c:	02100593          	li	a1,33
    80003930:	0087b503          	ld	a0,8(a5)
    80003934:	00001097          	auipc	ra,0x1
    80003938:	348080e7          	jalr	840(ra) # 80004c7c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000393c:	0204b783          	ld	a5,32(s1)
    80003940:	0107b503          	ld	a0,16(a5)
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	510080e7          	jalr	1296(ra) # 80001e54 <_ZN9Semaphore6signalEv>
    }
    8000394c:	01813083          	ld	ra,24(sp)
    80003950:	01013403          	ld	s0,16(sp)
    80003954:	00813483          	ld	s1,8(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret

0000000080003960 <_ZN8Producer3runEv>:
    void run() override {
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00113c23          	sd	ra,24(sp)
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	01213023          	sd	s2,0(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	00050493          	mv	s1,a0
        int i = 0;
    8000397c:	00000913          	li	s2,0
        while (!threadEnd) {
    80003980:	00007797          	auipc	a5,0x7
    80003984:	b207a783          	lw	a5,-1248(a5) # 8000a4a0 <_ZL9threadEnd>
    80003988:	04079263          	bnez	a5,800039cc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000398c:	0204b783          	ld	a5,32(s1)
    80003990:	0007a583          	lw	a1,0(a5)
    80003994:	0305859b          	addiw	a1,a1,48
    80003998:	0087b503          	ld	a0,8(a5)
    8000399c:	00001097          	auipc	ra,0x1
    800039a0:	2e0080e7          	jalr	736(ra) # 80004c7c <_ZN9BufferCPP3putEi>
            i++;
    800039a4:	0019071b          	addiw	a4,s2,1
    800039a8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800039ac:	0204b783          	ld	a5,32(s1)
    800039b0:	0007a783          	lw	a5,0(a5)
    800039b4:	00e787bb          	addw	a5,a5,a4
    800039b8:	00500513          	li	a0,5
    800039bc:	02a7e53b          	remw	a0,a5,a0
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	580080e7          	jalr	1408(ra) # 80001f40 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800039c8:	fb9ff06f          	j	80003980 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800039cc:	0204b783          	ld	a5,32(s1)
    800039d0:	0107b503          	ld	a0,16(a5)
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	480080e7          	jalr	1152(ra) # 80001e54 <_ZN9Semaphore6signalEv>
    }
    800039dc:	01813083          	ld	ra,24(sp)
    800039e0:	01013403          	ld	s0,16(sp)
    800039e4:	00813483          	ld	s1,8(sp)
    800039e8:	00013903          	ld	s2,0(sp)
    800039ec:	02010113          	addi	sp,sp,32
    800039f0:	00008067          	ret

00000000800039f4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039f4:	fe010113          	addi	sp,sp,-32
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	00813823          	sd	s0,16(sp)
    80003a00:	00913423          	sd	s1,8(sp)
    80003a04:	01213023          	sd	s2,0(sp)
    80003a08:	02010413          	addi	s0,sp,32
    80003a0c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a10:	00100793          	li	a5,1
    80003a14:	02a7f863          	bgeu	a5,a0,80003a44 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a18:	00a00793          	li	a5,10
    80003a1c:	02f577b3          	remu	a5,a0,a5
    80003a20:	02078e63          	beqz	a5,80003a5c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a24:	fff48513          	addi	a0,s1,-1
    80003a28:	00000097          	auipc	ra,0x0
    80003a2c:	fcc080e7          	jalr	-52(ra) # 800039f4 <_ZL9fibonaccim>
    80003a30:	00050913          	mv	s2,a0
    80003a34:	ffe48513          	addi	a0,s1,-2
    80003a38:	00000097          	auipc	ra,0x0
    80003a3c:	fbc080e7          	jalr	-68(ra) # 800039f4 <_ZL9fibonaccim>
    80003a40:	00a90533          	add	a0,s2,a0
}
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	00013903          	ld	s2,0(sp)
    80003a54:	02010113          	addi	sp,sp,32
    80003a58:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	838080e7          	jalr	-1992(ra) # 80001294 <_Z15thread_dispatchv>
    80003a64:	fc1ff06f          	j	80003a24 <_ZL9fibonaccim+0x30>

0000000080003a68 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003a68:	fe010113          	addi	sp,sp,-32
    80003a6c:	00113c23          	sd	ra,24(sp)
    80003a70:	00813823          	sd	s0,16(sp)
    80003a74:	00913423          	sd	s1,8(sp)
    80003a78:	01213023          	sd	s2,0(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a80:	00a00493          	li	s1,10
    80003a84:	0400006f          	j	80003ac4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a88:	00004517          	auipc	a0,0x4
    80003a8c:	7f050513          	addi	a0,a0,2032 # 80008278 <CONSOLE_STATUS+0x268>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	dc8080e7          	jalr	-568(ra) # 80004858 <_Z11printStringPKc>
    80003a98:	00000613          	li	a2,0
    80003a9c:	00a00593          	li	a1,10
    80003aa0:	00048513          	mv	a0,s1
    80003aa4:	00001097          	auipc	ra,0x1
    80003aa8:	f64080e7          	jalr	-156(ra) # 80004a08 <_Z8printIntiii>
    80003aac:	00005517          	auipc	a0,0x5
    80003ab0:	9ec50513          	addi	a0,a0,-1556 # 80008498 <CONSOLE_STATUS+0x488>
    80003ab4:	00001097          	auipc	ra,0x1
    80003ab8:	da4080e7          	jalr	-604(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003abc:	0014849b          	addiw	s1,s1,1
    80003ac0:	0ff4f493          	andi	s1,s1,255
    80003ac4:	00c00793          	li	a5,12
    80003ac8:	fc97f0e3          	bgeu	a5,s1,80003a88 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003acc:	00004517          	auipc	a0,0x4
    80003ad0:	7b450513          	addi	a0,a0,1972 # 80008280 <CONSOLE_STATUS+0x270>
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	d84080e7          	jalr	-636(ra) # 80004858 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003adc:	00500313          	li	t1,5
    thread_dispatch();
    80003ae0:	ffffd097          	auipc	ra,0xffffd
    80003ae4:	7b4080e7          	jalr	1972(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ae8:	01000513          	li	a0,16
    80003aec:	00000097          	auipc	ra,0x0
    80003af0:	f08080e7          	jalr	-248(ra) # 800039f4 <_ZL9fibonaccim>
    80003af4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003af8:	00004517          	auipc	a0,0x4
    80003afc:	79850513          	addi	a0,a0,1944 # 80008290 <CONSOLE_STATUS+0x280>
    80003b00:	00001097          	auipc	ra,0x1
    80003b04:	d58080e7          	jalr	-680(ra) # 80004858 <_Z11printStringPKc>
    80003b08:	00000613          	li	a2,0
    80003b0c:	00a00593          	li	a1,10
    80003b10:	0009051b          	sext.w	a0,s2
    80003b14:	00001097          	auipc	ra,0x1
    80003b18:	ef4080e7          	jalr	-268(ra) # 80004a08 <_Z8printIntiii>
    80003b1c:	00005517          	auipc	a0,0x5
    80003b20:	97c50513          	addi	a0,a0,-1668 # 80008498 <CONSOLE_STATUS+0x488>
    80003b24:	00001097          	auipc	ra,0x1
    80003b28:	d34080e7          	jalr	-716(ra) # 80004858 <_Z11printStringPKc>
    80003b2c:	0400006f          	j	80003b6c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b30:	00004517          	auipc	a0,0x4
    80003b34:	74850513          	addi	a0,a0,1864 # 80008278 <CONSOLE_STATUS+0x268>
    80003b38:	00001097          	auipc	ra,0x1
    80003b3c:	d20080e7          	jalr	-736(ra) # 80004858 <_Z11printStringPKc>
    80003b40:	00000613          	li	a2,0
    80003b44:	00a00593          	li	a1,10
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	ebc080e7          	jalr	-324(ra) # 80004a08 <_Z8printIntiii>
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	94450513          	addi	a0,a0,-1724 # 80008498 <CONSOLE_STATUS+0x488>
    80003b5c:	00001097          	auipc	ra,0x1
    80003b60:	cfc080e7          	jalr	-772(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b64:	0014849b          	addiw	s1,s1,1
    80003b68:	0ff4f493          	andi	s1,s1,255
    80003b6c:	00f00793          	li	a5,15
    80003b70:	fc97f0e3          	bgeu	a5,s1,80003b30 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b74:	00004517          	auipc	a0,0x4
    80003b78:	72c50513          	addi	a0,a0,1836 # 800082a0 <CONSOLE_STATUS+0x290>
    80003b7c:	00001097          	auipc	ra,0x1
    80003b80:	cdc080e7          	jalr	-804(ra) # 80004858 <_Z11printStringPKc>
    finishedD = true;
    80003b84:	00100793          	li	a5,1
    80003b88:	00007717          	auipc	a4,0x7
    80003b8c:	92f70423          	sb	a5,-1752(a4) # 8000a4b0 <_ZL9finishedD>
    thread_dispatch();
    80003b90:	ffffd097          	auipc	ra,0xffffd
    80003b94:	704080e7          	jalr	1796(ra) # 80001294 <_Z15thread_dispatchv>
}
    80003b98:	01813083          	ld	ra,24(sp)
    80003b9c:	01013403          	ld	s0,16(sp)
    80003ba0:	00813483          	ld	s1,8(sp)
    80003ba4:	00013903          	ld	s2,0(sp)
    80003ba8:	02010113          	addi	sp,sp,32
    80003bac:	00008067          	ret

0000000080003bb0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003bc8:	00000493          	li	s1,0
    80003bcc:	0400006f          	j	80003c0c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003bd0:	00004517          	auipc	a0,0x4
    80003bd4:	67850513          	addi	a0,a0,1656 # 80008248 <CONSOLE_STATUS+0x238>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	c80080e7          	jalr	-896(ra) # 80004858 <_Z11printStringPKc>
    80003be0:	00000613          	li	a2,0
    80003be4:	00a00593          	li	a1,10
    80003be8:	00048513          	mv	a0,s1
    80003bec:	00001097          	auipc	ra,0x1
    80003bf0:	e1c080e7          	jalr	-484(ra) # 80004a08 <_Z8printIntiii>
    80003bf4:	00005517          	auipc	a0,0x5
    80003bf8:	8a450513          	addi	a0,a0,-1884 # 80008498 <CONSOLE_STATUS+0x488>
    80003bfc:	00001097          	auipc	ra,0x1
    80003c00:	c5c080e7          	jalr	-932(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c04:	0014849b          	addiw	s1,s1,1
    80003c08:	0ff4f493          	andi	s1,s1,255
    80003c0c:	00200793          	li	a5,2
    80003c10:	fc97f0e3          	bgeu	a5,s1,80003bd0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003c14:	00004517          	auipc	a0,0x4
    80003c18:	63c50513          	addi	a0,a0,1596 # 80008250 <CONSOLE_STATUS+0x240>
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	c3c080e7          	jalr	-964(ra) # 80004858 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c24:	00700313          	li	t1,7
    thread_dispatch();
    80003c28:	ffffd097          	auipc	ra,0xffffd
    80003c2c:	66c080e7          	jalr	1644(ra) # 80001294 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c30:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003c34:	00004517          	auipc	a0,0x4
    80003c38:	62c50513          	addi	a0,a0,1580 # 80008260 <CONSOLE_STATUS+0x250>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	c1c080e7          	jalr	-996(ra) # 80004858 <_Z11printStringPKc>
    80003c44:	00000613          	li	a2,0
    80003c48:	00a00593          	li	a1,10
    80003c4c:	0009051b          	sext.w	a0,s2
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	db8080e7          	jalr	-584(ra) # 80004a08 <_Z8printIntiii>
    80003c58:	00005517          	auipc	a0,0x5
    80003c5c:	84050513          	addi	a0,a0,-1984 # 80008498 <CONSOLE_STATUS+0x488>
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	bf8080e7          	jalr	-1032(ra) # 80004858 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003c68:	00c00513          	li	a0,12
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	d88080e7          	jalr	-632(ra) # 800039f4 <_ZL9fibonaccim>
    80003c74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c78:	00004517          	auipc	a0,0x4
    80003c7c:	5f050513          	addi	a0,a0,1520 # 80008268 <CONSOLE_STATUS+0x258>
    80003c80:	00001097          	auipc	ra,0x1
    80003c84:	bd8080e7          	jalr	-1064(ra) # 80004858 <_Z11printStringPKc>
    80003c88:	00000613          	li	a2,0
    80003c8c:	00a00593          	li	a1,10
    80003c90:	0009051b          	sext.w	a0,s2
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	d74080e7          	jalr	-652(ra) # 80004a08 <_Z8printIntiii>
    80003c9c:	00004517          	auipc	a0,0x4
    80003ca0:	7fc50513          	addi	a0,a0,2044 # 80008498 <CONSOLE_STATUS+0x488>
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	bb4080e7          	jalr	-1100(ra) # 80004858 <_Z11printStringPKc>
    80003cac:	0400006f          	j	80003cec <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003cb0:	00004517          	auipc	a0,0x4
    80003cb4:	59850513          	addi	a0,a0,1432 # 80008248 <CONSOLE_STATUS+0x238>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	ba0080e7          	jalr	-1120(ra) # 80004858 <_Z11printStringPKc>
    80003cc0:	00000613          	li	a2,0
    80003cc4:	00a00593          	li	a1,10
    80003cc8:	00048513          	mv	a0,s1
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	d3c080e7          	jalr	-708(ra) # 80004a08 <_Z8printIntiii>
    80003cd4:	00004517          	auipc	a0,0x4
    80003cd8:	7c450513          	addi	a0,a0,1988 # 80008498 <CONSOLE_STATUS+0x488>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	b7c080e7          	jalr	-1156(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ce4:	0014849b          	addiw	s1,s1,1
    80003ce8:	0ff4f493          	andi	s1,s1,255
    80003cec:	00500793          	li	a5,5
    80003cf0:	fc97f0e3          	bgeu	a5,s1,80003cb0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003cf4:	00004517          	auipc	a0,0x4
    80003cf8:	52c50513          	addi	a0,a0,1324 # 80008220 <CONSOLE_STATUS+0x210>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	b5c080e7          	jalr	-1188(ra) # 80004858 <_Z11printStringPKc>
    finishedC = true;
    80003d04:	00100793          	li	a5,1
    80003d08:	00006717          	auipc	a4,0x6
    80003d0c:	7af704a3          	sb	a5,1961(a4) # 8000a4b1 <_ZL9finishedC>
    thread_dispatch();
    80003d10:	ffffd097          	auipc	ra,0xffffd
    80003d14:	584080e7          	jalr	1412(ra) # 80001294 <_Z15thread_dispatchv>
}
    80003d18:	01813083          	ld	ra,24(sp)
    80003d1c:	01013403          	ld	s0,16(sp)
    80003d20:	00813483          	ld	s1,8(sp)
    80003d24:	00013903          	ld	s2,0(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	00008067          	ret

0000000080003d30 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	00113c23          	sd	ra,24(sp)
    80003d38:	00813823          	sd	s0,16(sp)
    80003d3c:	00913423          	sd	s1,8(sp)
    80003d40:	01213023          	sd	s2,0(sp)
    80003d44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d48:	00000913          	li	s2,0
    80003d4c:	0380006f          	j	80003d84 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003d50:	ffffd097          	auipc	ra,0xffffd
    80003d54:	544080e7          	jalr	1348(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d58:	00148493          	addi	s1,s1,1
    80003d5c:	000027b7          	lui	a5,0x2
    80003d60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d64:	0097ee63          	bltu	a5,s1,80003d80 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d68:	00000713          	li	a4,0
    80003d6c:	000077b7          	lui	a5,0x7
    80003d70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d74:	fce7eee3          	bltu	a5,a4,80003d50 <_ZL11workerBodyBPv+0x20>
    80003d78:	00170713          	addi	a4,a4,1
    80003d7c:	ff1ff06f          	j	80003d6c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d80:	00190913          	addi	s2,s2,1
    80003d84:	00f00793          	li	a5,15
    80003d88:	0527e063          	bltu	a5,s2,80003dc8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d8c:	00004517          	auipc	a0,0x4
    80003d90:	4a450513          	addi	a0,a0,1188 # 80008230 <CONSOLE_STATUS+0x220>
    80003d94:	00001097          	auipc	ra,0x1
    80003d98:	ac4080e7          	jalr	-1340(ra) # 80004858 <_Z11printStringPKc>
    80003d9c:	00000613          	li	a2,0
    80003da0:	00a00593          	li	a1,10
    80003da4:	0009051b          	sext.w	a0,s2
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	c60080e7          	jalr	-928(ra) # 80004a08 <_Z8printIntiii>
    80003db0:	00004517          	auipc	a0,0x4
    80003db4:	6e850513          	addi	a0,a0,1768 # 80008498 <CONSOLE_STATUS+0x488>
    80003db8:	00001097          	auipc	ra,0x1
    80003dbc:	aa0080e7          	jalr	-1376(ra) # 80004858 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003dc0:	00000493          	li	s1,0
    80003dc4:	f99ff06f          	j	80003d5c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003dc8:	00004517          	auipc	a0,0x4
    80003dcc:	47050513          	addi	a0,a0,1136 # 80008238 <CONSOLE_STATUS+0x228>
    80003dd0:	00001097          	auipc	ra,0x1
    80003dd4:	a88080e7          	jalr	-1400(ra) # 80004858 <_Z11printStringPKc>
    finishedB = true;
    80003dd8:	00100793          	li	a5,1
    80003ddc:	00006717          	auipc	a4,0x6
    80003de0:	6cf70b23          	sb	a5,1750(a4) # 8000a4b2 <_ZL9finishedB>
    thread_dispatch();
    80003de4:	ffffd097          	auipc	ra,0xffffd
    80003de8:	4b0080e7          	jalr	1200(ra) # 80001294 <_Z15thread_dispatchv>
}
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	00013903          	ld	s2,0(sp)
    80003dfc:	02010113          	addi	sp,sp,32
    80003e00:	00008067          	ret

0000000080003e04 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003e04:	fe010113          	addi	sp,sp,-32
    80003e08:	00113c23          	sd	ra,24(sp)
    80003e0c:	00813823          	sd	s0,16(sp)
    80003e10:	00913423          	sd	s1,8(sp)
    80003e14:	01213023          	sd	s2,0(sp)
    80003e18:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e1c:	00000913          	li	s2,0
    80003e20:	0380006f          	j	80003e58 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003e24:	ffffd097          	auipc	ra,0xffffd
    80003e28:	470080e7          	jalr	1136(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e2c:	00148493          	addi	s1,s1,1
    80003e30:	000027b7          	lui	a5,0x2
    80003e34:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e38:	0097ee63          	bltu	a5,s1,80003e54 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e3c:	00000713          	li	a4,0
    80003e40:	000077b7          	lui	a5,0x7
    80003e44:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e48:	fce7eee3          	bltu	a5,a4,80003e24 <_ZL11workerBodyAPv+0x20>
    80003e4c:	00170713          	addi	a4,a4,1
    80003e50:	ff1ff06f          	j	80003e40 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e54:	00190913          	addi	s2,s2,1
    80003e58:	00900793          	li	a5,9
    80003e5c:	0527e063          	bltu	a5,s2,80003e9c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e60:	00004517          	auipc	a0,0x4
    80003e64:	3b850513          	addi	a0,a0,952 # 80008218 <CONSOLE_STATUS+0x208>
    80003e68:	00001097          	auipc	ra,0x1
    80003e6c:	9f0080e7          	jalr	-1552(ra) # 80004858 <_Z11printStringPKc>
    80003e70:	00000613          	li	a2,0
    80003e74:	00a00593          	li	a1,10
    80003e78:	0009051b          	sext.w	a0,s2
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	b8c080e7          	jalr	-1140(ra) # 80004a08 <_Z8printIntiii>
    80003e84:	00004517          	auipc	a0,0x4
    80003e88:	61450513          	addi	a0,a0,1556 # 80008498 <CONSOLE_STATUS+0x488>
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	9cc080e7          	jalr	-1588(ra) # 80004858 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e94:	00000493          	li	s1,0
    80003e98:	f99ff06f          	j	80003e30 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003e9c:	00004517          	auipc	a0,0x4
    80003ea0:	38450513          	addi	a0,a0,900 # 80008220 <CONSOLE_STATUS+0x210>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	9b4080e7          	jalr	-1612(ra) # 80004858 <_Z11printStringPKc>
    finishedA = true;
    80003eac:	00100793          	li	a5,1
    80003eb0:	00006717          	auipc	a4,0x6
    80003eb4:	60f701a3          	sb	a5,1539(a4) # 8000a4b3 <_ZL9finishedA>
}
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	01013403          	ld	s0,16(sp)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	00013903          	ld	s2,0(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret

0000000080003ed0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003ed0:	fd010113          	addi	sp,sp,-48
    80003ed4:	02113423          	sd	ra,40(sp)
    80003ed8:	02813023          	sd	s0,32(sp)
    80003edc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00000597          	auipc	a1,0x0
    80003ee8:	f2058593          	addi	a1,a1,-224 # 80003e04 <_ZL11workerBodyAPv>
    80003eec:	fd040513          	addi	a0,s0,-48
    80003ef0:	ffffd097          	auipc	ra,0xffffd
    80003ef4:	2ec080e7          	jalr	748(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80003ef8:	00004517          	auipc	a0,0x4
    80003efc:	3b850513          	addi	a0,a0,952 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	958080e7          	jalr	-1704(ra) # 80004858 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003f08:	00000613          	li	a2,0
    80003f0c:	00000597          	auipc	a1,0x0
    80003f10:	e2458593          	addi	a1,a1,-476 # 80003d30 <_ZL11workerBodyBPv>
    80003f14:	fd840513          	addi	a0,s0,-40
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	2c4080e7          	jalr	708(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80003f20:	00004517          	auipc	a0,0x4
    80003f24:	3a850513          	addi	a0,a0,936 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80003f28:	00001097          	auipc	ra,0x1
    80003f2c:	930080e7          	jalr	-1744(ra) # 80004858 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003f30:	00000613          	li	a2,0
    80003f34:	00000597          	auipc	a1,0x0
    80003f38:	c7c58593          	addi	a1,a1,-900 # 80003bb0 <_ZL11workerBodyCPv>
    80003f3c:	fe040513          	addi	a0,s0,-32
    80003f40:	ffffd097          	auipc	ra,0xffffd
    80003f44:	29c080e7          	jalr	668(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003f48:	00004517          	auipc	a0,0x4
    80003f4c:	39850513          	addi	a0,a0,920 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	908080e7          	jalr	-1784(ra) # 80004858 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003f58:	00000613          	li	a2,0
    80003f5c:	00000597          	auipc	a1,0x0
    80003f60:	b0c58593          	addi	a1,a1,-1268 # 80003a68 <_ZL11workerBodyDPv>
    80003f64:	fe840513          	addi	a0,s0,-24
    80003f68:	ffffd097          	auipc	ra,0xffffd
    80003f6c:	274080e7          	jalr	628(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003f70:	00004517          	auipc	a0,0x4
    80003f74:	38850513          	addi	a0,a0,904 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	8e0080e7          	jalr	-1824(ra) # 80004858 <_Z11printStringPKc>
    80003f80:	00c0006f          	j	80003f8c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	310080e7          	jalr	784(ra) # 80001294 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f8c:	00006797          	auipc	a5,0x6
    80003f90:	5277c783          	lbu	a5,1319(a5) # 8000a4b3 <_ZL9finishedA>
    80003f94:	fe0788e3          	beqz	a5,80003f84 <_Z18Threads_C_API_testv+0xb4>
    80003f98:	00006797          	auipc	a5,0x6
    80003f9c:	51a7c783          	lbu	a5,1306(a5) # 8000a4b2 <_ZL9finishedB>
    80003fa0:	fe0782e3          	beqz	a5,80003f84 <_Z18Threads_C_API_testv+0xb4>
    80003fa4:	00006797          	auipc	a5,0x6
    80003fa8:	50d7c783          	lbu	a5,1293(a5) # 8000a4b1 <_ZL9finishedC>
    80003fac:	fc078ce3          	beqz	a5,80003f84 <_Z18Threads_C_API_testv+0xb4>
    80003fb0:	00006797          	auipc	a5,0x6
    80003fb4:	5007c783          	lbu	a5,1280(a5) # 8000a4b0 <_ZL9finishedD>
    80003fb8:	fc0786e3          	beqz	a5,80003f84 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003fbc:	02813083          	ld	ra,40(sp)
    80003fc0:	02013403          	ld	s0,32(sp)
    80003fc4:	03010113          	addi	sp,sp,48
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003fcc:	fd010113          	addi	sp,sp,-48
    80003fd0:	02113423          	sd	ra,40(sp)
    80003fd4:	02813023          	sd	s0,32(sp)
    80003fd8:	00913c23          	sd	s1,24(sp)
    80003fdc:	01213823          	sd	s2,16(sp)
    80003fe0:	01313423          	sd	s3,8(sp)
    80003fe4:	03010413          	addi	s0,sp,48
    80003fe8:	00050993          	mv	s3,a0
    80003fec:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003ff0:	00000913          	li	s2,0
    80003ff4:	00c0006f          	j	80004000 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	f20080e7          	jalr	-224(ra) # 80001f18 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004000:	ffffd097          	auipc	ra,0xffffd
    80004004:	44c080e7          	jalr	1100(ra) # 8000144c <_Z4getcv>
    80004008:	0005059b          	sext.w	a1,a0
    8000400c:	01b00793          	li	a5,27
    80004010:	02f58a63          	beq	a1,a5,80004044 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004014:	0084b503          	ld	a0,8(s1)
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	c64080e7          	jalr	-924(ra) # 80004c7c <_ZN9BufferCPP3putEi>
        i++;
    80004020:	0019071b          	addiw	a4,s2,1
    80004024:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004028:	0004a683          	lw	a3,0(s1)
    8000402c:	0026979b          	slliw	a5,a3,0x2
    80004030:	00d787bb          	addw	a5,a5,a3
    80004034:	0017979b          	slliw	a5,a5,0x1
    80004038:	02f767bb          	remw	a5,a4,a5
    8000403c:	fc0792e3          	bnez	a5,80004000 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004040:	fb9ff06f          	j	80003ff8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004044:	00100793          	li	a5,1
    80004048:	00006717          	auipc	a4,0x6
    8000404c:	46f72823          	sw	a5,1136(a4) # 8000a4b8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004050:	0209b783          	ld	a5,32(s3)
    80004054:	02100593          	li	a1,33
    80004058:	0087b503          	ld	a0,8(a5)
    8000405c:	00001097          	auipc	ra,0x1
    80004060:	c20080e7          	jalr	-992(ra) # 80004c7c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004064:	0104b503          	ld	a0,16(s1)
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	dec080e7          	jalr	-532(ra) # 80001e54 <_ZN9Semaphore6signalEv>
}
    80004070:	02813083          	ld	ra,40(sp)
    80004074:	02013403          	ld	s0,32(sp)
    80004078:	01813483          	ld	s1,24(sp)
    8000407c:	01013903          	ld	s2,16(sp)
    80004080:	00813983          	ld	s3,8(sp)
    80004084:	03010113          	addi	sp,sp,48
    80004088:	00008067          	ret

000000008000408c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	01213023          	sd	s2,0(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800040a8:	00000913          	li	s2,0
    800040ac:	00c0006f          	j	800040b8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	e68080e7          	jalr	-408(ra) # 80001f18 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800040b8:	00006797          	auipc	a5,0x6
    800040bc:	4007a783          	lw	a5,1024(a5) # 8000a4b8 <_ZL9threadEnd>
    800040c0:	02079e63          	bnez	a5,800040fc <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800040c4:	0004a583          	lw	a1,0(s1)
    800040c8:	0305859b          	addiw	a1,a1,48
    800040cc:	0084b503          	ld	a0,8(s1)
    800040d0:	00001097          	auipc	ra,0x1
    800040d4:	bac080e7          	jalr	-1108(ra) # 80004c7c <_ZN9BufferCPP3putEi>
        i++;
    800040d8:	0019071b          	addiw	a4,s2,1
    800040dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800040e0:	0004a683          	lw	a3,0(s1)
    800040e4:	0026979b          	slliw	a5,a3,0x2
    800040e8:	00d787bb          	addw	a5,a5,a3
    800040ec:	0017979b          	slliw	a5,a5,0x1
    800040f0:	02f767bb          	remw	a5,a4,a5
    800040f4:	fc0792e3          	bnez	a5,800040b8 <_ZN12ProducerSync8producerEPv+0x2c>
    800040f8:	fb9ff06f          	j	800040b0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800040fc:	0104b503          	ld	a0,16(s1)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	d54080e7          	jalr	-684(ra) # 80001e54 <_ZN9Semaphore6signalEv>
}
    80004108:	01813083          	ld	ra,24(sp)
    8000410c:	01013403          	ld	s0,16(sp)
    80004110:	00813483          	ld	s1,8(sp)
    80004114:	00013903          	ld	s2,0(sp)
    80004118:	02010113          	addi	sp,sp,32
    8000411c:	00008067          	ret

0000000080004120 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004120:	fd010113          	addi	sp,sp,-48
    80004124:	02113423          	sd	ra,40(sp)
    80004128:	02813023          	sd	s0,32(sp)
    8000412c:	00913c23          	sd	s1,24(sp)
    80004130:	01213823          	sd	s2,16(sp)
    80004134:	01313423          	sd	s3,8(sp)
    80004138:	01413023          	sd	s4,0(sp)
    8000413c:	03010413          	addi	s0,sp,48
    80004140:	00050993          	mv	s3,a0
    80004144:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004148:	00000a13          	li	s4,0
    8000414c:	01c0006f          	j	80004168 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	dc8080e7          	jalr	-568(ra) # 80001f18 <_ZN6Thread8dispatchEv>
    80004158:	0500006f          	j	800041a8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000415c:	00a00513          	li	a0,10
    80004160:	ffffd097          	auipc	ra,0xffffd
    80004164:	320080e7          	jalr	800(ra) # 80001480 <_Z4putcc>
    while (!threadEnd) {
    80004168:	00006797          	auipc	a5,0x6
    8000416c:	3507a783          	lw	a5,848(a5) # 8000a4b8 <_ZL9threadEnd>
    80004170:	06079263          	bnez	a5,800041d4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004174:	00893503          	ld	a0,8(s2)
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	b94080e7          	jalr	-1132(ra) # 80004d0c <_ZN9BufferCPP3getEv>
        i++;
    80004180:	001a049b          	addiw	s1,s4,1
    80004184:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004188:	0ff57513          	andi	a0,a0,255
    8000418c:	ffffd097          	auipc	ra,0xffffd
    80004190:	2f4080e7          	jalr	756(ra) # 80001480 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004194:	00092703          	lw	a4,0(s2)
    80004198:	0027179b          	slliw	a5,a4,0x2
    8000419c:	00e787bb          	addw	a5,a5,a4
    800041a0:	02f4e7bb          	remw	a5,s1,a5
    800041a4:	fa0786e3          	beqz	a5,80004150 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800041a8:	05000793          	li	a5,80
    800041ac:	02f4e4bb          	remw	s1,s1,a5
    800041b0:	fa049ce3          	bnez	s1,80004168 <_ZN12ConsumerSync8consumerEPv+0x48>
    800041b4:	fa9ff06f          	j	8000415c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800041b8:	0209b783          	ld	a5,32(s3)
    800041bc:	0087b503          	ld	a0,8(a5)
    800041c0:	00001097          	auipc	ra,0x1
    800041c4:	b4c080e7          	jalr	-1204(ra) # 80004d0c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800041c8:	0ff57513          	andi	a0,a0,255
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	de8080e7          	jalr	-536(ra) # 80001fb4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800041d4:	0209b783          	ld	a5,32(s3)
    800041d8:	0087b503          	ld	a0,8(a5)
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	bbc080e7          	jalr	-1092(ra) # 80004d98 <_ZN9BufferCPP6getCntEv>
    800041e4:	fca04ae3          	bgtz	a0,800041b8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800041e8:	01093503          	ld	a0,16(s2)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	c68080e7          	jalr	-920(ra) # 80001e54 <_ZN9Semaphore6signalEv>
}
    800041f4:	02813083          	ld	ra,40(sp)
    800041f8:	02013403          	ld	s0,32(sp)
    800041fc:	01813483          	ld	s1,24(sp)
    80004200:	01013903          	ld	s2,16(sp)
    80004204:	00813983          	ld	s3,8(sp)
    80004208:	00013a03          	ld	s4,0(sp)
    8000420c:	03010113          	addi	sp,sp,48
    80004210:	00008067          	ret

0000000080004214 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004214:	f8010113          	addi	sp,sp,-128
    80004218:	06113c23          	sd	ra,120(sp)
    8000421c:	06813823          	sd	s0,112(sp)
    80004220:	06913423          	sd	s1,104(sp)
    80004224:	07213023          	sd	s2,96(sp)
    80004228:	05313c23          	sd	s3,88(sp)
    8000422c:	05413823          	sd	s4,80(sp)
    80004230:	05513423          	sd	s5,72(sp)
    80004234:	05613023          	sd	s6,64(sp)
    80004238:	03713c23          	sd	s7,56(sp)
    8000423c:	03813823          	sd	s8,48(sp)
    80004240:	03913423          	sd	s9,40(sp)
    80004244:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004248:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000424c:	00004517          	auipc	a0,0x4
    80004250:	ee450513          	addi	a0,a0,-284 # 80008130 <CONSOLE_STATUS+0x120>
    80004254:	00000097          	auipc	ra,0x0
    80004258:	604080e7          	jalr	1540(ra) # 80004858 <_Z11printStringPKc>
    getString(input, 30);
    8000425c:	01e00593          	li	a1,30
    80004260:	f8040493          	addi	s1,s0,-128
    80004264:	00048513          	mv	a0,s1
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	678080e7          	jalr	1656(ra) # 800048e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004270:	00048513          	mv	a0,s1
    80004274:	00000097          	auipc	ra,0x0
    80004278:	744080e7          	jalr	1860(ra) # 800049b8 <_Z11stringToIntPKc>
    8000427c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004280:	00004517          	auipc	a0,0x4
    80004284:	ed050513          	addi	a0,a0,-304 # 80008150 <CONSOLE_STATUS+0x140>
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	5d0080e7          	jalr	1488(ra) # 80004858 <_Z11printStringPKc>
    getString(input, 30);
    80004290:	01e00593          	li	a1,30
    80004294:	00048513          	mv	a0,s1
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	648080e7          	jalr	1608(ra) # 800048e0 <_Z9getStringPci>
    n = stringToInt(input);
    800042a0:	00048513          	mv	a0,s1
    800042a4:	00000097          	auipc	ra,0x0
    800042a8:	714080e7          	jalr	1812(ra) # 800049b8 <_Z11stringToIntPKc>
    800042ac:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800042b0:	00004517          	auipc	a0,0x4
    800042b4:	ec050513          	addi	a0,a0,-320 # 80008170 <CONSOLE_STATUS+0x160>
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	5a0080e7          	jalr	1440(ra) # 80004858 <_Z11printStringPKc>
    800042c0:	00000613          	li	a2,0
    800042c4:	00a00593          	li	a1,10
    800042c8:	00090513          	mv	a0,s2
    800042cc:	00000097          	auipc	ra,0x0
    800042d0:	73c080e7          	jalr	1852(ra) # 80004a08 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800042d4:	00004517          	auipc	a0,0x4
    800042d8:	eb450513          	addi	a0,a0,-332 # 80008188 <CONSOLE_STATUS+0x178>
    800042dc:	00000097          	auipc	ra,0x0
    800042e0:	57c080e7          	jalr	1404(ra) # 80004858 <_Z11printStringPKc>
    800042e4:	00000613          	li	a2,0
    800042e8:	00a00593          	li	a1,10
    800042ec:	00048513          	mv	a0,s1
    800042f0:	00000097          	auipc	ra,0x0
    800042f4:	718080e7          	jalr	1816(ra) # 80004a08 <_Z8printIntiii>
    printString(".\n");
    800042f8:	00004517          	auipc	a0,0x4
    800042fc:	ea850513          	addi	a0,a0,-344 # 800081a0 <CONSOLE_STATUS+0x190>
    80004300:	00000097          	auipc	ra,0x0
    80004304:	558080e7          	jalr	1368(ra) # 80004858 <_Z11printStringPKc>
    if(threadNum > n) {
    80004308:	0324c463          	blt	s1,s2,80004330 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000430c:	03205c63          	blez	s2,80004344 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004310:	03800513          	li	a0,56
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	a24080e7          	jalr	-1500(ra) # 80001d38 <_Znwm>
    8000431c:	00050a93          	mv	s5,a0
    80004320:	00048593          	mv	a1,s1
    80004324:	00001097          	auipc	ra,0x1
    80004328:	804080e7          	jalr	-2044(ra) # 80004b28 <_ZN9BufferCPPC1Ei>
    8000432c:	0300006f          	j	8000435c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004330:	00004517          	auipc	a0,0x4
    80004334:	e7850513          	addi	a0,a0,-392 # 800081a8 <CONSOLE_STATUS+0x198>
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	520080e7          	jalr	1312(ra) # 80004858 <_Z11printStringPKc>
        return;
    80004340:	0140006f          	j	80004354 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004344:	00004517          	auipc	a0,0x4
    80004348:	ea450513          	addi	a0,a0,-348 # 800081e8 <CONSOLE_STATUS+0x1d8>
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	50c080e7          	jalr	1292(ra) # 80004858 <_Z11printStringPKc>
        return;
    80004354:	000b8113          	mv	sp,s7
    80004358:	2380006f          	j	80004590 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000435c:	01000513          	li	a0,16
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	9d8080e7          	jalr	-1576(ra) # 80001d38 <_Znwm>
    80004368:	00050493          	mv	s1,a0
    8000436c:	00000593          	li	a1,0
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	a80080e7          	jalr	-1408(ra) # 80001df0 <_ZN9SemaphoreC1Ej>
    80004378:	00006797          	auipc	a5,0x6
    8000437c:	1497b423          	sd	s1,328(a5) # 8000a4c0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004380:	00391793          	slli	a5,s2,0x3
    80004384:	00f78793          	addi	a5,a5,15
    80004388:	ff07f793          	andi	a5,a5,-16
    8000438c:	40f10133          	sub	sp,sp,a5
    80004390:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004394:	0019071b          	addiw	a4,s2,1
    80004398:	00171793          	slli	a5,a4,0x1
    8000439c:	00e787b3          	add	a5,a5,a4
    800043a0:	00379793          	slli	a5,a5,0x3
    800043a4:	00f78793          	addi	a5,a5,15
    800043a8:	ff07f793          	andi	a5,a5,-16
    800043ac:	40f10133          	sub	sp,sp,a5
    800043b0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800043b4:	00191c13          	slli	s8,s2,0x1
    800043b8:	012c07b3          	add	a5,s8,s2
    800043bc:	00379793          	slli	a5,a5,0x3
    800043c0:	00fa07b3          	add	a5,s4,a5
    800043c4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800043c8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800043cc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800043d0:	02800513          	li	a0,40
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	964080e7          	jalr	-1692(ra) # 80001d38 <_Znwm>
    800043dc:	00050b13          	mv	s6,a0
    800043e0:	012c0c33          	add	s8,s8,s2
    800043e4:	003c1c13          	slli	s8,s8,0x3
    800043e8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	b70080e7          	jalr	-1168(ra) # 80001f5c <_ZN6ThreadC1Ev>
    800043f4:	00006797          	auipc	a5,0x6
    800043f8:	fb478793          	addi	a5,a5,-76 # 8000a3a8 <_ZTV12ConsumerSync+0x10>
    800043fc:	00fb3023          	sd	a5,0(s6)
    80004400:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004404:	000b0513          	mv	a0,s6
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	ad4080e7          	jalr	-1324(ra) # 80001edc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004410:	00000493          	li	s1,0
    80004414:	0380006f          	j	8000444c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004418:	00006797          	auipc	a5,0x6
    8000441c:	f6878793          	addi	a5,a5,-152 # 8000a380 <_ZTV12ProducerSync+0x10>
    80004420:	00fcb023          	sd	a5,0(s9)
    80004424:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004428:	00349793          	slli	a5,s1,0x3
    8000442c:	00f987b3          	add	a5,s3,a5
    80004430:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004434:	00349793          	slli	a5,s1,0x3
    80004438:	00f987b3          	add	a5,s3,a5
    8000443c:	0007b503          	ld	a0,0(a5)
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	a9c080e7          	jalr	-1380(ra) # 80001edc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004448:	0014849b          	addiw	s1,s1,1
    8000444c:	0b24d063          	bge	s1,s2,800044ec <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004450:	00149793          	slli	a5,s1,0x1
    80004454:	009787b3          	add	a5,a5,s1
    80004458:	00379793          	slli	a5,a5,0x3
    8000445c:	00fa07b3          	add	a5,s4,a5
    80004460:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004464:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004468:	00006717          	auipc	a4,0x6
    8000446c:	05873703          	ld	a4,88(a4) # 8000a4c0 <_ZL10waitForAll>
    80004470:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004474:	02905863          	blez	s1,800044a4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004478:	02800513          	li	a0,40
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	8bc080e7          	jalr	-1860(ra) # 80001d38 <_Znwm>
    80004484:	00050c93          	mv	s9,a0
    80004488:	00149c13          	slli	s8,s1,0x1
    8000448c:	009c0c33          	add	s8,s8,s1
    80004490:	003c1c13          	slli	s8,s8,0x3
    80004494:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	ac4080e7          	jalr	-1340(ra) # 80001f5c <_ZN6ThreadC1Ev>
    800044a0:	f79ff06f          	j	80004418 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800044a4:	02800513          	li	a0,40
    800044a8:	ffffe097          	auipc	ra,0xffffe
    800044ac:	890080e7          	jalr	-1904(ra) # 80001d38 <_Znwm>
    800044b0:	00050c93          	mv	s9,a0
    800044b4:	00149c13          	slli	s8,s1,0x1
    800044b8:	009c0c33          	add	s8,s8,s1
    800044bc:	003c1c13          	slli	s8,s8,0x3
    800044c0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	a98080e7          	jalr	-1384(ra) # 80001f5c <_ZN6ThreadC1Ev>
    800044cc:	00006797          	auipc	a5,0x6
    800044d0:	e8c78793          	addi	a5,a5,-372 # 8000a358 <_ZTV16ProducerKeyboard+0x10>
    800044d4:	00fcb023          	sd	a5,0(s9)
    800044d8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800044dc:	00349793          	slli	a5,s1,0x3
    800044e0:	00f987b3          	add	a5,s3,a5
    800044e4:	0197b023          	sd	s9,0(a5)
    800044e8:	f4dff06f          	j	80004434 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	a2c080e7          	jalr	-1492(ra) # 80001f18 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800044f4:	00000493          	li	s1,0
    800044f8:	00994e63          	blt	s2,s1,80004514 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800044fc:	00006517          	auipc	a0,0x6
    80004500:	fc453503          	ld	a0,-60(a0) # 8000a4c0 <_ZL10waitForAll>
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	924080e7          	jalr	-1756(ra) # 80001e28 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000450c:	0014849b          	addiw	s1,s1,1
    80004510:	fe9ff06f          	j	800044f8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004514:	00000493          	li	s1,0
    80004518:	0080006f          	j	80004520 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000451c:	0014849b          	addiw	s1,s1,1
    80004520:	0324d263          	bge	s1,s2,80004544 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004524:	00349793          	slli	a5,s1,0x3
    80004528:	00f987b3          	add	a5,s3,a5
    8000452c:	0007b503          	ld	a0,0(a5)
    80004530:	fe0506e3          	beqz	a0,8000451c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004534:	00053783          	ld	a5,0(a0)
    80004538:	0087b783          	ld	a5,8(a5)
    8000453c:	000780e7          	jalr	a5
    80004540:	fddff06f          	j	8000451c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004544:	000b0a63          	beqz	s6,80004558 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004548:	000b3783          	ld	a5,0(s6)
    8000454c:	0087b783          	ld	a5,8(a5)
    80004550:	000b0513          	mv	a0,s6
    80004554:	000780e7          	jalr	a5
    delete waitForAll;
    80004558:	00006517          	auipc	a0,0x6
    8000455c:	f6853503          	ld	a0,-152(a0) # 8000a4c0 <_ZL10waitForAll>
    80004560:	00050863          	beqz	a0,80004570 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004564:	00053783          	ld	a5,0(a0)
    80004568:	0087b783          	ld	a5,8(a5)
    8000456c:	000780e7          	jalr	a5
    delete buffer;
    80004570:	000a8e63          	beqz	s5,8000458c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004574:	000a8513          	mv	a0,s5
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	8a8080e7          	jalr	-1880(ra) # 80004e20 <_ZN9BufferCPPD1Ev>
    80004580:	000a8513          	mv	a0,s5
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	7dc080e7          	jalr	2012(ra) # 80001d60 <_ZdlPv>
    8000458c:	000b8113          	mv	sp,s7

}
    80004590:	f8040113          	addi	sp,s0,-128
    80004594:	07813083          	ld	ra,120(sp)
    80004598:	07013403          	ld	s0,112(sp)
    8000459c:	06813483          	ld	s1,104(sp)
    800045a0:	06013903          	ld	s2,96(sp)
    800045a4:	05813983          	ld	s3,88(sp)
    800045a8:	05013a03          	ld	s4,80(sp)
    800045ac:	04813a83          	ld	s5,72(sp)
    800045b0:	04013b03          	ld	s6,64(sp)
    800045b4:	03813b83          	ld	s7,56(sp)
    800045b8:	03013c03          	ld	s8,48(sp)
    800045bc:	02813c83          	ld	s9,40(sp)
    800045c0:	08010113          	addi	sp,sp,128
    800045c4:	00008067          	ret
    800045c8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800045cc:	000a8513          	mv	a0,s5
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	790080e7          	jalr	1936(ra) # 80001d60 <_ZdlPv>
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00007097          	auipc	ra,0x7
    800045e0:	fcc080e7          	jalr	-52(ra) # 8000b5a8 <_Unwind_Resume>
    800045e4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800045e8:	00048513          	mv	a0,s1
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	774080e7          	jalr	1908(ra) # 80001d60 <_ZdlPv>
    800045f4:	00090513          	mv	a0,s2
    800045f8:	00007097          	auipc	ra,0x7
    800045fc:	fb0080e7          	jalr	-80(ra) # 8000b5a8 <_Unwind_Resume>
    80004600:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004604:	000b0513          	mv	a0,s6
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	758080e7          	jalr	1880(ra) # 80001d60 <_ZdlPv>
    80004610:	00048513          	mv	a0,s1
    80004614:	00007097          	auipc	ra,0x7
    80004618:	f94080e7          	jalr	-108(ra) # 8000b5a8 <_Unwind_Resume>
    8000461c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004620:	000c8513          	mv	a0,s9
    80004624:	ffffd097          	auipc	ra,0xffffd
    80004628:	73c080e7          	jalr	1852(ra) # 80001d60 <_ZdlPv>
    8000462c:	00048513          	mv	a0,s1
    80004630:	00007097          	auipc	ra,0x7
    80004634:	f78080e7          	jalr	-136(ra) # 8000b5a8 <_Unwind_Resume>
    80004638:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000463c:	000c8513          	mv	a0,s9
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	720080e7          	jalr	1824(ra) # 80001d60 <_ZdlPv>
    80004648:	00048513          	mv	a0,s1
    8000464c:	00007097          	auipc	ra,0x7
    80004650:	f5c080e7          	jalr	-164(ra) # 8000b5a8 <_Unwind_Resume>

0000000080004654 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00113423          	sd	ra,8(sp)
    8000465c:	00813023          	sd	s0,0(sp)
    80004660:	01010413          	addi	s0,sp,16
    80004664:	00006797          	auipc	a5,0x6
    80004668:	d4478793          	addi	a5,a5,-700 # 8000a3a8 <_ZTV12ConsumerSync+0x10>
    8000466c:	00f53023          	sd	a5,0(a0)
    80004670:	ffffd097          	auipc	ra,0xffffd
    80004674:	638080e7          	jalr	1592(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_ZN12ConsumerSyncD0Ev>:
    80004688:	fe010113          	addi	sp,sp,-32
    8000468c:	00113c23          	sd	ra,24(sp)
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00913423          	sd	s1,8(sp)
    80004698:	02010413          	addi	s0,sp,32
    8000469c:	00050493          	mv	s1,a0
    800046a0:	00006797          	auipc	a5,0x6
    800046a4:	d0878793          	addi	a5,a5,-760 # 8000a3a8 <_ZTV12ConsumerSync+0x10>
    800046a8:	00f53023          	sd	a5,0(a0)
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	5fc080e7          	jalr	1532(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800046b4:	00048513          	mv	a0,s1
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	6a8080e7          	jalr	1704(ra) # 80001d60 <_ZdlPv>
    800046c0:	01813083          	ld	ra,24(sp)
    800046c4:	01013403          	ld	s0,16(sp)
    800046c8:	00813483          	ld	s1,8(sp)
    800046cc:	02010113          	addi	sp,sp,32
    800046d0:	00008067          	ret

00000000800046d4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800046d4:	ff010113          	addi	sp,sp,-16
    800046d8:	00113423          	sd	ra,8(sp)
    800046dc:	00813023          	sd	s0,0(sp)
    800046e0:	01010413          	addi	s0,sp,16
    800046e4:	00006797          	auipc	a5,0x6
    800046e8:	c9c78793          	addi	a5,a5,-868 # 8000a380 <_ZTV12ProducerSync+0x10>
    800046ec:	00f53023          	sd	a5,0(a0)
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	5b8080e7          	jalr	1464(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800046f8:	00813083          	ld	ra,8(sp)
    800046fc:	00013403          	ld	s0,0(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <_ZN12ProducerSyncD0Ev>:
    80004708:	fe010113          	addi	sp,sp,-32
    8000470c:	00113c23          	sd	ra,24(sp)
    80004710:	00813823          	sd	s0,16(sp)
    80004714:	00913423          	sd	s1,8(sp)
    80004718:	02010413          	addi	s0,sp,32
    8000471c:	00050493          	mv	s1,a0
    80004720:	00006797          	auipc	a5,0x6
    80004724:	c6078793          	addi	a5,a5,-928 # 8000a380 <_ZTV12ProducerSync+0x10>
    80004728:	00f53023          	sd	a5,0(a0)
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	57c080e7          	jalr	1404(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80004734:	00048513          	mv	a0,s1
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	628080e7          	jalr	1576(ra) # 80001d60 <_ZdlPv>
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	00813483          	ld	s1,8(sp)
    8000474c:	02010113          	addi	sp,sp,32
    80004750:	00008067          	ret

0000000080004754 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004754:	ff010113          	addi	sp,sp,-16
    80004758:	00113423          	sd	ra,8(sp)
    8000475c:	00813023          	sd	s0,0(sp)
    80004760:	01010413          	addi	s0,sp,16
    80004764:	00006797          	auipc	a5,0x6
    80004768:	bf478793          	addi	a5,a5,-1036 # 8000a358 <_ZTV16ProducerKeyboard+0x10>
    8000476c:	00f53023          	sd	a5,0(a0)
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	538080e7          	jalr	1336(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    80004778:	00813083          	ld	ra,8(sp)
    8000477c:	00013403          	ld	s0,0(sp)
    80004780:	01010113          	addi	sp,sp,16
    80004784:	00008067          	ret

0000000080004788 <_ZN16ProducerKeyboardD0Ev>:
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	00913423          	sd	s1,8(sp)
    80004798:	02010413          	addi	s0,sp,32
    8000479c:	00050493          	mv	s1,a0
    800047a0:	00006797          	auipc	a5,0x6
    800047a4:	bb878793          	addi	a5,a5,-1096 # 8000a358 <_ZTV16ProducerKeyboard+0x10>
    800047a8:	00f53023          	sd	a5,0(a0)
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	4fc080e7          	jalr	1276(ra) # 80001ca8 <_ZN6ThreadD1Ev>
    800047b4:	00048513          	mv	a0,s1
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	5a8080e7          	jalr	1448(ra) # 80001d60 <_ZdlPv>
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	00813483          	ld	s1,8(sp)
    800047cc:	02010113          	addi	sp,sp,32
    800047d0:	00008067          	ret

00000000800047d4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800047d4:	ff010113          	addi	sp,sp,-16
    800047d8:	00113423          	sd	ra,8(sp)
    800047dc:	00813023          	sd	s0,0(sp)
    800047e0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800047e4:	02053583          	ld	a1,32(a0)
    800047e8:	fffff097          	auipc	ra,0xfffff
    800047ec:	7e4080e7          	jalr	2020(ra) # 80003fcc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800047f0:	00813083          	ld	ra,8(sp)
    800047f4:	00013403          	ld	s0,0(sp)
    800047f8:	01010113          	addi	sp,sp,16
    800047fc:	00008067          	ret

0000000080004800 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004800:	ff010113          	addi	sp,sp,-16
    80004804:	00113423          	sd	ra,8(sp)
    80004808:	00813023          	sd	s0,0(sp)
    8000480c:	01010413          	addi	s0,sp,16
        producer(td);
    80004810:	02053583          	ld	a1,32(a0)
    80004814:	00000097          	auipc	ra,0x0
    80004818:	878080e7          	jalr	-1928(ra) # 8000408c <_ZN12ProducerSync8producerEPv>
    }
    8000481c:	00813083          	ld	ra,8(sp)
    80004820:	00013403          	ld	s0,0(sp)
    80004824:	01010113          	addi	sp,sp,16
    80004828:	00008067          	ret

000000008000482c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000482c:	ff010113          	addi	sp,sp,-16
    80004830:	00113423          	sd	ra,8(sp)
    80004834:	00813023          	sd	s0,0(sp)
    80004838:	01010413          	addi	s0,sp,16
        consumer(td);
    8000483c:	02053583          	ld	a1,32(a0)
    80004840:	00000097          	auipc	ra,0x0
    80004844:	8e0080e7          	jalr	-1824(ra) # 80004120 <_ZN12ConsumerSync8consumerEPv>
    }
    80004848:	00813083          	ld	ra,8(sp)
    8000484c:	00013403          	ld	s0,0(sp)
    80004850:	01010113          	addi	sp,sp,16
    80004854:	00008067          	ret

0000000080004858 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004858:	fe010113          	addi	sp,sp,-32
    8000485c:	00113c23          	sd	ra,24(sp)
    80004860:	00813823          	sd	s0,16(sp)
    80004864:	00913423          	sd	s1,8(sp)
    80004868:	02010413          	addi	s0,sp,32
    8000486c:	00050493          	mv	s1,a0
    LOCK();
    80004870:	00100613          	li	a2,1
    80004874:	00000593          	li	a1,0
    80004878:	00006517          	auipc	a0,0x6
    8000487c:	c5050513          	addi	a0,a0,-944 # 8000a4c8 <lockPrint>
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	8a4080e7          	jalr	-1884(ra) # 80001124 <copy_and_swap>
    80004888:	00050863          	beqz	a0,80004898 <_Z11printStringPKc+0x40>
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	a08080e7          	jalr	-1528(ra) # 80001294 <_Z15thread_dispatchv>
    80004894:	fddff06f          	j	80004870 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004898:	0004c503          	lbu	a0,0(s1)
    8000489c:	00050a63          	beqz	a0,800048b0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	be0080e7          	jalr	-1056(ra) # 80001480 <_Z4putcc>
        string++;
    800048a8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800048ac:	fedff06f          	j	80004898 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800048b0:	00000613          	li	a2,0
    800048b4:	00100593          	li	a1,1
    800048b8:	00006517          	auipc	a0,0x6
    800048bc:	c1050513          	addi	a0,a0,-1008 # 8000a4c8 <lockPrint>
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	864080e7          	jalr	-1948(ra) # 80001124 <copy_and_swap>
    800048c8:	fe0514e3          	bnez	a0,800048b0 <_Z11printStringPKc+0x58>
}
    800048cc:	01813083          	ld	ra,24(sp)
    800048d0:	01013403          	ld	s0,16(sp)
    800048d4:	00813483          	ld	s1,8(sp)
    800048d8:	02010113          	addi	sp,sp,32
    800048dc:	00008067          	ret

00000000800048e0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800048e0:	fd010113          	addi	sp,sp,-48
    800048e4:	02113423          	sd	ra,40(sp)
    800048e8:	02813023          	sd	s0,32(sp)
    800048ec:	00913c23          	sd	s1,24(sp)
    800048f0:	01213823          	sd	s2,16(sp)
    800048f4:	01313423          	sd	s3,8(sp)
    800048f8:	01413023          	sd	s4,0(sp)
    800048fc:	03010413          	addi	s0,sp,48
    80004900:	00050993          	mv	s3,a0
    80004904:	00058a13          	mv	s4,a1
    LOCK();
    80004908:	00100613          	li	a2,1
    8000490c:	00000593          	li	a1,0
    80004910:	00006517          	auipc	a0,0x6
    80004914:	bb850513          	addi	a0,a0,-1096 # 8000a4c8 <lockPrint>
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	80c080e7          	jalr	-2036(ra) # 80001124 <copy_and_swap>
    80004920:	00050863          	beqz	a0,80004930 <_Z9getStringPci+0x50>
    80004924:	ffffd097          	auipc	ra,0xffffd
    80004928:	970080e7          	jalr	-1680(ra) # 80001294 <_Z15thread_dispatchv>
    8000492c:	fddff06f          	j	80004908 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004930:	00000913          	li	s2,0
    80004934:	00090493          	mv	s1,s2
    80004938:	0019091b          	addiw	s2,s2,1
    8000493c:	03495a63          	bge	s2,s4,80004970 <_Z9getStringPci+0x90>
        cc = getc();
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	b0c080e7          	jalr	-1268(ra) # 8000144c <_Z4getcv>
        if(cc < 1)
    80004948:	02050463          	beqz	a0,80004970 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000494c:	009984b3          	add	s1,s3,s1
    80004950:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004954:	00a00793          	li	a5,10
    80004958:	00f50a63          	beq	a0,a5,8000496c <_Z9getStringPci+0x8c>
    8000495c:	00d00793          	li	a5,13
    80004960:	fcf51ae3          	bne	a0,a5,80004934 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004964:	00090493          	mv	s1,s2
    80004968:	0080006f          	j	80004970 <_Z9getStringPci+0x90>
    8000496c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004970:	009984b3          	add	s1,s3,s1
    80004974:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004978:	00000613          	li	a2,0
    8000497c:	00100593          	li	a1,1
    80004980:	00006517          	auipc	a0,0x6
    80004984:	b4850513          	addi	a0,a0,-1208 # 8000a4c8 <lockPrint>
    80004988:	ffffc097          	auipc	ra,0xffffc
    8000498c:	79c080e7          	jalr	1948(ra) # 80001124 <copy_and_swap>
    80004990:	fe0514e3          	bnez	a0,80004978 <_Z9getStringPci+0x98>
    return buf;
}
    80004994:	00098513          	mv	a0,s3
    80004998:	02813083          	ld	ra,40(sp)
    8000499c:	02013403          	ld	s0,32(sp)
    800049a0:	01813483          	ld	s1,24(sp)
    800049a4:	01013903          	ld	s2,16(sp)
    800049a8:	00813983          	ld	s3,8(sp)
    800049ac:	00013a03          	ld	s4,0(sp)
    800049b0:	03010113          	addi	sp,sp,48
    800049b4:	00008067          	ret

00000000800049b8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800049b8:	ff010113          	addi	sp,sp,-16
    800049bc:	00813423          	sd	s0,8(sp)
    800049c0:	01010413          	addi	s0,sp,16
    800049c4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800049c8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800049cc:	0006c603          	lbu	a2,0(a3)
    800049d0:	fd06071b          	addiw	a4,a2,-48
    800049d4:	0ff77713          	andi	a4,a4,255
    800049d8:	00900793          	li	a5,9
    800049dc:	02e7e063          	bltu	a5,a4,800049fc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800049e0:	0025179b          	slliw	a5,a0,0x2
    800049e4:	00a787bb          	addw	a5,a5,a0
    800049e8:	0017979b          	slliw	a5,a5,0x1
    800049ec:	00168693          	addi	a3,a3,1
    800049f0:	00c787bb          	addw	a5,a5,a2
    800049f4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800049f8:	fd5ff06f          	j	800049cc <_Z11stringToIntPKc+0x14>
    return n;
}
    800049fc:	00813403          	ld	s0,8(sp)
    80004a00:	01010113          	addi	sp,sp,16
    80004a04:	00008067          	ret

0000000080004a08 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004a08:	fc010113          	addi	sp,sp,-64
    80004a0c:	02113c23          	sd	ra,56(sp)
    80004a10:	02813823          	sd	s0,48(sp)
    80004a14:	02913423          	sd	s1,40(sp)
    80004a18:	03213023          	sd	s2,32(sp)
    80004a1c:	01313c23          	sd	s3,24(sp)
    80004a20:	04010413          	addi	s0,sp,64
    80004a24:	00050493          	mv	s1,a0
    80004a28:	00058913          	mv	s2,a1
    80004a2c:	00060993          	mv	s3,a2
    LOCK();
    80004a30:	00100613          	li	a2,1
    80004a34:	00000593          	li	a1,0
    80004a38:	00006517          	auipc	a0,0x6
    80004a3c:	a9050513          	addi	a0,a0,-1392 # 8000a4c8 <lockPrint>
    80004a40:	ffffc097          	auipc	ra,0xffffc
    80004a44:	6e4080e7          	jalr	1764(ra) # 80001124 <copy_and_swap>
    80004a48:	00050863          	beqz	a0,80004a58 <_Z8printIntiii+0x50>
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	848080e7          	jalr	-1976(ra) # 80001294 <_Z15thread_dispatchv>
    80004a54:	fddff06f          	j	80004a30 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004a58:	00098463          	beqz	s3,80004a60 <_Z8printIntiii+0x58>
    80004a5c:	0804c463          	bltz	s1,80004ae4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004a60:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004a64:	00000593          	li	a1,0
    }

    i = 0;
    80004a68:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004a6c:	0009079b          	sext.w	a5,s2
    80004a70:	0325773b          	remuw	a4,a0,s2
    80004a74:	00048613          	mv	a2,s1
    80004a78:	0014849b          	addiw	s1,s1,1
    80004a7c:	02071693          	slli	a3,a4,0x20
    80004a80:	0206d693          	srli	a3,a3,0x20
    80004a84:	00006717          	auipc	a4,0x6
    80004a88:	93c70713          	addi	a4,a4,-1732 # 8000a3c0 <digits>
    80004a8c:	00d70733          	add	a4,a4,a3
    80004a90:	00074683          	lbu	a3,0(a4)
    80004a94:	fd040713          	addi	a4,s0,-48
    80004a98:	00c70733          	add	a4,a4,a2
    80004a9c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004aa0:	0005071b          	sext.w	a4,a0
    80004aa4:	0325553b          	divuw	a0,a0,s2
    80004aa8:	fcf772e3          	bgeu	a4,a5,80004a6c <_Z8printIntiii+0x64>
    if(neg)
    80004aac:	00058c63          	beqz	a1,80004ac4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004ab0:	fd040793          	addi	a5,s0,-48
    80004ab4:	009784b3          	add	s1,a5,s1
    80004ab8:	02d00793          	li	a5,45
    80004abc:	fef48823          	sb	a5,-16(s1)
    80004ac0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ac4:	fff4849b          	addiw	s1,s1,-1
    80004ac8:	0204c463          	bltz	s1,80004af0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004acc:	fd040793          	addi	a5,s0,-48
    80004ad0:	009787b3          	add	a5,a5,s1
    80004ad4:	ff07c503          	lbu	a0,-16(a5)
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	9a8080e7          	jalr	-1624(ra) # 80001480 <_Z4putcc>
    80004ae0:	fe5ff06f          	j	80004ac4 <_Z8printIntiii+0xbc>
        x = -xx;
    80004ae4:	4090053b          	negw	a0,s1
        neg = 1;
    80004ae8:	00100593          	li	a1,1
        x = -xx;
    80004aec:	f7dff06f          	j	80004a68 <_Z8printIntiii+0x60>

    UNLOCK();
    80004af0:	00000613          	li	a2,0
    80004af4:	00100593          	li	a1,1
    80004af8:	00006517          	auipc	a0,0x6
    80004afc:	9d050513          	addi	a0,a0,-1584 # 8000a4c8 <lockPrint>
    80004b00:	ffffc097          	auipc	ra,0xffffc
    80004b04:	624080e7          	jalr	1572(ra) # 80001124 <copy_and_swap>
    80004b08:	fe0514e3          	bnez	a0,80004af0 <_Z8printIntiii+0xe8>
    80004b0c:	03813083          	ld	ra,56(sp)
    80004b10:	03013403          	ld	s0,48(sp)
    80004b14:	02813483          	ld	s1,40(sp)
    80004b18:	02013903          	ld	s2,32(sp)
    80004b1c:	01813983          	ld	s3,24(sp)
    80004b20:	04010113          	addi	sp,sp,64
    80004b24:	00008067          	ret

0000000080004b28 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b28:	fd010113          	addi	sp,sp,-48
    80004b2c:	02113423          	sd	ra,40(sp)
    80004b30:	02813023          	sd	s0,32(sp)
    80004b34:	00913c23          	sd	s1,24(sp)
    80004b38:	01213823          	sd	s2,16(sp)
    80004b3c:	01313423          	sd	s3,8(sp)
    80004b40:	03010413          	addi	s0,sp,48
    80004b44:	00050493          	mv	s1,a0
    80004b48:	00058913          	mv	s2,a1
    80004b4c:	0015879b          	addiw	a5,a1,1
    80004b50:	0007851b          	sext.w	a0,a5
    80004b54:	00f4a023          	sw	a5,0(s1)
    80004b58:	0004a823          	sw	zero,16(s1)
    80004b5c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b60:	00251513          	slli	a0,a0,0x2
    80004b64:	ffffc097          	auipc	ra,0xffffc
    80004b68:	5e0080e7          	jalr	1504(ra) # 80001144 <_Z9mem_allocm>
    80004b6c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004b70:	01000513          	li	a0,16
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	1c4080e7          	jalr	452(ra) # 80001d38 <_Znwm>
    80004b7c:	00050993          	mv	s3,a0
    80004b80:	00000593          	li	a1,0
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	26c080e7          	jalr	620(ra) # 80001df0 <_ZN9SemaphoreC1Ej>
    80004b8c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004b90:	01000513          	li	a0,16
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	1a4080e7          	jalr	420(ra) # 80001d38 <_Znwm>
    80004b9c:	00050993          	mv	s3,a0
    80004ba0:	00090593          	mv	a1,s2
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	24c080e7          	jalr	588(ra) # 80001df0 <_ZN9SemaphoreC1Ej>
    80004bac:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004bb0:	01000513          	li	a0,16
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	184080e7          	jalr	388(ra) # 80001d38 <_Znwm>
    80004bbc:	00050913          	mv	s2,a0
    80004bc0:	00100593          	li	a1,1
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	22c080e7          	jalr	556(ra) # 80001df0 <_ZN9SemaphoreC1Ej>
    80004bcc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004bd0:	01000513          	li	a0,16
    80004bd4:	ffffd097          	auipc	ra,0xffffd
    80004bd8:	164080e7          	jalr	356(ra) # 80001d38 <_Znwm>
    80004bdc:	00050913          	mv	s2,a0
    80004be0:	00100593          	li	a1,1
    80004be4:	ffffd097          	auipc	ra,0xffffd
    80004be8:	20c080e7          	jalr	524(ra) # 80001df0 <_ZN9SemaphoreC1Ej>
    80004bec:	0324b823          	sd	s2,48(s1)
}
    80004bf0:	02813083          	ld	ra,40(sp)
    80004bf4:	02013403          	ld	s0,32(sp)
    80004bf8:	01813483          	ld	s1,24(sp)
    80004bfc:	01013903          	ld	s2,16(sp)
    80004c00:	00813983          	ld	s3,8(sp)
    80004c04:	03010113          	addi	sp,sp,48
    80004c08:	00008067          	ret
    80004c0c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004c10:	00098513          	mv	a0,s3
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	14c080e7          	jalr	332(ra) # 80001d60 <_ZdlPv>
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00007097          	auipc	ra,0x7
    80004c24:	988080e7          	jalr	-1656(ra) # 8000b5a8 <_Unwind_Resume>
    80004c28:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004c2c:	00098513          	mv	a0,s3
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	130080e7          	jalr	304(ra) # 80001d60 <_ZdlPv>
    80004c38:	00048513          	mv	a0,s1
    80004c3c:	00007097          	auipc	ra,0x7
    80004c40:	96c080e7          	jalr	-1684(ra) # 8000b5a8 <_Unwind_Resume>
    80004c44:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004c48:	00090513          	mv	a0,s2
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	114080e7          	jalr	276(ra) # 80001d60 <_ZdlPv>
    80004c54:	00048513          	mv	a0,s1
    80004c58:	00007097          	auipc	ra,0x7
    80004c5c:	950080e7          	jalr	-1712(ra) # 8000b5a8 <_Unwind_Resume>
    80004c60:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004c64:	00090513          	mv	a0,s2
    80004c68:	ffffd097          	auipc	ra,0xffffd
    80004c6c:	0f8080e7          	jalr	248(ra) # 80001d60 <_ZdlPv>
    80004c70:	00048513          	mv	a0,s1
    80004c74:	00007097          	auipc	ra,0x7
    80004c78:	934080e7          	jalr	-1740(ra) # 8000b5a8 <_Unwind_Resume>

0000000080004c7c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004c7c:	fe010113          	addi	sp,sp,-32
    80004c80:	00113c23          	sd	ra,24(sp)
    80004c84:	00813823          	sd	s0,16(sp)
    80004c88:	00913423          	sd	s1,8(sp)
    80004c8c:	01213023          	sd	s2,0(sp)
    80004c90:	02010413          	addi	s0,sp,32
    80004c94:	00050493          	mv	s1,a0
    80004c98:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004c9c:	01853503          	ld	a0,24(a0)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	188080e7          	jalr	392(ra) # 80001e28 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004ca8:	0304b503          	ld	a0,48(s1)
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	17c080e7          	jalr	380(ra) # 80001e28 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004cb4:	0084b783          	ld	a5,8(s1)
    80004cb8:	0144a703          	lw	a4,20(s1)
    80004cbc:	00271713          	slli	a4,a4,0x2
    80004cc0:	00e787b3          	add	a5,a5,a4
    80004cc4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004cc8:	0144a783          	lw	a5,20(s1)
    80004ccc:	0017879b          	addiw	a5,a5,1
    80004cd0:	0004a703          	lw	a4,0(s1)
    80004cd4:	02e7e7bb          	remw	a5,a5,a4
    80004cd8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004cdc:	0304b503          	ld	a0,48(s1)
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	174080e7          	jalr	372(ra) # 80001e54 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004ce8:	0204b503          	ld	a0,32(s1)
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	168080e7          	jalr	360(ra) # 80001e54 <_ZN9Semaphore6signalEv>

}
    80004cf4:	01813083          	ld	ra,24(sp)
    80004cf8:	01013403          	ld	s0,16(sp)
    80004cfc:	00813483          	ld	s1,8(sp)
    80004d00:	00013903          	ld	s2,0(sp)
    80004d04:	02010113          	addi	sp,sp,32
    80004d08:	00008067          	ret

0000000080004d0c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004d0c:	fe010113          	addi	sp,sp,-32
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	01213023          	sd	s2,0(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004d28:	02053503          	ld	a0,32(a0)
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	0fc080e7          	jalr	252(ra) # 80001e28 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004d34:	0284b503          	ld	a0,40(s1)
    80004d38:	ffffd097          	auipc	ra,0xffffd
    80004d3c:	0f0080e7          	jalr	240(ra) # 80001e28 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004d40:	0084b703          	ld	a4,8(s1)
    80004d44:	0104a783          	lw	a5,16(s1)
    80004d48:	00279693          	slli	a3,a5,0x2
    80004d4c:	00d70733          	add	a4,a4,a3
    80004d50:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d54:	0017879b          	addiw	a5,a5,1
    80004d58:	0004a703          	lw	a4,0(s1)
    80004d5c:	02e7e7bb          	remw	a5,a5,a4
    80004d60:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004d64:	0284b503          	ld	a0,40(s1)
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	0ec080e7          	jalr	236(ra) # 80001e54 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004d70:	0184b503          	ld	a0,24(s1)
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	0e0080e7          	jalr	224(ra) # 80001e54 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d7c:	00090513          	mv	a0,s2
    80004d80:	01813083          	ld	ra,24(sp)
    80004d84:	01013403          	ld	s0,16(sp)
    80004d88:	00813483          	ld	s1,8(sp)
    80004d8c:	00013903          	ld	s2,0(sp)
    80004d90:	02010113          	addi	sp,sp,32
    80004d94:	00008067          	ret

0000000080004d98 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004d98:	fe010113          	addi	sp,sp,-32
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	00813823          	sd	s0,16(sp)
    80004da4:	00913423          	sd	s1,8(sp)
    80004da8:	01213023          	sd	s2,0(sp)
    80004dac:	02010413          	addi	s0,sp,32
    80004db0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004db4:	02853503          	ld	a0,40(a0)
    80004db8:	ffffd097          	auipc	ra,0xffffd
    80004dbc:	070080e7          	jalr	112(ra) # 80001e28 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004dc0:	0304b503          	ld	a0,48(s1)
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	064080e7          	jalr	100(ra) # 80001e28 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004dcc:	0144a783          	lw	a5,20(s1)
    80004dd0:	0104a903          	lw	s2,16(s1)
    80004dd4:	0327ce63          	blt	a5,s2,80004e10 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004dd8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004ddc:	0304b503          	ld	a0,48(s1)
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	074080e7          	jalr	116(ra) # 80001e54 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004de8:	0284b503          	ld	a0,40(s1)
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	068080e7          	jalr	104(ra) # 80001e54 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004df4:	00090513          	mv	a0,s2
    80004df8:	01813083          	ld	ra,24(sp)
    80004dfc:	01013403          	ld	s0,16(sp)
    80004e00:	00813483          	ld	s1,8(sp)
    80004e04:	00013903          	ld	s2,0(sp)
    80004e08:	02010113          	addi	sp,sp,32
    80004e0c:	00008067          	ret
        ret = cap - head + tail;
    80004e10:	0004a703          	lw	a4,0(s1)
    80004e14:	4127093b          	subw	s2,a4,s2
    80004e18:	00f9093b          	addw	s2,s2,a5
    80004e1c:	fc1ff06f          	j	80004ddc <_ZN9BufferCPP6getCntEv+0x44>

0000000080004e20 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004e20:	fe010113          	addi	sp,sp,-32
    80004e24:	00113c23          	sd	ra,24(sp)
    80004e28:	00813823          	sd	s0,16(sp)
    80004e2c:	00913423          	sd	s1,8(sp)
    80004e30:	02010413          	addi	s0,sp,32
    80004e34:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004e38:	00a00513          	li	a0,10
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	178080e7          	jalr	376(ra) # 80001fb4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004e44:	00003517          	auipc	a0,0x3
    80004e48:	4cc50513          	addi	a0,a0,1228 # 80008310 <CONSOLE_STATUS+0x300>
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	a0c080e7          	jalr	-1524(ra) # 80004858 <_Z11printStringPKc>
    while (getCnt()) {
    80004e54:	00048513          	mv	a0,s1
    80004e58:	00000097          	auipc	ra,0x0
    80004e5c:	f40080e7          	jalr	-192(ra) # 80004d98 <_ZN9BufferCPP6getCntEv>
    80004e60:	02050c63          	beqz	a0,80004e98 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004e64:	0084b783          	ld	a5,8(s1)
    80004e68:	0104a703          	lw	a4,16(s1)
    80004e6c:	00271713          	slli	a4,a4,0x2
    80004e70:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004e74:	0007c503          	lbu	a0,0(a5)
    80004e78:	ffffd097          	auipc	ra,0xffffd
    80004e7c:	13c080e7          	jalr	316(ra) # 80001fb4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004e80:	0104a783          	lw	a5,16(s1)
    80004e84:	0017879b          	addiw	a5,a5,1
    80004e88:	0004a703          	lw	a4,0(s1)
    80004e8c:	02e7e7bb          	remw	a5,a5,a4
    80004e90:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004e94:	fc1ff06f          	j	80004e54 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004e98:	02100513          	li	a0,33
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	118080e7          	jalr	280(ra) # 80001fb4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004ea4:	00a00513          	li	a0,10
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	10c080e7          	jalr	268(ra) # 80001fb4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004eb0:	0084b503          	ld	a0,8(s1)
    80004eb4:	ffffc097          	auipc	ra,0xffffc
    80004eb8:	2e8080e7          	jalr	744(ra) # 8000119c <_Z8mem_freePv>
    delete itemAvailable;
    80004ebc:	0204b503          	ld	a0,32(s1)
    80004ec0:	00050863          	beqz	a0,80004ed0 <_ZN9BufferCPPD1Ev+0xb0>
    80004ec4:	00053783          	ld	a5,0(a0)
    80004ec8:	0087b783          	ld	a5,8(a5)
    80004ecc:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004ed0:	0184b503          	ld	a0,24(s1)
    80004ed4:	00050863          	beqz	a0,80004ee4 <_ZN9BufferCPPD1Ev+0xc4>
    80004ed8:	00053783          	ld	a5,0(a0)
    80004edc:	0087b783          	ld	a5,8(a5)
    80004ee0:	000780e7          	jalr	a5
    delete mutexTail;
    80004ee4:	0304b503          	ld	a0,48(s1)
    80004ee8:	00050863          	beqz	a0,80004ef8 <_ZN9BufferCPPD1Ev+0xd8>
    80004eec:	00053783          	ld	a5,0(a0)
    80004ef0:	0087b783          	ld	a5,8(a5)
    80004ef4:	000780e7          	jalr	a5
    delete mutexHead;
    80004ef8:	0284b503          	ld	a0,40(s1)
    80004efc:	00050863          	beqz	a0,80004f0c <_ZN9BufferCPPD1Ev+0xec>
    80004f00:	00053783          	ld	a5,0(a0)
    80004f04:	0087b783          	ld	a5,8(a5)
    80004f08:	000780e7          	jalr	a5
}
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	01013403          	ld	s0,16(sp)
    80004f14:	00813483          	ld	s1,8(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret

0000000080004f20 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00113c23          	sd	ra,24(sp)
    80004f28:	00813823          	sd	s0,16(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	01213023          	sd	s2,0(sp)
    80004f34:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004f38:	00003517          	auipc	a0,0x3
    80004f3c:	3f050513          	addi	a0,a0,1008 # 80008328 <CONSOLE_STATUS+0x318>
    80004f40:	00000097          	auipc	ra,0x0
    80004f44:	918080e7          	jalr	-1768(ra) # 80004858 <_Z11printStringPKc>
    int test = getc() - '0';
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	504080e7          	jalr	1284(ra) # 8000144c <_Z4getcv>
    80004f50:	00050913          	mv	s2,a0
    80004f54:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004f58:	ffffc097          	auipc	ra,0xffffc
    80004f5c:	4f4080e7          	jalr	1268(ra) # 8000144c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80004f60:	fcb9091b          	addiw	s2,s2,-53
    80004f64:	00100793          	li	a5,1
    80004f68:	0327f463          	bgeu	a5,s2,80004f90 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004f6c:	00700793          	li	a5,7
    80004f70:	0e97e263          	bltu	a5,s1,80005054 <_Z8userMainv+0x134>
    80004f74:	00249493          	slli	s1,s1,0x2
    80004f78:	00003717          	auipc	a4,0x3
    80004f7c:	5c870713          	addi	a4,a4,1480 # 80008540 <CONSOLE_STATUS+0x530>
    80004f80:	00e484b3          	add	s1,s1,a4
    80004f84:	0004a783          	lw	a5,0(s1)
    80004f88:	00e787b3          	add	a5,a5,a4
    80004f8c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80004f90:	00003517          	auipc	a0,0x3
    80004f94:	3b850513          	addi	a0,a0,952 # 80008348 <CONSOLE_STATUS+0x338>
    80004f98:	00000097          	auipc	ra,0x0
    80004f9c:	8c0080e7          	jalr	-1856(ra) # 80004858 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004fa0:	01813083          	ld	ra,24(sp)
    80004fa4:	01013403          	ld	s0,16(sp)
    80004fa8:	00813483          	ld	s1,8(sp)
    80004fac:	00013903          	ld	s2,0(sp)
    80004fb0:	02010113          	addi	sp,sp,32
    80004fb4:	00008067          	ret
            Threads_C_API_test();
    80004fb8:	fffff097          	auipc	ra,0xfffff
    80004fbc:	f18080e7          	jalr	-232(ra) # 80003ed0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004fc0:	00003517          	auipc	a0,0x3
    80004fc4:	3b850513          	addi	a0,a0,952 # 80008378 <CONSOLE_STATUS+0x368>
    80004fc8:	00000097          	auipc	ra,0x0
    80004fcc:	890080e7          	jalr	-1904(ra) # 80004858 <_Z11printStringPKc>
            break;
    80004fd0:	fd1ff06f          	j	80004fa0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80004fd4:	ffffe097          	auipc	ra,0xffffe
    80004fd8:	ddc080e7          	jalr	-548(ra) # 80002db0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004fdc:	00003517          	auipc	a0,0x3
    80004fe0:	3dc50513          	addi	a0,a0,988 # 800083b8 <CONSOLE_STATUS+0x3a8>
    80004fe4:	00000097          	auipc	ra,0x0
    80004fe8:	874080e7          	jalr	-1932(ra) # 80004858 <_Z11printStringPKc>
            break;
    80004fec:	fb5ff06f          	j	80004fa0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80004ff0:	ffffd097          	auipc	ra,0xffffd
    80004ff4:	614080e7          	jalr	1556(ra) # 80002604 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004ff8:	00003517          	auipc	a0,0x3
    80004ffc:	40050513          	addi	a0,a0,1024 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80005000:	00000097          	auipc	ra,0x0
    80005004:	858080e7          	jalr	-1960(ra) # 80004858 <_Z11printStringPKc>
            break;
    80005008:	f99ff06f          	j	80004fa0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000500c:	fffff097          	auipc	ra,0xfffff
    80005010:	208080e7          	jalr	520(ra) # 80004214 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005014:	00003517          	auipc	a0,0x3
    80005018:	43450513          	addi	a0,a0,1076 # 80008448 <CONSOLE_STATUS+0x438>
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	83c080e7          	jalr	-1988(ra) # 80004858 <_Z11printStringPKc>
            break;
    80005024:	f7dff06f          	j	80004fa0 <_Z8userMainv+0x80>
            System_Mode_test();
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	658080e7          	jalr	1624(ra) # 80005680 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005030:	00003517          	auipc	a0,0x3
    80005034:	47050513          	addi	a0,a0,1136 # 800084a0 <CONSOLE_STATUS+0x490>
    80005038:	00000097          	auipc	ra,0x0
    8000503c:	820080e7          	jalr	-2016(ra) # 80004858 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005040:	00003517          	auipc	a0,0x3
    80005044:	48050513          	addi	a0,a0,1152 # 800084c0 <CONSOLE_STATUS+0x4b0>
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	810080e7          	jalr	-2032(ra) # 80004858 <_Z11printStringPKc>
            break;
    80005050:	f51ff06f          	j	80004fa0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005054:	00003517          	auipc	a0,0x3
    80005058:	4c450513          	addi	a0,a0,1220 # 80008518 <CONSOLE_STATUS+0x508>
    8000505c:	fffff097          	auipc	ra,0xfffff
    80005060:	7fc080e7          	jalr	2044(ra) # 80004858 <_Z11printStringPKc>
    80005064:	f3dff06f          	j	80004fa0 <_Z8userMainv+0x80>

0000000080005068 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	01213023          	sd	s2,0(sp)
    8000507c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005080:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005084:	00600493          	li	s1,6
    while (--i > 0) {
    80005088:	fff4849b          	addiw	s1,s1,-1
    8000508c:	04905463          	blez	s1,800050d4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005090:	00003517          	auipc	a0,0x3
    80005094:	4d050513          	addi	a0,a0,1232 # 80008560 <CONSOLE_STATUS+0x550>
    80005098:	fffff097          	auipc	ra,0xfffff
    8000509c:	7c0080e7          	jalr	1984(ra) # 80004858 <_Z11printStringPKc>
        printInt(sleep_time);
    800050a0:	00000613          	li	a2,0
    800050a4:	00a00593          	li	a1,10
    800050a8:	0009051b          	sext.w	a0,s2
    800050ac:	00000097          	auipc	ra,0x0
    800050b0:	95c080e7          	jalr	-1700(ra) # 80004a08 <_Z8printIntiii>
        printString(" !\n");
    800050b4:	00003517          	auipc	a0,0x3
    800050b8:	4b450513          	addi	a0,a0,1204 # 80008568 <CONSOLE_STATUS+0x558>
    800050bc:	fffff097          	auipc	ra,0xfffff
    800050c0:	79c080e7          	jalr	1948(ra) # 80004858 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800050c4:	00090513          	mv	a0,s2
    800050c8:	ffffc097          	auipc	ra,0xffffc
    800050cc:	368080e7          	jalr	872(ra) # 80001430 <_Z10time_sleepm>
    while (--i > 0) {
    800050d0:	fb9ff06f          	j	80005088 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800050d4:	00a00793          	li	a5,10
    800050d8:	02f95933          	divu	s2,s2,a5
    800050dc:	fff90913          	addi	s2,s2,-1
    800050e0:	00005797          	auipc	a5,0x5
    800050e4:	3f078793          	addi	a5,a5,1008 # 8000a4d0 <_ZL8finished>
    800050e8:	01278933          	add	s2,a5,s2
    800050ec:	00100793          	li	a5,1
    800050f0:	00f90023          	sb	a5,0(s2)
}
    800050f4:	01813083          	ld	ra,24(sp)
    800050f8:	01013403          	ld	s0,16(sp)
    800050fc:	00813483          	ld	s1,8(sp)
    80005100:	00013903          	ld	s2,0(sp)
    80005104:	02010113          	addi	sp,sp,32
    80005108:	00008067          	ret

000000008000510c <_Z12testSleepingv>:

void testSleeping() {
    8000510c:	fc010113          	addi	sp,sp,-64
    80005110:	02113c23          	sd	ra,56(sp)
    80005114:	02813823          	sd	s0,48(sp)
    80005118:	02913423          	sd	s1,40(sp)
    8000511c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005120:	00a00793          	li	a5,10
    80005124:	fcf43823          	sd	a5,-48(s0)
    80005128:	01400793          	li	a5,20
    8000512c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005130:	00000493          	li	s1,0
    80005134:	02c0006f          	j	80005160 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005138:	00349793          	slli	a5,s1,0x3
    8000513c:	fd040613          	addi	a2,s0,-48
    80005140:	00f60633          	add	a2,a2,a5
    80005144:	00000597          	auipc	a1,0x0
    80005148:	f2458593          	addi	a1,a1,-220 # 80005068 <_ZL9sleepyRunPv>
    8000514c:	fc040513          	addi	a0,s0,-64
    80005150:	00f50533          	add	a0,a0,a5
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	088080e7          	jalr	136(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000515c:	0014849b          	addiw	s1,s1,1
    80005160:	00100793          	li	a5,1
    80005164:	fc97dae3          	bge	a5,s1,80005138 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005168:	00005797          	auipc	a5,0x5
    8000516c:	3687c783          	lbu	a5,872(a5) # 8000a4d0 <_ZL8finished>
    80005170:	fe078ce3          	beqz	a5,80005168 <_Z12testSleepingv+0x5c>
    80005174:	00005797          	auipc	a5,0x5
    80005178:	35d7c783          	lbu	a5,861(a5) # 8000a4d1 <_ZL8finished+0x1>
    8000517c:	fe0786e3          	beqz	a5,80005168 <_Z12testSleepingv+0x5c>
}
    80005180:	03813083          	ld	ra,56(sp)
    80005184:	03013403          	ld	s0,48(sp)
    80005188:	02813483          	ld	s1,40(sp)
    8000518c:	04010113          	addi	sp,sp,64
    80005190:	00008067          	ret

0000000080005194 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005194:	fe010113          	addi	sp,sp,-32
    80005198:	00113c23          	sd	ra,24(sp)
    8000519c:	00813823          	sd	s0,16(sp)
    800051a0:	00913423          	sd	s1,8(sp)
    800051a4:	01213023          	sd	s2,0(sp)
    800051a8:	02010413          	addi	s0,sp,32
    800051ac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800051b0:	00100793          	li	a5,1
    800051b4:	02a7f863          	bgeu	a5,a0,800051e4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800051b8:	00a00793          	li	a5,10
    800051bc:	02f577b3          	remu	a5,a0,a5
    800051c0:	02078e63          	beqz	a5,800051fc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800051c4:	fff48513          	addi	a0,s1,-1
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	fcc080e7          	jalr	-52(ra) # 80005194 <_ZL9fibonaccim>
    800051d0:	00050913          	mv	s2,a0
    800051d4:	ffe48513          	addi	a0,s1,-2
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	fbc080e7          	jalr	-68(ra) # 80005194 <_ZL9fibonaccim>
    800051e0:	00a90533          	add	a0,s2,a0
}
    800051e4:	01813083          	ld	ra,24(sp)
    800051e8:	01013403          	ld	s0,16(sp)
    800051ec:	00813483          	ld	s1,8(sp)
    800051f0:	00013903          	ld	s2,0(sp)
    800051f4:	02010113          	addi	sp,sp,32
    800051f8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800051fc:	ffffc097          	auipc	ra,0xffffc
    80005200:	098080e7          	jalr	152(ra) # 80001294 <_Z15thread_dispatchv>
    80005204:	fc1ff06f          	j	800051c4 <_ZL9fibonaccim+0x30>

0000000080005208 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005208:	fe010113          	addi	sp,sp,-32
    8000520c:	00113c23          	sd	ra,24(sp)
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00913423          	sd	s1,8(sp)
    80005218:	01213023          	sd	s2,0(sp)
    8000521c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005220:	00a00493          	li	s1,10
    80005224:	0400006f          	j	80005264 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005228:	00003517          	auipc	a0,0x3
    8000522c:	05050513          	addi	a0,a0,80 # 80008278 <CONSOLE_STATUS+0x268>
    80005230:	fffff097          	auipc	ra,0xfffff
    80005234:	628080e7          	jalr	1576(ra) # 80004858 <_Z11printStringPKc>
    80005238:	00000613          	li	a2,0
    8000523c:	00a00593          	li	a1,10
    80005240:	00048513          	mv	a0,s1
    80005244:	fffff097          	auipc	ra,0xfffff
    80005248:	7c4080e7          	jalr	1988(ra) # 80004a08 <_Z8printIntiii>
    8000524c:	00003517          	auipc	a0,0x3
    80005250:	24c50513          	addi	a0,a0,588 # 80008498 <CONSOLE_STATUS+0x488>
    80005254:	fffff097          	auipc	ra,0xfffff
    80005258:	604080e7          	jalr	1540(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000525c:	0014849b          	addiw	s1,s1,1
    80005260:	0ff4f493          	andi	s1,s1,255
    80005264:	00c00793          	li	a5,12
    80005268:	fc97f0e3          	bgeu	a5,s1,80005228 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000526c:	00003517          	auipc	a0,0x3
    80005270:	01450513          	addi	a0,a0,20 # 80008280 <CONSOLE_STATUS+0x270>
    80005274:	fffff097          	auipc	ra,0xfffff
    80005278:	5e4080e7          	jalr	1508(ra) # 80004858 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000527c:	00500313          	li	t1,5
    thread_dispatch();
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	014080e7          	jalr	20(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005288:	01000513          	li	a0,16
    8000528c:	00000097          	auipc	ra,0x0
    80005290:	f08080e7          	jalr	-248(ra) # 80005194 <_ZL9fibonaccim>
    80005294:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005298:	00003517          	auipc	a0,0x3
    8000529c:	ff850513          	addi	a0,a0,-8 # 80008290 <CONSOLE_STATUS+0x280>
    800052a0:	fffff097          	auipc	ra,0xfffff
    800052a4:	5b8080e7          	jalr	1464(ra) # 80004858 <_Z11printStringPKc>
    800052a8:	00000613          	li	a2,0
    800052ac:	00a00593          	li	a1,10
    800052b0:	0009051b          	sext.w	a0,s2
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	754080e7          	jalr	1876(ra) # 80004a08 <_Z8printIntiii>
    800052bc:	00003517          	auipc	a0,0x3
    800052c0:	1dc50513          	addi	a0,a0,476 # 80008498 <CONSOLE_STATUS+0x488>
    800052c4:	fffff097          	auipc	ra,0xfffff
    800052c8:	594080e7          	jalr	1428(ra) # 80004858 <_Z11printStringPKc>
    800052cc:	0400006f          	j	8000530c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052d0:	00003517          	auipc	a0,0x3
    800052d4:	fa850513          	addi	a0,a0,-88 # 80008278 <CONSOLE_STATUS+0x268>
    800052d8:	fffff097          	auipc	ra,0xfffff
    800052dc:	580080e7          	jalr	1408(ra) # 80004858 <_Z11printStringPKc>
    800052e0:	00000613          	li	a2,0
    800052e4:	00a00593          	li	a1,10
    800052e8:	00048513          	mv	a0,s1
    800052ec:	fffff097          	auipc	ra,0xfffff
    800052f0:	71c080e7          	jalr	1820(ra) # 80004a08 <_Z8printIntiii>
    800052f4:	00003517          	auipc	a0,0x3
    800052f8:	1a450513          	addi	a0,a0,420 # 80008498 <CONSOLE_STATUS+0x488>
    800052fc:	fffff097          	auipc	ra,0xfffff
    80005300:	55c080e7          	jalr	1372(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005304:	0014849b          	addiw	s1,s1,1
    80005308:	0ff4f493          	andi	s1,s1,255
    8000530c:	00f00793          	li	a5,15
    80005310:	fc97f0e3          	bgeu	a5,s1,800052d0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005314:	00003517          	auipc	a0,0x3
    80005318:	f8c50513          	addi	a0,a0,-116 # 800082a0 <CONSOLE_STATUS+0x290>
    8000531c:	fffff097          	auipc	ra,0xfffff
    80005320:	53c080e7          	jalr	1340(ra) # 80004858 <_Z11printStringPKc>
    finishedD = true;
    80005324:	00100793          	li	a5,1
    80005328:	00005717          	auipc	a4,0x5
    8000532c:	1af70523          	sb	a5,426(a4) # 8000a4d2 <_ZL9finishedD>
    thread_dispatch();
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	f64080e7          	jalr	-156(ra) # 80001294 <_Z15thread_dispatchv>
}
    80005338:	01813083          	ld	ra,24(sp)
    8000533c:	01013403          	ld	s0,16(sp)
    80005340:	00813483          	ld	s1,8(sp)
    80005344:	00013903          	ld	s2,0(sp)
    80005348:	02010113          	addi	sp,sp,32
    8000534c:	00008067          	ret

0000000080005350 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005350:	fe010113          	addi	sp,sp,-32
    80005354:	00113c23          	sd	ra,24(sp)
    80005358:	00813823          	sd	s0,16(sp)
    8000535c:	00913423          	sd	s1,8(sp)
    80005360:	01213023          	sd	s2,0(sp)
    80005364:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005368:	00000493          	li	s1,0
    8000536c:	0400006f          	j	800053ac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005370:	00003517          	auipc	a0,0x3
    80005374:	ed850513          	addi	a0,a0,-296 # 80008248 <CONSOLE_STATUS+0x238>
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	4e0080e7          	jalr	1248(ra) # 80004858 <_Z11printStringPKc>
    80005380:	00000613          	li	a2,0
    80005384:	00a00593          	li	a1,10
    80005388:	00048513          	mv	a0,s1
    8000538c:	fffff097          	auipc	ra,0xfffff
    80005390:	67c080e7          	jalr	1660(ra) # 80004a08 <_Z8printIntiii>
    80005394:	00003517          	auipc	a0,0x3
    80005398:	10450513          	addi	a0,a0,260 # 80008498 <CONSOLE_STATUS+0x488>
    8000539c:	fffff097          	auipc	ra,0xfffff
    800053a0:	4bc080e7          	jalr	1212(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053a4:	0014849b          	addiw	s1,s1,1
    800053a8:	0ff4f493          	andi	s1,s1,255
    800053ac:	00200793          	li	a5,2
    800053b0:	fc97f0e3          	bgeu	a5,s1,80005370 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800053b4:	00003517          	auipc	a0,0x3
    800053b8:	e9c50513          	addi	a0,a0,-356 # 80008250 <CONSOLE_STATUS+0x240>
    800053bc:	fffff097          	auipc	ra,0xfffff
    800053c0:	49c080e7          	jalr	1180(ra) # 80004858 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053c4:	00700313          	li	t1,7
    thread_dispatch();
    800053c8:	ffffc097          	auipc	ra,0xffffc
    800053cc:	ecc080e7          	jalr	-308(ra) # 80001294 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800053d0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800053d4:	00003517          	auipc	a0,0x3
    800053d8:	e8c50513          	addi	a0,a0,-372 # 80008260 <CONSOLE_STATUS+0x250>
    800053dc:	fffff097          	auipc	ra,0xfffff
    800053e0:	47c080e7          	jalr	1148(ra) # 80004858 <_Z11printStringPKc>
    800053e4:	00000613          	li	a2,0
    800053e8:	00a00593          	li	a1,10
    800053ec:	0009051b          	sext.w	a0,s2
    800053f0:	fffff097          	auipc	ra,0xfffff
    800053f4:	618080e7          	jalr	1560(ra) # 80004a08 <_Z8printIntiii>
    800053f8:	00003517          	auipc	a0,0x3
    800053fc:	0a050513          	addi	a0,a0,160 # 80008498 <CONSOLE_STATUS+0x488>
    80005400:	fffff097          	auipc	ra,0xfffff
    80005404:	458080e7          	jalr	1112(ra) # 80004858 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005408:	00c00513          	li	a0,12
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	d88080e7          	jalr	-632(ra) # 80005194 <_ZL9fibonaccim>
    80005414:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005418:	00003517          	auipc	a0,0x3
    8000541c:	e5050513          	addi	a0,a0,-432 # 80008268 <CONSOLE_STATUS+0x258>
    80005420:	fffff097          	auipc	ra,0xfffff
    80005424:	438080e7          	jalr	1080(ra) # 80004858 <_Z11printStringPKc>
    80005428:	00000613          	li	a2,0
    8000542c:	00a00593          	li	a1,10
    80005430:	0009051b          	sext.w	a0,s2
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	5d4080e7          	jalr	1492(ra) # 80004a08 <_Z8printIntiii>
    8000543c:	00003517          	auipc	a0,0x3
    80005440:	05c50513          	addi	a0,a0,92 # 80008498 <CONSOLE_STATUS+0x488>
    80005444:	fffff097          	auipc	ra,0xfffff
    80005448:	414080e7          	jalr	1044(ra) # 80004858 <_Z11printStringPKc>
    8000544c:	0400006f          	j	8000548c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005450:	00003517          	auipc	a0,0x3
    80005454:	df850513          	addi	a0,a0,-520 # 80008248 <CONSOLE_STATUS+0x238>
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	400080e7          	jalr	1024(ra) # 80004858 <_Z11printStringPKc>
    80005460:	00000613          	li	a2,0
    80005464:	00a00593          	li	a1,10
    80005468:	00048513          	mv	a0,s1
    8000546c:	fffff097          	auipc	ra,0xfffff
    80005470:	59c080e7          	jalr	1436(ra) # 80004a08 <_Z8printIntiii>
    80005474:	00003517          	auipc	a0,0x3
    80005478:	02450513          	addi	a0,a0,36 # 80008498 <CONSOLE_STATUS+0x488>
    8000547c:	fffff097          	auipc	ra,0xfffff
    80005480:	3dc080e7          	jalr	988(ra) # 80004858 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005484:	0014849b          	addiw	s1,s1,1
    80005488:	0ff4f493          	andi	s1,s1,255
    8000548c:	00500793          	li	a5,5
    80005490:	fc97f0e3          	bgeu	a5,s1,80005450 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005494:	00003517          	auipc	a0,0x3
    80005498:	d8c50513          	addi	a0,a0,-628 # 80008220 <CONSOLE_STATUS+0x210>
    8000549c:	fffff097          	auipc	ra,0xfffff
    800054a0:	3bc080e7          	jalr	956(ra) # 80004858 <_Z11printStringPKc>
    finishedC = true;
    800054a4:	00100793          	li	a5,1
    800054a8:	00005717          	auipc	a4,0x5
    800054ac:	02f705a3          	sb	a5,43(a4) # 8000a4d3 <_ZL9finishedC>
    thread_dispatch();
    800054b0:	ffffc097          	auipc	ra,0xffffc
    800054b4:	de4080e7          	jalr	-540(ra) # 80001294 <_Z15thread_dispatchv>
}
    800054b8:	01813083          	ld	ra,24(sp)
    800054bc:	01013403          	ld	s0,16(sp)
    800054c0:	00813483          	ld	s1,8(sp)
    800054c4:	00013903          	ld	s2,0(sp)
    800054c8:	02010113          	addi	sp,sp,32
    800054cc:	00008067          	ret

00000000800054d0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800054d0:	fe010113          	addi	sp,sp,-32
    800054d4:	00113c23          	sd	ra,24(sp)
    800054d8:	00813823          	sd	s0,16(sp)
    800054dc:	00913423          	sd	s1,8(sp)
    800054e0:	01213023          	sd	s2,0(sp)
    800054e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800054e8:	00000913          	li	s2,0
    800054ec:	0400006f          	j	8000552c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	da4080e7          	jalr	-604(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800054f8:	00148493          	addi	s1,s1,1
    800054fc:	000027b7          	lui	a5,0x2
    80005500:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005504:	0097ee63          	bltu	a5,s1,80005520 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005508:	00000713          	li	a4,0
    8000550c:	000077b7          	lui	a5,0x7
    80005510:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005514:	fce7eee3          	bltu	a5,a4,800054f0 <_ZL11workerBodyBPv+0x20>
    80005518:	00170713          	addi	a4,a4,1
    8000551c:	ff1ff06f          	j	8000550c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005520:	00a00793          	li	a5,10
    80005524:	04f90663          	beq	s2,a5,80005570 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005528:	00190913          	addi	s2,s2,1
    8000552c:	00f00793          	li	a5,15
    80005530:	0527e463          	bltu	a5,s2,80005578 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005534:	00003517          	auipc	a0,0x3
    80005538:	cfc50513          	addi	a0,a0,-772 # 80008230 <CONSOLE_STATUS+0x220>
    8000553c:	fffff097          	auipc	ra,0xfffff
    80005540:	31c080e7          	jalr	796(ra) # 80004858 <_Z11printStringPKc>
    80005544:	00000613          	li	a2,0
    80005548:	00a00593          	li	a1,10
    8000554c:	0009051b          	sext.w	a0,s2
    80005550:	fffff097          	auipc	ra,0xfffff
    80005554:	4b8080e7          	jalr	1208(ra) # 80004a08 <_Z8printIntiii>
    80005558:	00003517          	auipc	a0,0x3
    8000555c:	f4050513          	addi	a0,a0,-192 # 80008498 <CONSOLE_STATUS+0x488>
    80005560:	fffff097          	auipc	ra,0xfffff
    80005564:	2f8080e7          	jalr	760(ra) # 80004858 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005568:	00000493          	li	s1,0
    8000556c:	f91ff06f          	j	800054fc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005570:	14102ff3          	csrr	t6,sepc
    80005574:	fb5ff06f          	j	80005528 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005578:	00003517          	auipc	a0,0x3
    8000557c:	cc050513          	addi	a0,a0,-832 # 80008238 <CONSOLE_STATUS+0x228>
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	2d8080e7          	jalr	728(ra) # 80004858 <_Z11printStringPKc>
    finishedB = true;
    80005588:	00100793          	li	a5,1
    8000558c:	00005717          	auipc	a4,0x5
    80005590:	f4f70423          	sb	a5,-184(a4) # 8000a4d4 <_ZL9finishedB>
    thread_dispatch();
    80005594:	ffffc097          	auipc	ra,0xffffc
    80005598:	d00080e7          	jalr	-768(ra) # 80001294 <_Z15thread_dispatchv>
}
    8000559c:	01813083          	ld	ra,24(sp)
    800055a0:	01013403          	ld	s0,16(sp)
    800055a4:	00813483          	ld	s1,8(sp)
    800055a8:	00013903          	ld	s2,0(sp)
    800055ac:	02010113          	addi	sp,sp,32
    800055b0:	00008067          	ret

00000000800055b4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800055b4:	fe010113          	addi	sp,sp,-32
    800055b8:	00113c23          	sd	ra,24(sp)
    800055bc:	00813823          	sd	s0,16(sp)
    800055c0:	00913423          	sd	s1,8(sp)
    800055c4:	01213023          	sd	s2,0(sp)
    800055c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055cc:	00000913          	li	s2,0
    800055d0:	0380006f          	j	80005608 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800055d4:	ffffc097          	auipc	ra,0xffffc
    800055d8:	cc0080e7          	jalr	-832(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055dc:	00148493          	addi	s1,s1,1
    800055e0:	000027b7          	lui	a5,0x2
    800055e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055e8:	0097ee63          	bltu	a5,s1,80005604 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055ec:	00000713          	li	a4,0
    800055f0:	000077b7          	lui	a5,0x7
    800055f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055f8:	fce7eee3          	bltu	a5,a4,800055d4 <_ZL11workerBodyAPv+0x20>
    800055fc:	00170713          	addi	a4,a4,1
    80005600:	ff1ff06f          	j	800055f0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005604:	00190913          	addi	s2,s2,1
    80005608:	00900793          	li	a5,9
    8000560c:	0527e063          	bltu	a5,s2,8000564c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005610:	00003517          	auipc	a0,0x3
    80005614:	c0850513          	addi	a0,a0,-1016 # 80008218 <CONSOLE_STATUS+0x208>
    80005618:	fffff097          	auipc	ra,0xfffff
    8000561c:	240080e7          	jalr	576(ra) # 80004858 <_Z11printStringPKc>
    80005620:	00000613          	li	a2,0
    80005624:	00a00593          	li	a1,10
    80005628:	0009051b          	sext.w	a0,s2
    8000562c:	fffff097          	auipc	ra,0xfffff
    80005630:	3dc080e7          	jalr	988(ra) # 80004a08 <_Z8printIntiii>
    80005634:	00003517          	auipc	a0,0x3
    80005638:	e6450513          	addi	a0,a0,-412 # 80008498 <CONSOLE_STATUS+0x488>
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	21c080e7          	jalr	540(ra) # 80004858 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005644:	00000493          	li	s1,0
    80005648:	f99ff06f          	j	800055e0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000564c:	00003517          	auipc	a0,0x3
    80005650:	bd450513          	addi	a0,a0,-1068 # 80008220 <CONSOLE_STATUS+0x210>
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	204080e7          	jalr	516(ra) # 80004858 <_Z11printStringPKc>
    finishedA = true;
    8000565c:	00100793          	li	a5,1
    80005660:	00005717          	auipc	a4,0x5
    80005664:	e6f70aa3          	sb	a5,-395(a4) # 8000a4d5 <_ZL9finishedA>
}
    80005668:	01813083          	ld	ra,24(sp)
    8000566c:	01013403          	ld	s0,16(sp)
    80005670:	00813483          	ld	s1,8(sp)
    80005674:	00013903          	ld	s2,0(sp)
    80005678:	02010113          	addi	sp,sp,32
    8000567c:	00008067          	ret

0000000080005680 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005680:	fd010113          	addi	sp,sp,-48
    80005684:	02113423          	sd	ra,40(sp)
    80005688:	02813023          	sd	s0,32(sp)
    8000568c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005690:	00000613          	li	a2,0
    80005694:	00000597          	auipc	a1,0x0
    80005698:	f2058593          	addi	a1,a1,-224 # 800055b4 <_ZL11workerBodyAPv>
    8000569c:	fd040513          	addi	a0,s0,-48
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	b3c080e7          	jalr	-1220(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800056a8:	00003517          	auipc	a0,0x3
    800056ac:	c0850513          	addi	a0,a0,-1016 # 800082b0 <CONSOLE_STATUS+0x2a0>
    800056b0:	fffff097          	auipc	ra,0xfffff
    800056b4:	1a8080e7          	jalr	424(ra) # 80004858 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800056b8:	00000613          	li	a2,0
    800056bc:	00000597          	auipc	a1,0x0
    800056c0:	e1458593          	addi	a1,a1,-492 # 800054d0 <_ZL11workerBodyBPv>
    800056c4:	fd840513          	addi	a0,s0,-40
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	b14080e7          	jalr	-1260(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800056d0:	00003517          	auipc	a0,0x3
    800056d4:	bf850513          	addi	a0,a0,-1032 # 800082c8 <CONSOLE_STATUS+0x2b8>
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	180080e7          	jalr	384(ra) # 80004858 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800056e0:	00000613          	li	a2,0
    800056e4:	00000597          	auipc	a1,0x0
    800056e8:	c6c58593          	addi	a1,a1,-916 # 80005350 <_ZL11workerBodyCPv>
    800056ec:	fe040513          	addi	a0,s0,-32
    800056f0:	ffffc097          	auipc	ra,0xffffc
    800056f4:	aec080e7          	jalr	-1300(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800056f8:	00003517          	auipc	a0,0x3
    800056fc:	be850513          	addi	a0,a0,-1048 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80005700:	fffff097          	auipc	ra,0xfffff
    80005704:	158080e7          	jalr	344(ra) # 80004858 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005708:	00000613          	li	a2,0
    8000570c:	00000597          	auipc	a1,0x0
    80005710:	afc58593          	addi	a1,a1,-1284 # 80005208 <_ZL11workerBodyDPv>
    80005714:	fe840513          	addi	a0,s0,-24
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	ac4080e7          	jalr	-1340(ra) # 800011dc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005720:	00003517          	auipc	a0,0x3
    80005724:	bd850513          	addi	a0,a0,-1064 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	130080e7          	jalr	304(ra) # 80004858 <_Z11printStringPKc>
    80005730:	00c0006f          	j	8000573c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	b60080e7          	jalr	-1184(ra) # 80001294 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000573c:	00005797          	auipc	a5,0x5
    80005740:	d997c783          	lbu	a5,-615(a5) # 8000a4d5 <_ZL9finishedA>
    80005744:	fe0788e3          	beqz	a5,80005734 <_Z16System_Mode_testv+0xb4>
    80005748:	00005797          	auipc	a5,0x5
    8000574c:	d8c7c783          	lbu	a5,-628(a5) # 8000a4d4 <_ZL9finishedB>
    80005750:	fe0782e3          	beqz	a5,80005734 <_Z16System_Mode_testv+0xb4>
    80005754:	00005797          	auipc	a5,0x5
    80005758:	d7f7c783          	lbu	a5,-641(a5) # 8000a4d3 <_ZL9finishedC>
    8000575c:	fc078ce3          	beqz	a5,80005734 <_Z16System_Mode_testv+0xb4>
    80005760:	00005797          	auipc	a5,0x5
    80005764:	d727c783          	lbu	a5,-654(a5) # 8000a4d2 <_ZL9finishedD>
    80005768:	fc0786e3          	beqz	a5,80005734 <_Z16System_Mode_testv+0xb4>
    }

}
    8000576c:	02813083          	ld	ra,40(sp)
    80005770:	02013403          	ld	s0,32(sp)
    80005774:	03010113          	addi	sp,sp,48
    80005778:	00008067          	ret

000000008000577c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000577c:	fe010113          	addi	sp,sp,-32
    80005780:	00113c23          	sd	ra,24(sp)
    80005784:	00813823          	sd	s0,16(sp)
    80005788:	00913423          	sd	s1,8(sp)
    8000578c:	01213023          	sd	s2,0(sp)
    80005790:	02010413          	addi	s0,sp,32
    80005794:	00050493          	mv	s1,a0
    80005798:	00058913          	mv	s2,a1
    8000579c:	0015879b          	addiw	a5,a1,1
    800057a0:	0007851b          	sext.w	a0,a5
    800057a4:	00f4a023          	sw	a5,0(s1)
    800057a8:	0004a823          	sw	zero,16(s1)
    800057ac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057b0:	00251513          	slli	a0,a0,0x2
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	990080e7          	jalr	-1648(ra) # 80001144 <_Z9mem_allocm>
    800057bc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800057c0:	00000593          	li	a1,0
    800057c4:	02048513          	addi	a0,s1,32
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	af8080e7          	jalr	-1288(ra) # 800012c0 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800057d0:	00090593          	mv	a1,s2
    800057d4:	01848513          	addi	a0,s1,24
    800057d8:	ffffc097          	auipc	ra,0xffffc
    800057dc:	ae8080e7          	jalr	-1304(ra) # 800012c0 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800057e0:	00100593          	li	a1,1
    800057e4:	02848513          	addi	a0,s1,40
    800057e8:	ffffc097          	auipc	ra,0xffffc
    800057ec:	ad8080e7          	jalr	-1320(ra) # 800012c0 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800057f0:	00100593          	li	a1,1
    800057f4:	03048513          	addi	a0,s1,48
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	ac8080e7          	jalr	-1336(ra) # 800012c0 <_Z8sem_openPP4_semj>
}
    80005800:	01813083          	ld	ra,24(sp)
    80005804:	01013403          	ld	s0,16(sp)
    80005808:	00813483          	ld	s1,8(sp)
    8000580c:	00013903          	ld	s2,0(sp)
    80005810:	02010113          	addi	sp,sp,32
    80005814:	00008067          	ret

0000000080005818 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005818:	fe010113          	addi	sp,sp,-32
    8000581c:	00113c23          	sd	ra,24(sp)
    80005820:	00813823          	sd	s0,16(sp)
    80005824:	00913423          	sd	s1,8(sp)
    80005828:	01213023          	sd	s2,0(sp)
    8000582c:	02010413          	addi	s0,sp,32
    80005830:	00050493          	mv	s1,a0
    80005834:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005838:	01853503          	ld	a0,24(a0)
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	b18080e7          	jalr	-1256(ra) # 80001354 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005844:	0304b503          	ld	a0,48(s1)
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	b0c080e7          	jalr	-1268(ra) # 80001354 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005850:	0084b783          	ld	a5,8(s1)
    80005854:	0144a703          	lw	a4,20(s1)
    80005858:	00271713          	slli	a4,a4,0x2
    8000585c:	00e787b3          	add	a5,a5,a4
    80005860:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005864:	0144a783          	lw	a5,20(s1)
    80005868:	0017879b          	addiw	a5,a5,1
    8000586c:	0004a703          	lw	a4,0(s1)
    80005870:	02e7e7bb          	remw	a5,a5,a4
    80005874:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005878:	0304b503          	ld	a0,48(s1)
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	b18080e7          	jalr	-1256(ra) # 80001394 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005884:	0204b503          	ld	a0,32(s1)
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	b0c080e7          	jalr	-1268(ra) # 80001394 <_Z10sem_signalP4_sem>

}
    80005890:	01813083          	ld	ra,24(sp)
    80005894:	01013403          	ld	s0,16(sp)
    80005898:	00813483          	ld	s1,8(sp)
    8000589c:	00013903          	ld	s2,0(sp)
    800058a0:	02010113          	addi	sp,sp,32
    800058a4:	00008067          	ret

00000000800058a8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800058a8:	fe010113          	addi	sp,sp,-32
    800058ac:	00113c23          	sd	ra,24(sp)
    800058b0:	00813823          	sd	s0,16(sp)
    800058b4:	00913423          	sd	s1,8(sp)
    800058b8:	01213023          	sd	s2,0(sp)
    800058bc:	02010413          	addi	s0,sp,32
    800058c0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800058c4:	02053503          	ld	a0,32(a0)
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	a8c080e7          	jalr	-1396(ra) # 80001354 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800058d0:	0284b503          	ld	a0,40(s1)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	a80080e7          	jalr	-1408(ra) # 80001354 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800058dc:	0084b703          	ld	a4,8(s1)
    800058e0:	0104a783          	lw	a5,16(s1)
    800058e4:	00279693          	slli	a3,a5,0x2
    800058e8:	00d70733          	add	a4,a4,a3
    800058ec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800058f0:	0017879b          	addiw	a5,a5,1
    800058f4:	0004a703          	lw	a4,0(s1)
    800058f8:	02e7e7bb          	remw	a5,a5,a4
    800058fc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005900:	0284b503          	ld	a0,40(s1)
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	a90080e7          	jalr	-1392(ra) # 80001394 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000590c:	0184b503          	ld	a0,24(s1)
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	a84080e7          	jalr	-1404(ra) # 80001394 <_Z10sem_signalP4_sem>

    return ret;
}
    80005918:	00090513          	mv	a0,s2
    8000591c:	01813083          	ld	ra,24(sp)
    80005920:	01013403          	ld	s0,16(sp)
    80005924:	00813483          	ld	s1,8(sp)
    80005928:	00013903          	ld	s2,0(sp)
    8000592c:	02010113          	addi	sp,sp,32
    80005930:	00008067          	ret

0000000080005934 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005934:	fe010113          	addi	sp,sp,-32
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00913423          	sd	s1,8(sp)
    80005944:	01213023          	sd	s2,0(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005950:	02853503          	ld	a0,40(a0)
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	a00080e7          	jalr	-1536(ra) # 80001354 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000595c:	0304b503          	ld	a0,48(s1)
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	9f4080e7          	jalr	-1548(ra) # 80001354 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005968:	0144a783          	lw	a5,20(s1)
    8000596c:	0104a903          	lw	s2,16(s1)
    80005970:	0327ce63          	blt	a5,s2,800059ac <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005974:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005978:	0304b503          	ld	a0,48(s1)
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	a18080e7          	jalr	-1512(ra) # 80001394 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005984:	0284b503          	ld	a0,40(s1)
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	a0c080e7          	jalr	-1524(ra) # 80001394 <_Z10sem_signalP4_sem>

    return ret;
}
    80005990:	00090513          	mv	a0,s2
    80005994:	01813083          	ld	ra,24(sp)
    80005998:	01013403          	ld	s0,16(sp)
    8000599c:	00813483          	ld	s1,8(sp)
    800059a0:	00013903          	ld	s2,0(sp)
    800059a4:	02010113          	addi	sp,sp,32
    800059a8:	00008067          	ret
        ret = cap - head + tail;
    800059ac:	0004a703          	lw	a4,0(s1)
    800059b0:	4127093b          	subw	s2,a4,s2
    800059b4:	00f9093b          	addw	s2,s2,a5
    800059b8:	fc1ff06f          	j	80005978 <_ZN6Buffer6getCntEv+0x44>

00000000800059bc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800059bc:	fe010113          	addi	sp,sp,-32
    800059c0:	00113c23          	sd	ra,24(sp)
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00913423          	sd	s1,8(sp)
    800059cc:	02010413          	addi	s0,sp,32
    800059d0:	00050493          	mv	s1,a0
    putc('\n');
    800059d4:	00a00513          	li	a0,10
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	aa8080e7          	jalr	-1368(ra) # 80001480 <_Z4putcc>
    printString("Buffer deleted!\n");
    800059e0:	00003517          	auipc	a0,0x3
    800059e4:	93050513          	addi	a0,a0,-1744 # 80008310 <CONSOLE_STATUS+0x300>
    800059e8:	fffff097          	auipc	ra,0xfffff
    800059ec:	e70080e7          	jalr	-400(ra) # 80004858 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800059f0:	00048513          	mv	a0,s1
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	f40080e7          	jalr	-192(ra) # 80005934 <_ZN6Buffer6getCntEv>
    800059fc:	02a05c63          	blez	a0,80005a34 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005a00:	0084b783          	ld	a5,8(s1)
    80005a04:	0104a703          	lw	a4,16(s1)
    80005a08:	00271713          	slli	a4,a4,0x2
    80005a0c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005a10:	0007c503          	lbu	a0,0(a5)
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	a6c080e7          	jalr	-1428(ra) # 80001480 <_Z4putcc>
        head = (head + 1) % cap;
    80005a1c:	0104a783          	lw	a5,16(s1)
    80005a20:	0017879b          	addiw	a5,a5,1
    80005a24:	0004a703          	lw	a4,0(s1)
    80005a28:	02e7e7bb          	remw	a5,a5,a4
    80005a2c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005a30:	fc1ff06f          	j	800059f0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005a34:	02100513          	li	a0,33
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	a48080e7          	jalr	-1464(ra) # 80001480 <_Z4putcc>
    putc('\n');
    80005a40:	00a00513          	li	a0,10
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	a3c080e7          	jalr	-1476(ra) # 80001480 <_Z4putcc>
    mem_free(buffer);
    80005a4c:	0084b503          	ld	a0,8(s1)
    80005a50:	ffffb097          	auipc	ra,0xffffb
    80005a54:	74c080e7          	jalr	1868(ra) # 8000119c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005a58:	0204b503          	ld	a0,32(s1)
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	8b8080e7          	jalr	-1864(ra) # 80001314 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005a64:	0184b503          	ld	a0,24(s1)
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	8ac080e7          	jalr	-1876(ra) # 80001314 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005a70:	0304b503          	ld	a0,48(s1)
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	8a0080e7          	jalr	-1888(ra) # 80001314 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005a7c:	0284b503          	ld	a0,40(s1)
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	894080e7          	jalr	-1900(ra) # 80001314 <_Z9sem_closeP4_sem>
}
    80005a88:	01813083          	ld	ra,24(sp)
    80005a8c:	01013403          	ld	s0,16(sp)
    80005a90:	00813483          	ld	s1,8(sp)
    80005a94:	02010113          	addi	sp,sp,32
    80005a98:	00008067          	ret

0000000080005a9c <start>:
    80005a9c:	ff010113          	addi	sp,sp,-16
    80005aa0:	00813423          	sd	s0,8(sp)
    80005aa4:	01010413          	addi	s0,sp,16
    80005aa8:	300027f3          	csrr	a5,mstatus
    80005aac:	ffffe737          	lui	a4,0xffffe
    80005ab0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff30bf>
    80005ab4:	00e7f7b3          	and	a5,a5,a4
    80005ab8:	00001737          	lui	a4,0x1
    80005abc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005ac0:	00e7e7b3          	or	a5,a5,a4
    80005ac4:	30079073          	csrw	mstatus,a5
    80005ac8:	00000797          	auipc	a5,0x0
    80005acc:	16078793          	addi	a5,a5,352 # 80005c28 <system_main>
    80005ad0:	34179073          	csrw	mepc,a5
    80005ad4:	00000793          	li	a5,0
    80005ad8:	18079073          	csrw	satp,a5
    80005adc:	000107b7          	lui	a5,0x10
    80005ae0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005ae4:	30279073          	csrw	medeleg,a5
    80005ae8:	30379073          	csrw	mideleg,a5
    80005aec:	104027f3          	csrr	a5,sie
    80005af0:	2227e793          	ori	a5,a5,546
    80005af4:	10479073          	csrw	sie,a5
    80005af8:	fff00793          	li	a5,-1
    80005afc:	00a7d793          	srli	a5,a5,0xa
    80005b00:	3b079073          	csrw	pmpaddr0,a5
    80005b04:	00f00793          	li	a5,15
    80005b08:	3a079073          	csrw	pmpcfg0,a5
    80005b0c:	f14027f3          	csrr	a5,mhartid
    80005b10:	0200c737          	lui	a4,0x200c
    80005b14:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005b18:	0007869b          	sext.w	a3,a5
    80005b1c:	00269713          	slli	a4,a3,0x2
    80005b20:	000f4637          	lui	a2,0xf4
    80005b24:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005b28:	00d70733          	add	a4,a4,a3
    80005b2c:	0037979b          	slliw	a5,a5,0x3
    80005b30:	020046b7          	lui	a3,0x2004
    80005b34:	00d787b3          	add	a5,a5,a3
    80005b38:	00c585b3          	add	a1,a1,a2
    80005b3c:	00371693          	slli	a3,a4,0x3
    80005b40:	00005717          	auipc	a4,0x5
    80005b44:	9a070713          	addi	a4,a4,-1632 # 8000a4e0 <timer_scratch>
    80005b48:	00b7b023          	sd	a1,0(a5)
    80005b4c:	00d70733          	add	a4,a4,a3
    80005b50:	00f73c23          	sd	a5,24(a4)
    80005b54:	02c73023          	sd	a2,32(a4)
    80005b58:	34071073          	csrw	mscratch,a4
    80005b5c:	00000797          	auipc	a5,0x0
    80005b60:	6e478793          	addi	a5,a5,1764 # 80006240 <timervec>
    80005b64:	30579073          	csrw	mtvec,a5
    80005b68:	300027f3          	csrr	a5,mstatus
    80005b6c:	0087e793          	ori	a5,a5,8
    80005b70:	30079073          	csrw	mstatus,a5
    80005b74:	304027f3          	csrr	a5,mie
    80005b78:	0807e793          	ori	a5,a5,128
    80005b7c:	30479073          	csrw	mie,a5
    80005b80:	f14027f3          	csrr	a5,mhartid
    80005b84:	0007879b          	sext.w	a5,a5
    80005b88:	00078213          	mv	tp,a5
    80005b8c:	30200073          	mret
    80005b90:	00813403          	ld	s0,8(sp)
    80005b94:	01010113          	addi	sp,sp,16
    80005b98:	00008067          	ret

0000000080005b9c <timerinit>:
    80005b9c:	ff010113          	addi	sp,sp,-16
    80005ba0:	00813423          	sd	s0,8(sp)
    80005ba4:	01010413          	addi	s0,sp,16
    80005ba8:	f14027f3          	csrr	a5,mhartid
    80005bac:	0200c737          	lui	a4,0x200c
    80005bb0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005bb4:	0007869b          	sext.w	a3,a5
    80005bb8:	00269713          	slli	a4,a3,0x2
    80005bbc:	000f4637          	lui	a2,0xf4
    80005bc0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005bc4:	00d70733          	add	a4,a4,a3
    80005bc8:	0037979b          	slliw	a5,a5,0x3
    80005bcc:	020046b7          	lui	a3,0x2004
    80005bd0:	00d787b3          	add	a5,a5,a3
    80005bd4:	00c585b3          	add	a1,a1,a2
    80005bd8:	00371693          	slli	a3,a4,0x3
    80005bdc:	00005717          	auipc	a4,0x5
    80005be0:	90470713          	addi	a4,a4,-1788 # 8000a4e0 <timer_scratch>
    80005be4:	00b7b023          	sd	a1,0(a5)
    80005be8:	00d70733          	add	a4,a4,a3
    80005bec:	00f73c23          	sd	a5,24(a4)
    80005bf0:	02c73023          	sd	a2,32(a4)
    80005bf4:	34071073          	csrw	mscratch,a4
    80005bf8:	00000797          	auipc	a5,0x0
    80005bfc:	64878793          	addi	a5,a5,1608 # 80006240 <timervec>
    80005c00:	30579073          	csrw	mtvec,a5
    80005c04:	300027f3          	csrr	a5,mstatus
    80005c08:	0087e793          	ori	a5,a5,8
    80005c0c:	30079073          	csrw	mstatus,a5
    80005c10:	304027f3          	csrr	a5,mie
    80005c14:	0807e793          	ori	a5,a5,128
    80005c18:	30479073          	csrw	mie,a5
    80005c1c:	00813403          	ld	s0,8(sp)
    80005c20:	01010113          	addi	sp,sp,16
    80005c24:	00008067          	ret

0000000080005c28 <system_main>:
    80005c28:	fe010113          	addi	sp,sp,-32
    80005c2c:	00813823          	sd	s0,16(sp)
    80005c30:	00913423          	sd	s1,8(sp)
    80005c34:	00113c23          	sd	ra,24(sp)
    80005c38:	02010413          	addi	s0,sp,32
    80005c3c:	00000097          	auipc	ra,0x0
    80005c40:	0c4080e7          	jalr	196(ra) # 80005d00 <cpuid>
    80005c44:	00004497          	auipc	s1,0x4
    80005c48:	7ec48493          	addi	s1,s1,2028 # 8000a430 <started>
    80005c4c:	02050263          	beqz	a0,80005c70 <system_main+0x48>
    80005c50:	0004a783          	lw	a5,0(s1)
    80005c54:	0007879b          	sext.w	a5,a5
    80005c58:	fe078ce3          	beqz	a5,80005c50 <system_main+0x28>
    80005c5c:	0ff0000f          	fence
    80005c60:	00003517          	auipc	a0,0x3
    80005c64:	94050513          	addi	a0,a0,-1728 # 800085a0 <CONSOLE_STATUS+0x590>
    80005c68:	00001097          	auipc	ra,0x1
    80005c6c:	a74080e7          	jalr	-1420(ra) # 800066dc <panic>
    80005c70:	00001097          	auipc	ra,0x1
    80005c74:	9c8080e7          	jalr	-1592(ra) # 80006638 <consoleinit>
    80005c78:	00001097          	auipc	ra,0x1
    80005c7c:	154080e7          	jalr	340(ra) # 80006dcc <printfinit>
    80005c80:	00003517          	auipc	a0,0x3
    80005c84:	81850513          	addi	a0,a0,-2024 # 80008498 <CONSOLE_STATUS+0x488>
    80005c88:	00001097          	auipc	ra,0x1
    80005c8c:	ab0080e7          	jalr	-1360(ra) # 80006738 <__printf>
    80005c90:	00003517          	auipc	a0,0x3
    80005c94:	8e050513          	addi	a0,a0,-1824 # 80008570 <CONSOLE_STATUS+0x560>
    80005c98:	00001097          	auipc	ra,0x1
    80005c9c:	aa0080e7          	jalr	-1376(ra) # 80006738 <__printf>
    80005ca0:	00002517          	auipc	a0,0x2
    80005ca4:	7f850513          	addi	a0,a0,2040 # 80008498 <CONSOLE_STATUS+0x488>
    80005ca8:	00001097          	auipc	ra,0x1
    80005cac:	a90080e7          	jalr	-1392(ra) # 80006738 <__printf>
    80005cb0:	00001097          	auipc	ra,0x1
    80005cb4:	4a8080e7          	jalr	1192(ra) # 80007158 <kinit>
    80005cb8:	00000097          	auipc	ra,0x0
    80005cbc:	148080e7          	jalr	328(ra) # 80005e00 <trapinit>
    80005cc0:	00000097          	auipc	ra,0x0
    80005cc4:	16c080e7          	jalr	364(ra) # 80005e2c <trapinithart>
    80005cc8:	00000097          	auipc	ra,0x0
    80005ccc:	5b8080e7          	jalr	1464(ra) # 80006280 <plicinit>
    80005cd0:	00000097          	auipc	ra,0x0
    80005cd4:	5d8080e7          	jalr	1496(ra) # 800062a8 <plicinithart>
    80005cd8:	00000097          	auipc	ra,0x0
    80005cdc:	078080e7          	jalr	120(ra) # 80005d50 <userinit>
    80005ce0:	0ff0000f          	fence
    80005ce4:	00100793          	li	a5,1
    80005ce8:	00003517          	auipc	a0,0x3
    80005cec:	8a050513          	addi	a0,a0,-1888 # 80008588 <CONSOLE_STATUS+0x578>
    80005cf0:	00f4a023          	sw	a5,0(s1)
    80005cf4:	00001097          	auipc	ra,0x1
    80005cf8:	a44080e7          	jalr	-1468(ra) # 80006738 <__printf>
    80005cfc:	0000006f          	j	80005cfc <system_main+0xd4>

0000000080005d00 <cpuid>:
    80005d00:	ff010113          	addi	sp,sp,-16
    80005d04:	00813423          	sd	s0,8(sp)
    80005d08:	01010413          	addi	s0,sp,16
    80005d0c:	00020513          	mv	a0,tp
    80005d10:	00813403          	ld	s0,8(sp)
    80005d14:	0005051b          	sext.w	a0,a0
    80005d18:	01010113          	addi	sp,sp,16
    80005d1c:	00008067          	ret

0000000080005d20 <mycpu>:
    80005d20:	ff010113          	addi	sp,sp,-16
    80005d24:	00813423          	sd	s0,8(sp)
    80005d28:	01010413          	addi	s0,sp,16
    80005d2c:	00020793          	mv	a5,tp
    80005d30:	00813403          	ld	s0,8(sp)
    80005d34:	0007879b          	sext.w	a5,a5
    80005d38:	00779793          	slli	a5,a5,0x7
    80005d3c:	00005517          	auipc	a0,0x5
    80005d40:	7d450513          	addi	a0,a0,2004 # 8000b510 <cpus>
    80005d44:	00f50533          	add	a0,a0,a5
    80005d48:	01010113          	addi	sp,sp,16
    80005d4c:	00008067          	ret

0000000080005d50 <userinit>:
    80005d50:	ff010113          	addi	sp,sp,-16
    80005d54:	00813423          	sd	s0,8(sp)
    80005d58:	01010413          	addi	s0,sp,16
    80005d5c:	00813403          	ld	s0,8(sp)
    80005d60:	01010113          	addi	sp,sp,16
    80005d64:	ffffc317          	auipc	t1,0xffffc
    80005d68:	a0430067          	jr	-1532(t1) # 80001768 <main>

0000000080005d6c <either_copyout>:
    80005d6c:	ff010113          	addi	sp,sp,-16
    80005d70:	00813023          	sd	s0,0(sp)
    80005d74:	00113423          	sd	ra,8(sp)
    80005d78:	01010413          	addi	s0,sp,16
    80005d7c:	02051663          	bnez	a0,80005da8 <either_copyout+0x3c>
    80005d80:	00058513          	mv	a0,a1
    80005d84:	00060593          	mv	a1,a2
    80005d88:	0006861b          	sext.w	a2,a3
    80005d8c:	00002097          	auipc	ra,0x2
    80005d90:	c58080e7          	jalr	-936(ra) # 800079e4 <__memmove>
    80005d94:	00813083          	ld	ra,8(sp)
    80005d98:	00013403          	ld	s0,0(sp)
    80005d9c:	00000513          	li	a0,0
    80005da0:	01010113          	addi	sp,sp,16
    80005da4:	00008067          	ret
    80005da8:	00003517          	auipc	a0,0x3
    80005dac:	82050513          	addi	a0,a0,-2016 # 800085c8 <CONSOLE_STATUS+0x5b8>
    80005db0:	00001097          	auipc	ra,0x1
    80005db4:	92c080e7          	jalr	-1748(ra) # 800066dc <panic>

0000000080005db8 <either_copyin>:
    80005db8:	ff010113          	addi	sp,sp,-16
    80005dbc:	00813023          	sd	s0,0(sp)
    80005dc0:	00113423          	sd	ra,8(sp)
    80005dc4:	01010413          	addi	s0,sp,16
    80005dc8:	02059463          	bnez	a1,80005df0 <either_copyin+0x38>
    80005dcc:	00060593          	mv	a1,a2
    80005dd0:	0006861b          	sext.w	a2,a3
    80005dd4:	00002097          	auipc	ra,0x2
    80005dd8:	c10080e7          	jalr	-1008(ra) # 800079e4 <__memmove>
    80005ddc:	00813083          	ld	ra,8(sp)
    80005de0:	00013403          	ld	s0,0(sp)
    80005de4:	00000513          	li	a0,0
    80005de8:	01010113          	addi	sp,sp,16
    80005dec:	00008067          	ret
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	80050513          	addi	a0,a0,-2048 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80005df8:	00001097          	auipc	ra,0x1
    80005dfc:	8e4080e7          	jalr	-1820(ra) # 800066dc <panic>

0000000080005e00 <trapinit>:
    80005e00:	ff010113          	addi	sp,sp,-16
    80005e04:	00813423          	sd	s0,8(sp)
    80005e08:	01010413          	addi	s0,sp,16
    80005e0c:	00813403          	ld	s0,8(sp)
    80005e10:	00003597          	auipc	a1,0x3
    80005e14:	80858593          	addi	a1,a1,-2040 # 80008618 <CONSOLE_STATUS+0x608>
    80005e18:	00005517          	auipc	a0,0x5
    80005e1c:	77850513          	addi	a0,a0,1912 # 8000b590 <tickslock>
    80005e20:	01010113          	addi	sp,sp,16
    80005e24:	00001317          	auipc	t1,0x1
    80005e28:	5c430067          	jr	1476(t1) # 800073e8 <initlock>

0000000080005e2c <trapinithart>:
    80005e2c:	ff010113          	addi	sp,sp,-16
    80005e30:	00813423          	sd	s0,8(sp)
    80005e34:	01010413          	addi	s0,sp,16
    80005e38:	00000797          	auipc	a5,0x0
    80005e3c:	2f878793          	addi	a5,a5,760 # 80006130 <kernelvec>
    80005e40:	10579073          	csrw	stvec,a5
    80005e44:	00813403          	ld	s0,8(sp)
    80005e48:	01010113          	addi	sp,sp,16
    80005e4c:	00008067          	ret

0000000080005e50 <usertrap>:
    80005e50:	ff010113          	addi	sp,sp,-16
    80005e54:	00813423          	sd	s0,8(sp)
    80005e58:	01010413          	addi	s0,sp,16
    80005e5c:	00813403          	ld	s0,8(sp)
    80005e60:	01010113          	addi	sp,sp,16
    80005e64:	00008067          	ret

0000000080005e68 <usertrapret>:
    80005e68:	ff010113          	addi	sp,sp,-16
    80005e6c:	00813423          	sd	s0,8(sp)
    80005e70:	01010413          	addi	s0,sp,16
    80005e74:	00813403          	ld	s0,8(sp)
    80005e78:	01010113          	addi	sp,sp,16
    80005e7c:	00008067          	ret

0000000080005e80 <kerneltrap>:
    80005e80:	fe010113          	addi	sp,sp,-32
    80005e84:	00813823          	sd	s0,16(sp)
    80005e88:	00113c23          	sd	ra,24(sp)
    80005e8c:	00913423          	sd	s1,8(sp)
    80005e90:	02010413          	addi	s0,sp,32
    80005e94:	142025f3          	csrr	a1,scause
    80005e98:	100027f3          	csrr	a5,sstatus
    80005e9c:	0027f793          	andi	a5,a5,2
    80005ea0:	10079c63          	bnez	a5,80005fb8 <kerneltrap+0x138>
    80005ea4:	142027f3          	csrr	a5,scause
    80005ea8:	0207ce63          	bltz	a5,80005ee4 <kerneltrap+0x64>
    80005eac:	00002517          	auipc	a0,0x2
    80005eb0:	7b450513          	addi	a0,a0,1972 # 80008660 <CONSOLE_STATUS+0x650>
    80005eb4:	00001097          	auipc	ra,0x1
    80005eb8:	884080e7          	jalr	-1916(ra) # 80006738 <__printf>
    80005ebc:	141025f3          	csrr	a1,sepc
    80005ec0:	14302673          	csrr	a2,stval
    80005ec4:	00002517          	auipc	a0,0x2
    80005ec8:	7ac50513          	addi	a0,a0,1964 # 80008670 <CONSOLE_STATUS+0x660>
    80005ecc:	00001097          	auipc	ra,0x1
    80005ed0:	86c080e7          	jalr	-1940(ra) # 80006738 <__printf>
    80005ed4:	00002517          	auipc	a0,0x2
    80005ed8:	7b450513          	addi	a0,a0,1972 # 80008688 <CONSOLE_STATUS+0x678>
    80005edc:	00001097          	auipc	ra,0x1
    80005ee0:	800080e7          	jalr	-2048(ra) # 800066dc <panic>
    80005ee4:	0ff7f713          	andi	a4,a5,255
    80005ee8:	00900693          	li	a3,9
    80005eec:	04d70063          	beq	a4,a3,80005f2c <kerneltrap+0xac>
    80005ef0:	fff00713          	li	a4,-1
    80005ef4:	03f71713          	slli	a4,a4,0x3f
    80005ef8:	00170713          	addi	a4,a4,1
    80005efc:	fae798e3          	bne	a5,a4,80005eac <kerneltrap+0x2c>
    80005f00:	00000097          	auipc	ra,0x0
    80005f04:	e00080e7          	jalr	-512(ra) # 80005d00 <cpuid>
    80005f08:	06050663          	beqz	a0,80005f74 <kerneltrap+0xf4>
    80005f0c:	144027f3          	csrr	a5,sip
    80005f10:	ffd7f793          	andi	a5,a5,-3
    80005f14:	14479073          	csrw	sip,a5
    80005f18:	01813083          	ld	ra,24(sp)
    80005f1c:	01013403          	ld	s0,16(sp)
    80005f20:	00813483          	ld	s1,8(sp)
    80005f24:	02010113          	addi	sp,sp,32
    80005f28:	00008067          	ret
    80005f2c:	00000097          	auipc	ra,0x0
    80005f30:	3c8080e7          	jalr	968(ra) # 800062f4 <plic_claim>
    80005f34:	00a00793          	li	a5,10
    80005f38:	00050493          	mv	s1,a0
    80005f3c:	06f50863          	beq	a0,a5,80005fac <kerneltrap+0x12c>
    80005f40:	fc050ce3          	beqz	a0,80005f18 <kerneltrap+0x98>
    80005f44:	00050593          	mv	a1,a0
    80005f48:	00002517          	auipc	a0,0x2
    80005f4c:	6f850513          	addi	a0,a0,1784 # 80008640 <CONSOLE_STATUS+0x630>
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	7e8080e7          	jalr	2024(ra) # 80006738 <__printf>
    80005f58:	01013403          	ld	s0,16(sp)
    80005f5c:	01813083          	ld	ra,24(sp)
    80005f60:	00048513          	mv	a0,s1
    80005f64:	00813483          	ld	s1,8(sp)
    80005f68:	02010113          	addi	sp,sp,32
    80005f6c:	00000317          	auipc	t1,0x0
    80005f70:	3c030067          	jr	960(t1) # 8000632c <plic_complete>
    80005f74:	00005517          	auipc	a0,0x5
    80005f78:	61c50513          	addi	a0,a0,1564 # 8000b590 <tickslock>
    80005f7c:	00001097          	auipc	ra,0x1
    80005f80:	490080e7          	jalr	1168(ra) # 8000740c <acquire>
    80005f84:	00004717          	auipc	a4,0x4
    80005f88:	4b070713          	addi	a4,a4,1200 # 8000a434 <ticks>
    80005f8c:	00072783          	lw	a5,0(a4)
    80005f90:	00005517          	auipc	a0,0x5
    80005f94:	60050513          	addi	a0,a0,1536 # 8000b590 <tickslock>
    80005f98:	0017879b          	addiw	a5,a5,1
    80005f9c:	00f72023          	sw	a5,0(a4)
    80005fa0:	00001097          	auipc	ra,0x1
    80005fa4:	538080e7          	jalr	1336(ra) # 800074d8 <release>
    80005fa8:	f65ff06f          	j	80005f0c <kerneltrap+0x8c>
    80005fac:	00001097          	auipc	ra,0x1
    80005fb0:	094080e7          	jalr	148(ra) # 80007040 <uartintr>
    80005fb4:	fa5ff06f          	j	80005f58 <kerneltrap+0xd8>
    80005fb8:	00002517          	auipc	a0,0x2
    80005fbc:	66850513          	addi	a0,a0,1640 # 80008620 <CONSOLE_STATUS+0x610>
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	71c080e7          	jalr	1820(ra) # 800066dc <panic>

0000000080005fc8 <clockintr>:
    80005fc8:	fe010113          	addi	sp,sp,-32
    80005fcc:	00813823          	sd	s0,16(sp)
    80005fd0:	00913423          	sd	s1,8(sp)
    80005fd4:	00113c23          	sd	ra,24(sp)
    80005fd8:	02010413          	addi	s0,sp,32
    80005fdc:	00005497          	auipc	s1,0x5
    80005fe0:	5b448493          	addi	s1,s1,1460 # 8000b590 <tickslock>
    80005fe4:	00048513          	mv	a0,s1
    80005fe8:	00001097          	auipc	ra,0x1
    80005fec:	424080e7          	jalr	1060(ra) # 8000740c <acquire>
    80005ff0:	00004717          	auipc	a4,0x4
    80005ff4:	44470713          	addi	a4,a4,1092 # 8000a434 <ticks>
    80005ff8:	00072783          	lw	a5,0(a4)
    80005ffc:	01013403          	ld	s0,16(sp)
    80006000:	01813083          	ld	ra,24(sp)
    80006004:	00048513          	mv	a0,s1
    80006008:	0017879b          	addiw	a5,a5,1
    8000600c:	00813483          	ld	s1,8(sp)
    80006010:	00f72023          	sw	a5,0(a4)
    80006014:	02010113          	addi	sp,sp,32
    80006018:	00001317          	auipc	t1,0x1
    8000601c:	4c030067          	jr	1216(t1) # 800074d8 <release>

0000000080006020 <devintr>:
    80006020:	142027f3          	csrr	a5,scause
    80006024:	00000513          	li	a0,0
    80006028:	0007c463          	bltz	a5,80006030 <devintr+0x10>
    8000602c:	00008067          	ret
    80006030:	fe010113          	addi	sp,sp,-32
    80006034:	00813823          	sd	s0,16(sp)
    80006038:	00113c23          	sd	ra,24(sp)
    8000603c:	00913423          	sd	s1,8(sp)
    80006040:	02010413          	addi	s0,sp,32
    80006044:	0ff7f713          	andi	a4,a5,255
    80006048:	00900693          	li	a3,9
    8000604c:	04d70c63          	beq	a4,a3,800060a4 <devintr+0x84>
    80006050:	fff00713          	li	a4,-1
    80006054:	03f71713          	slli	a4,a4,0x3f
    80006058:	00170713          	addi	a4,a4,1
    8000605c:	00e78c63          	beq	a5,a4,80006074 <devintr+0x54>
    80006060:	01813083          	ld	ra,24(sp)
    80006064:	01013403          	ld	s0,16(sp)
    80006068:	00813483          	ld	s1,8(sp)
    8000606c:	02010113          	addi	sp,sp,32
    80006070:	00008067          	ret
    80006074:	00000097          	auipc	ra,0x0
    80006078:	c8c080e7          	jalr	-884(ra) # 80005d00 <cpuid>
    8000607c:	06050663          	beqz	a0,800060e8 <devintr+0xc8>
    80006080:	144027f3          	csrr	a5,sip
    80006084:	ffd7f793          	andi	a5,a5,-3
    80006088:	14479073          	csrw	sip,a5
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	01013403          	ld	s0,16(sp)
    80006094:	00813483          	ld	s1,8(sp)
    80006098:	00200513          	li	a0,2
    8000609c:	02010113          	addi	sp,sp,32
    800060a0:	00008067          	ret
    800060a4:	00000097          	auipc	ra,0x0
    800060a8:	250080e7          	jalr	592(ra) # 800062f4 <plic_claim>
    800060ac:	00a00793          	li	a5,10
    800060b0:	00050493          	mv	s1,a0
    800060b4:	06f50663          	beq	a0,a5,80006120 <devintr+0x100>
    800060b8:	00100513          	li	a0,1
    800060bc:	fa0482e3          	beqz	s1,80006060 <devintr+0x40>
    800060c0:	00048593          	mv	a1,s1
    800060c4:	00002517          	auipc	a0,0x2
    800060c8:	57c50513          	addi	a0,a0,1404 # 80008640 <CONSOLE_STATUS+0x630>
    800060cc:	00000097          	auipc	ra,0x0
    800060d0:	66c080e7          	jalr	1644(ra) # 80006738 <__printf>
    800060d4:	00048513          	mv	a0,s1
    800060d8:	00000097          	auipc	ra,0x0
    800060dc:	254080e7          	jalr	596(ra) # 8000632c <plic_complete>
    800060e0:	00100513          	li	a0,1
    800060e4:	f7dff06f          	j	80006060 <devintr+0x40>
    800060e8:	00005517          	auipc	a0,0x5
    800060ec:	4a850513          	addi	a0,a0,1192 # 8000b590 <tickslock>
    800060f0:	00001097          	auipc	ra,0x1
    800060f4:	31c080e7          	jalr	796(ra) # 8000740c <acquire>
    800060f8:	00004717          	auipc	a4,0x4
    800060fc:	33c70713          	addi	a4,a4,828 # 8000a434 <ticks>
    80006100:	00072783          	lw	a5,0(a4)
    80006104:	00005517          	auipc	a0,0x5
    80006108:	48c50513          	addi	a0,a0,1164 # 8000b590 <tickslock>
    8000610c:	0017879b          	addiw	a5,a5,1
    80006110:	00f72023          	sw	a5,0(a4)
    80006114:	00001097          	auipc	ra,0x1
    80006118:	3c4080e7          	jalr	964(ra) # 800074d8 <release>
    8000611c:	f65ff06f          	j	80006080 <devintr+0x60>
    80006120:	00001097          	auipc	ra,0x1
    80006124:	f20080e7          	jalr	-224(ra) # 80007040 <uartintr>
    80006128:	fadff06f          	j	800060d4 <devintr+0xb4>
    8000612c:	0000                	unimp
	...

0000000080006130 <kernelvec>:
    80006130:	f0010113          	addi	sp,sp,-256
    80006134:	00113023          	sd	ra,0(sp)
    80006138:	00213423          	sd	sp,8(sp)
    8000613c:	00313823          	sd	gp,16(sp)
    80006140:	00413c23          	sd	tp,24(sp)
    80006144:	02513023          	sd	t0,32(sp)
    80006148:	02613423          	sd	t1,40(sp)
    8000614c:	02713823          	sd	t2,48(sp)
    80006150:	02813c23          	sd	s0,56(sp)
    80006154:	04913023          	sd	s1,64(sp)
    80006158:	04a13423          	sd	a0,72(sp)
    8000615c:	04b13823          	sd	a1,80(sp)
    80006160:	04c13c23          	sd	a2,88(sp)
    80006164:	06d13023          	sd	a3,96(sp)
    80006168:	06e13423          	sd	a4,104(sp)
    8000616c:	06f13823          	sd	a5,112(sp)
    80006170:	07013c23          	sd	a6,120(sp)
    80006174:	09113023          	sd	a7,128(sp)
    80006178:	09213423          	sd	s2,136(sp)
    8000617c:	09313823          	sd	s3,144(sp)
    80006180:	09413c23          	sd	s4,152(sp)
    80006184:	0b513023          	sd	s5,160(sp)
    80006188:	0b613423          	sd	s6,168(sp)
    8000618c:	0b713823          	sd	s7,176(sp)
    80006190:	0b813c23          	sd	s8,184(sp)
    80006194:	0d913023          	sd	s9,192(sp)
    80006198:	0da13423          	sd	s10,200(sp)
    8000619c:	0db13823          	sd	s11,208(sp)
    800061a0:	0dc13c23          	sd	t3,216(sp)
    800061a4:	0fd13023          	sd	t4,224(sp)
    800061a8:	0fe13423          	sd	t5,232(sp)
    800061ac:	0ff13823          	sd	t6,240(sp)
    800061b0:	cd1ff0ef          	jal	ra,80005e80 <kerneltrap>
    800061b4:	00013083          	ld	ra,0(sp)
    800061b8:	00813103          	ld	sp,8(sp)
    800061bc:	01013183          	ld	gp,16(sp)
    800061c0:	02013283          	ld	t0,32(sp)
    800061c4:	02813303          	ld	t1,40(sp)
    800061c8:	03013383          	ld	t2,48(sp)
    800061cc:	03813403          	ld	s0,56(sp)
    800061d0:	04013483          	ld	s1,64(sp)
    800061d4:	04813503          	ld	a0,72(sp)
    800061d8:	05013583          	ld	a1,80(sp)
    800061dc:	05813603          	ld	a2,88(sp)
    800061e0:	06013683          	ld	a3,96(sp)
    800061e4:	06813703          	ld	a4,104(sp)
    800061e8:	07013783          	ld	a5,112(sp)
    800061ec:	07813803          	ld	a6,120(sp)
    800061f0:	08013883          	ld	a7,128(sp)
    800061f4:	08813903          	ld	s2,136(sp)
    800061f8:	09013983          	ld	s3,144(sp)
    800061fc:	09813a03          	ld	s4,152(sp)
    80006200:	0a013a83          	ld	s5,160(sp)
    80006204:	0a813b03          	ld	s6,168(sp)
    80006208:	0b013b83          	ld	s7,176(sp)
    8000620c:	0b813c03          	ld	s8,184(sp)
    80006210:	0c013c83          	ld	s9,192(sp)
    80006214:	0c813d03          	ld	s10,200(sp)
    80006218:	0d013d83          	ld	s11,208(sp)
    8000621c:	0d813e03          	ld	t3,216(sp)
    80006220:	0e013e83          	ld	t4,224(sp)
    80006224:	0e813f03          	ld	t5,232(sp)
    80006228:	0f013f83          	ld	t6,240(sp)
    8000622c:	10010113          	addi	sp,sp,256
    80006230:	10200073          	sret
    80006234:	00000013          	nop
    80006238:	00000013          	nop
    8000623c:	00000013          	nop

0000000080006240 <timervec>:
    80006240:	34051573          	csrrw	a0,mscratch,a0
    80006244:	00b53023          	sd	a1,0(a0)
    80006248:	00c53423          	sd	a2,8(a0)
    8000624c:	00d53823          	sd	a3,16(a0)
    80006250:	01853583          	ld	a1,24(a0)
    80006254:	02053603          	ld	a2,32(a0)
    80006258:	0005b683          	ld	a3,0(a1)
    8000625c:	00c686b3          	add	a3,a3,a2
    80006260:	00d5b023          	sd	a3,0(a1)
    80006264:	00200593          	li	a1,2
    80006268:	14459073          	csrw	sip,a1
    8000626c:	01053683          	ld	a3,16(a0)
    80006270:	00853603          	ld	a2,8(a0)
    80006274:	00053583          	ld	a1,0(a0)
    80006278:	34051573          	csrrw	a0,mscratch,a0
    8000627c:	30200073          	mret

0000000080006280 <plicinit>:
    80006280:	ff010113          	addi	sp,sp,-16
    80006284:	00813423          	sd	s0,8(sp)
    80006288:	01010413          	addi	s0,sp,16
    8000628c:	00813403          	ld	s0,8(sp)
    80006290:	0c0007b7          	lui	a5,0xc000
    80006294:	00100713          	li	a4,1
    80006298:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000629c:	00e7a223          	sw	a4,4(a5)
    800062a0:	01010113          	addi	sp,sp,16
    800062a4:	00008067          	ret

00000000800062a8 <plicinithart>:
    800062a8:	ff010113          	addi	sp,sp,-16
    800062ac:	00813023          	sd	s0,0(sp)
    800062b0:	00113423          	sd	ra,8(sp)
    800062b4:	01010413          	addi	s0,sp,16
    800062b8:	00000097          	auipc	ra,0x0
    800062bc:	a48080e7          	jalr	-1464(ra) # 80005d00 <cpuid>
    800062c0:	0085171b          	slliw	a4,a0,0x8
    800062c4:	0c0027b7          	lui	a5,0xc002
    800062c8:	00e787b3          	add	a5,a5,a4
    800062cc:	40200713          	li	a4,1026
    800062d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800062d4:	00813083          	ld	ra,8(sp)
    800062d8:	00013403          	ld	s0,0(sp)
    800062dc:	00d5151b          	slliw	a0,a0,0xd
    800062e0:	0c2017b7          	lui	a5,0xc201
    800062e4:	00a78533          	add	a0,a5,a0
    800062e8:	00052023          	sw	zero,0(a0)
    800062ec:	01010113          	addi	sp,sp,16
    800062f0:	00008067          	ret

00000000800062f4 <plic_claim>:
    800062f4:	ff010113          	addi	sp,sp,-16
    800062f8:	00813023          	sd	s0,0(sp)
    800062fc:	00113423          	sd	ra,8(sp)
    80006300:	01010413          	addi	s0,sp,16
    80006304:	00000097          	auipc	ra,0x0
    80006308:	9fc080e7          	jalr	-1540(ra) # 80005d00 <cpuid>
    8000630c:	00813083          	ld	ra,8(sp)
    80006310:	00013403          	ld	s0,0(sp)
    80006314:	00d5151b          	slliw	a0,a0,0xd
    80006318:	0c2017b7          	lui	a5,0xc201
    8000631c:	00a78533          	add	a0,a5,a0
    80006320:	00452503          	lw	a0,4(a0)
    80006324:	01010113          	addi	sp,sp,16
    80006328:	00008067          	ret

000000008000632c <plic_complete>:
    8000632c:	fe010113          	addi	sp,sp,-32
    80006330:	00813823          	sd	s0,16(sp)
    80006334:	00913423          	sd	s1,8(sp)
    80006338:	00113c23          	sd	ra,24(sp)
    8000633c:	02010413          	addi	s0,sp,32
    80006340:	00050493          	mv	s1,a0
    80006344:	00000097          	auipc	ra,0x0
    80006348:	9bc080e7          	jalr	-1604(ra) # 80005d00 <cpuid>
    8000634c:	01813083          	ld	ra,24(sp)
    80006350:	01013403          	ld	s0,16(sp)
    80006354:	00d5179b          	slliw	a5,a0,0xd
    80006358:	0c201737          	lui	a4,0xc201
    8000635c:	00f707b3          	add	a5,a4,a5
    80006360:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006364:	00813483          	ld	s1,8(sp)
    80006368:	02010113          	addi	sp,sp,32
    8000636c:	00008067          	ret

0000000080006370 <consolewrite>:
    80006370:	fb010113          	addi	sp,sp,-80
    80006374:	04813023          	sd	s0,64(sp)
    80006378:	04113423          	sd	ra,72(sp)
    8000637c:	02913c23          	sd	s1,56(sp)
    80006380:	03213823          	sd	s2,48(sp)
    80006384:	03313423          	sd	s3,40(sp)
    80006388:	03413023          	sd	s4,32(sp)
    8000638c:	01513c23          	sd	s5,24(sp)
    80006390:	05010413          	addi	s0,sp,80
    80006394:	06c05c63          	blez	a2,8000640c <consolewrite+0x9c>
    80006398:	00060993          	mv	s3,a2
    8000639c:	00050a13          	mv	s4,a0
    800063a0:	00058493          	mv	s1,a1
    800063a4:	00000913          	li	s2,0
    800063a8:	fff00a93          	li	s5,-1
    800063ac:	01c0006f          	j	800063c8 <consolewrite+0x58>
    800063b0:	fbf44503          	lbu	a0,-65(s0)
    800063b4:	0019091b          	addiw	s2,s2,1
    800063b8:	00148493          	addi	s1,s1,1
    800063bc:	00001097          	auipc	ra,0x1
    800063c0:	a9c080e7          	jalr	-1380(ra) # 80006e58 <uartputc>
    800063c4:	03298063          	beq	s3,s2,800063e4 <consolewrite+0x74>
    800063c8:	00048613          	mv	a2,s1
    800063cc:	00100693          	li	a3,1
    800063d0:	000a0593          	mv	a1,s4
    800063d4:	fbf40513          	addi	a0,s0,-65
    800063d8:	00000097          	auipc	ra,0x0
    800063dc:	9e0080e7          	jalr	-1568(ra) # 80005db8 <either_copyin>
    800063e0:	fd5518e3          	bne	a0,s5,800063b0 <consolewrite+0x40>
    800063e4:	04813083          	ld	ra,72(sp)
    800063e8:	04013403          	ld	s0,64(sp)
    800063ec:	03813483          	ld	s1,56(sp)
    800063f0:	02813983          	ld	s3,40(sp)
    800063f4:	02013a03          	ld	s4,32(sp)
    800063f8:	01813a83          	ld	s5,24(sp)
    800063fc:	00090513          	mv	a0,s2
    80006400:	03013903          	ld	s2,48(sp)
    80006404:	05010113          	addi	sp,sp,80
    80006408:	00008067          	ret
    8000640c:	00000913          	li	s2,0
    80006410:	fd5ff06f          	j	800063e4 <consolewrite+0x74>

0000000080006414 <consoleread>:
    80006414:	f9010113          	addi	sp,sp,-112
    80006418:	06813023          	sd	s0,96(sp)
    8000641c:	04913c23          	sd	s1,88(sp)
    80006420:	05213823          	sd	s2,80(sp)
    80006424:	05313423          	sd	s3,72(sp)
    80006428:	05413023          	sd	s4,64(sp)
    8000642c:	03513c23          	sd	s5,56(sp)
    80006430:	03613823          	sd	s6,48(sp)
    80006434:	03713423          	sd	s7,40(sp)
    80006438:	03813023          	sd	s8,32(sp)
    8000643c:	06113423          	sd	ra,104(sp)
    80006440:	01913c23          	sd	s9,24(sp)
    80006444:	07010413          	addi	s0,sp,112
    80006448:	00060b93          	mv	s7,a2
    8000644c:	00050913          	mv	s2,a0
    80006450:	00058c13          	mv	s8,a1
    80006454:	00060b1b          	sext.w	s6,a2
    80006458:	00005497          	auipc	s1,0x5
    8000645c:	16048493          	addi	s1,s1,352 # 8000b5b8 <cons>
    80006460:	00400993          	li	s3,4
    80006464:	fff00a13          	li	s4,-1
    80006468:	00a00a93          	li	s5,10
    8000646c:	05705e63          	blez	s7,800064c8 <consoleread+0xb4>
    80006470:	09c4a703          	lw	a4,156(s1)
    80006474:	0984a783          	lw	a5,152(s1)
    80006478:	0007071b          	sext.w	a4,a4
    8000647c:	08e78463          	beq	a5,a4,80006504 <consoleread+0xf0>
    80006480:	07f7f713          	andi	a4,a5,127
    80006484:	00e48733          	add	a4,s1,a4
    80006488:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000648c:	0017869b          	addiw	a3,a5,1
    80006490:	08d4ac23          	sw	a3,152(s1)
    80006494:	00070c9b          	sext.w	s9,a4
    80006498:	0b370663          	beq	a4,s3,80006544 <consoleread+0x130>
    8000649c:	00100693          	li	a3,1
    800064a0:	f9f40613          	addi	a2,s0,-97
    800064a4:	000c0593          	mv	a1,s8
    800064a8:	00090513          	mv	a0,s2
    800064ac:	f8e40fa3          	sb	a4,-97(s0)
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	8bc080e7          	jalr	-1860(ra) # 80005d6c <either_copyout>
    800064b8:	01450863          	beq	a0,s4,800064c8 <consoleread+0xb4>
    800064bc:	001c0c13          	addi	s8,s8,1
    800064c0:	fffb8b9b          	addiw	s7,s7,-1
    800064c4:	fb5c94e3          	bne	s9,s5,8000646c <consoleread+0x58>
    800064c8:	000b851b          	sext.w	a0,s7
    800064cc:	06813083          	ld	ra,104(sp)
    800064d0:	06013403          	ld	s0,96(sp)
    800064d4:	05813483          	ld	s1,88(sp)
    800064d8:	05013903          	ld	s2,80(sp)
    800064dc:	04813983          	ld	s3,72(sp)
    800064e0:	04013a03          	ld	s4,64(sp)
    800064e4:	03813a83          	ld	s5,56(sp)
    800064e8:	02813b83          	ld	s7,40(sp)
    800064ec:	02013c03          	ld	s8,32(sp)
    800064f0:	01813c83          	ld	s9,24(sp)
    800064f4:	40ab053b          	subw	a0,s6,a0
    800064f8:	03013b03          	ld	s6,48(sp)
    800064fc:	07010113          	addi	sp,sp,112
    80006500:	00008067          	ret
    80006504:	00001097          	auipc	ra,0x1
    80006508:	1d8080e7          	jalr	472(ra) # 800076dc <push_on>
    8000650c:	0984a703          	lw	a4,152(s1)
    80006510:	09c4a783          	lw	a5,156(s1)
    80006514:	0007879b          	sext.w	a5,a5
    80006518:	fef70ce3          	beq	a4,a5,80006510 <consoleread+0xfc>
    8000651c:	00001097          	auipc	ra,0x1
    80006520:	234080e7          	jalr	564(ra) # 80007750 <pop_on>
    80006524:	0984a783          	lw	a5,152(s1)
    80006528:	07f7f713          	andi	a4,a5,127
    8000652c:	00e48733          	add	a4,s1,a4
    80006530:	01874703          	lbu	a4,24(a4)
    80006534:	0017869b          	addiw	a3,a5,1
    80006538:	08d4ac23          	sw	a3,152(s1)
    8000653c:	00070c9b          	sext.w	s9,a4
    80006540:	f5371ee3          	bne	a4,s3,8000649c <consoleread+0x88>
    80006544:	000b851b          	sext.w	a0,s7
    80006548:	f96bf2e3          	bgeu	s7,s6,800064cc <consoleread+0xb8>
    8000654c:	08f4ac23          	sw	a5,152(s1)
    80006550:	f7dff06f          	j	800064cc <consoleread+0xb8>

0000000080006554 <consputc>:
    80006554:	10000793          	li	a5,256
    80006558:	00f50663          	beq	a0,a5,80006564 <consputc+0x10>
    8000655c:	00001317          	auipc	t1,0x1
    80006560:	9f430067          	jr	-1548(t1) # 80006f50 <uartputc_sync>
    80006564:	ff010113          	addi	sp,sp,-16
    80006568:	00113423          	sd	ra,8(sp)
    8000656c:	00813023          	sd	s0,0(sp)
    80006570:	01010413          	addi	s0,sp,16
    80006574:	00800513          	li	a0,8
    80006578:	00001097          	auipc	ra,0x1
    8000657c:	9d8080e7          	jalr	-1576(ra) # 80006f50 <uartputc_sync>
    80006580:	02000513          	li	a0,32
    80006584:	00001097          	auipc	ra,0x1
    80006588:	9cc080e7          	jalr	-1588(ra) # 80006f50 <uartputc_sync>
    8000658c:	00013403          	ld	s0,0(sp)
    80006590:	00813083          	ld	ra,8(sp)
    80006594:	00800513          	li	a0,8
    80006598:	01010113          	addi	sp,sp,16
    8000659c:	00001317          	auipc	t1,0x1
    800065a0:	9b430067          	jr	-1612(t1) # 80006f50 <uartputc_sync>

00000000800065a4 <consoleintr>:
    800065a4:	fe010113          	addi	sp,sp,-32
    800065a8:	00813823          	sd	s0,16(sp)
    800065ac:	00913423          	sd	s1,8(sp)
    800065b0:	01213023          	sd	s2,0(sp)
    800065b4:	00113c23          	sd	ra,24(sp)
    800065b8:	02010413          	addi	s0,sp,32
    800065bc:	00005917          	auipc	s2,0x5
    800065c0:	ffc90913          	addi	s2,s2,-4 # 8000b5b8 <cons>
    800065c4:	00050493          	mv	s1,a0
    800065c8:	00090513          	mv	a0,s2
    800065cc:	00001097          	auipc	ra,0x1
    800065d0:	e40080e7          	jalr	-448(ra) # 8000740c <acquire>
    800065d4:	02048c63          	beqz	s1,8000660c <consoleintr+0x68>
    800065d8:	0a092783          	lw	a5,160(s2)
    800065dc:	09892703          	lw	a4,152(s2)
    800065e0:	07f00693          	li	a3,127
    800065e4:	40e7873b          	subw	a4,a5,a4
    800065e8:	02e6e263          	bltu	a3,a4,8000660c <consoleintr+0x68>
    800065ec:	00d00713          	li	a4,13
    800065f0:	04e48063          	beq	s1,a4,80006630 <consoleintr+0x8c>
    800065f4:	07f7f713          	andi	a4,a5,127
    800065f8:	00e90733          	add	a4,s2,a4
    800065fc:	0017879b          	addiw	a5,a5,1
    80006600:	0af92023          	sw	a5,160(s2)
    80006604:	00970c23          	sb	s1,24(a4)
    80006608:	08f92e23          	sw	a5,156(s2)
    8000660c:	01013403          	ld	s0,16(sp)
    80006610:	01813083          	ld	ra,24(sp)
    80006614:	00813483          	ld	s1,8(sp)
    80006618:	00013903          	ld	s2,0(sp)
    8000661c:	00005517          	auipc	a0,0x5
    80006620:	f9c50513          	addi	a0,a0,-100 # 8000b5b8 <cons>
    80006624:	02010113          	addi	sp,sp,32
    80006628:	00001317          	auipc	t1,0x1
    8000662c:	eb030067          	jr	-336(t1) # 800074d8 <release>
    80006630:	00a00493          	li	s1,10
    80006634:	fc1ff06f          	j	800065f4 <consoleintr+0x50>

0000000080006638 <consoleinit>:
    80006638:	fe010113          	addi	sp,sp,-32
    8000663c:	00113c23          	sd	ra,24(sp)
    80006640:	00813823          	sd	s0,16(sp)
    80006644:	00913423          	sd	s1,8(sp)
    80006648:	02010413          	addi	s0,sp,32
    8000664c:	00005497          	auipc	s1,0x5
    80006650:	f6c48493          	addi	s1,s1,-148 # 8000b5b8 <cons>
    80006654:	00048513          	mv	a0,s1
    80006658:	00002597          	auipc	a1,0x2
    8000665c:	04058593          	addi	a1,a1,64 # 80008698 <CONSOLE_STATUS+0x688>
    80006660:	00001097          	auipc	ra,0x1
    80006664:	d88080e7          	jalr	-632(ra) # 800073e8 <initlock>
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	7ac080e7          	jalr	1964(ra) # 80006e14 <uartinit>
    80006670:	01813083          	ld	ra,24(sp)
    80006674:	01013403          	ld	s0,16(sp)
    80006678:	00000797          	auipc	a5,0x0
    8000667c:	d9c78793          	addi	a5,a5,-612 # 80006414 <consoleread>
    80006680:	0af4bc23          	sd	a5,184(s1)
    80006684:	00000797          	auipc	a5,0x0
    80006688:	cec78793          	addi	a5,a5,-788 # 80006370 <consolewrite>
    8000668c:	0cf4b023          	sd	a5,192(s1)
    80006690:	00813483          	ld	s1,8(sp)
    80006694:	02010113          	addi	sp,sp,32
    80006698:	00008067          	ret

000000008000669c <console_read>:
    8000669c:	ff010113          	addi	sp,sp,-16
    800066a0:	00813423          	sd	s0,8(sp)
    800066a4:	01010413          	addi	s0,sp,16
    800066a8:	00813403          	ld	s0,8(sp)
    800066ac:	00005317          	auipc	t1,0x5
    800066b0:	fc433303          	ld	t1,-60(t1) # 8000b670 <devsw+0x10>
    800066b4:	01010113          	addi	sp,sp,16
    800066b8:	00030067          	jr	t1

00000000800066bc <console_write>:
    800066bc:	ff010113          	addi	sp,sp,-16
    800066c0:	00813423          	sd	s0,8(sp)
    800066c4:	01010413          	addi	s0,sp,16
    800066c8:	00813403          	ld	s0,8(sp)
    800066cc:	00005317          	auipc	t1,0x5
    800066d0:	fac33303          	ld	t1,-84(t1) # 8000b678 <devsw+0x18>
    800066d4:	01010113          	addi	sp,sp,16
    800066d8:	00030067          	jr	t1

00000000800066dc <panic>:
    800066dc:	fe010113          	addi	sp,sp,-32
    800066e0:	00113c23          	sd	ra,24(sp)
    800066e4:	00813823          	sd	s0,16(sp)
    800066e8:	00913423          	sd	s1,8(sp)
    800066ec:	02010413          	addi	s0,sp,32
    800066f0:	00050493          	mv	s1,a0
    800066f4:	00002517          	auipc	a0,0x2
    800066f8:	fac50513          	addi	a0,a0,-84 # 800086a0 <CONSOLE_STATUS+0x690>
    800066fc:	00005797          	auipc	a5,0x5
    80006700:	0007ae23          	sw	zero,28(a5) # 8000b718 <pr+0x18>
    80006704:	00000097          	auipc	ra,0x0
    80006708:	034080e7          	jalr	52(ra) # 80006738 <__printf>
    8000670c:	00048513          	mv	a0,s1
    80006710:	00000097          	auipc	ra,0x0
    80006714:	028080e7          	jalr	40(ra) # 80006738 <__printf>
    80006718:	00002517          	auipc	a0,0x2
    8000671c:	d8050513          	addi	a0,a0,-640 # 80008498 <CONSOLE_STATUS+0x488>
    80006720:	00000097          	auipc	ra,0x0
    80006724:	018080e7          	jalr	24(ra) # 80006738 <__printf>
    80006728:	00100793          	li	a5,1
    8000672c:	00004717          	auipc	a4,0x4
    80006730:	d0f72623          	sw	a5,-756(a4) # 8000a438 <panicked>
    80006734:	0000006f          	j	80006734 <panic+0x58>

0000000080006738 <__printf>:
    80006738:	f3010113          	addi	sp,sp,-208
    8000673c:	08813023          	sd	s0,128(sp)
    80006740:	07313423          	sd	s3,104(sp)
    80006744:	09010413          	addi	s0,sp,144
    80006748:	05813023          	sd	s8,64(sp)
    8000674c:	08113423          	sd	ra,136(sp)
    80006750:	06913c23          	sd	s1,120(sp)
    80006754:	07213823          	sd	s2,112(sp)
    80006758:	07413023          	sd	s4,96(sp)
    8000675c:	05513c23          	sd	s5,88(sp)
    80006760:	05613823          	sd	s6,80(sp)
    80006764:	05713423          	sd	s7,72(sp)
    80006768:	03913c23          	sd	s9,56(sp)
    8000676c:	03a13823          	sd	s10,48(sp)
    80006770:	03b13423          	sd	s11,40(sp)
    80006774:	00005317          	auipc	t1,0x5
    80006778:	f8c30313          	addi	t1,t1,-116 # 8000b700 <pr>
    8000677c:	01832c03          	lw	s8,24(t1)
    80006780:	00b43423          	sd	a1,8(s0)
    80006784:	00c43823          	sd	a2,16(s0)
    80006788:	00d43c23          	sd	a3,24(s0)
    8000678c:	02e43023          	sd	a4,32(s0)
    80006790:	02f43423          	sd	a5,40(s0)
    80006794:	03043823          	sd	a6,48(s0)
    80006798:	03143c23          	sd	a7,56(s0)
    8000679c:	00050993          	mv	s3,a0
    800067a0:	4a0c1663          	bnez	s8,80006c4c <__printf+0x514>
    800067a4:	60098c63          	beqz	s3,80006dbc <__printf+0x684>
    800067a8:	0009c503          	lbu	a0,0(s3)
    800067ac:	00840793          	addi	a5,s0,8
    800067b0:	f6f43c23          	sd	a5,-136(s0)
    800067b4:	00000493          	li	s1,0
    800067b8:	22050063          	beqz	a0,800069d8 <__printf+0x2a0>
    800067bc:	00002a37          	lui	s4,0x2
    800067c0:	00018ab7          	lui	s5,0x18
    800067c4:	000f4b37          	lui	s6,0xf4
    800067c8:	00989bb7          	lui	s7,0x989
    800067cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800067d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800067d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800067d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800067dc:	00148c9b          	addiw	s9,s1,1
    800067e0:	02500793          	li	a5,37
    800067e4:	01998933          	add	s2,s3,s9
    800067e8:	38f51263          	bne	a0,a5,80006b6c <__printf+0x434>
    800067ec:	00094783          	lbu	a5,0(s2)
    800067f0:	00078c9b          	sext.w	s9,a5
    800067f4:	1e078263          	beqz	a5,800069d8 <__printf+0x2a0>
    800067f8:	0024849b          	addiw	s1,s1,2
    800067fc:	07000713          	li	a4,112
    80006800:	00998933          	add	s2,s3,s1
    80006804:	38e78a63          	beq	a5,a4,80006b98 <__printf+0x460>
    80006808:	20f76863          	bltu	a4,a5,80006a18 <__printf+0x2e0>
    8000680c:	42a78863          	beq	a5,a0,80006c3c <__printf+0x504>
    80006810:	06400713          	li	a4,100
    80006814:	40e79663          	bne	a5,a4,80006c20 <__printf+0x4e8>
    80006818:	f7843783          	ld	a5,-136(s0)
    8000681c:	0007a603          	lw	a2,0(a5)
    80006820:	00878793          	addi	a5,a5,8
    80006824:	f6f43c23          	sd	a5,-136(s0)
    80006828:	42064a63          	bltz	a2,80006c5c <__printf+0x524>
    8000682c:	00a00713          	li	a4,10
    80006830:	02e677bb          	remuw	a5,a2,a4
    80006834:	00002d97          	auipc	s11,0x2
    80006838:	e94d8d93          	addi	s11,s11,-364 # 800086c8 <digits>
    8000683c:	00900593          	li	a1,9
    80006840:	0006051b          	sext.w	a0,a2
    80006844:	00000c93          	li	s9,0
    80006848:	02079793          	slli	a5,a5,0x20
    8000684c:	0207d793          	srli	a5,a5,0x20
    80006850:	00fd87b3          	add	a5,s11,a5
    80006854:	0007c783          	lbu	a5,0(a5)
    80006858:	02e656bb          	divuw	a3,a2,a4
    8000685c:	f8f40023          	sb	a5,-128(s0)
    80006860:	14c5d863          	bge	a1,a2,800069b0 <__printf+0x278>
    80006864:	06300593          	li	a1,99
    80006868:	00100c93          	li	s9,1
    8000686c:	02e6f7bb          	remuw	a5,a3,a4
    80006870:	02079793          	slli	a5,a5,0x20
    80006874:	0207d793          	srli	a5,a5,0x20
    80006878:	00fd87b3          	add	a5,s11,a5
    8000687c:	0007c783          	lbu	a5,0(a5)
    80006880:	02e6d73b          	divuw	a4,a3,a4
    80006884:	f8f400a3          	sb	a5,-127(s0)
    80006888:	12a5f463          	bgeu	a1,a0,800069b0 <__printf+0x278>
    8000688c:	00a00693          	li	a3,10
    80006890:	00900593          	li	a1,9
    80006894:	02d777bb          	remuw	a5,a4,a3
    80006898:	02079793          	slli	a5,a5,0x20
    8000689c:	0207d793          	srli	a5,a5,0x20
    800068a0:	00fd87b3          	add	a5,s11,a5
    800068a4:	0007c503          	lbu	a0,0(a5)
    800068a8:	02d757bb          	divuw	a5,a4,a3
    800068ac:	f8a40123          	sb	a0,-126(s0)
    800068b0:	48e5f263          	bgeu	a1,a4,80006d34 <__printf+0x5fc>
    800068b4:	06300513          	li	a0,99
    800068b8:	02d7f5bb          	remuw	a1,a5,a3
    800068bc:	02059593          	slli	a1,a1,0x20
    800068c0:	0205d593          	srli	a1,a1,0x20
    800068c4:	00bd85b3          	add	a1,s11,a1
    800068c8:	0005c583          	lbu	a1,0(a1)
    800068cc:	02d7d7bb          	divuw	a5,a5,a3
    800068d0:	f8b401a3          	sb	a1,-125(s0)
    800068d4:	48e57263          	bgeu	a0,a4,80006d58 <__printf+0x620>
    800068d8:	3e700513          	li	a0,999
    800068dc:	02d7f5bb          	remuw	a1,a5,a3
    800068e0:	02059593          	slli	a1,a1,0x20
    800068e4:	0205d593          	srli	a1,a1,0x20
    800068e8:	00bd85b3          	add	a1,s11,a1
    800068ec:	0005c583          	lbu	a1,0(a1)
    800068f0:	02d7d7bb          	divuw	a5,a5,a3
    800068f4:	f8b40223          	sb	a1,-124(s0)
    800068f8:	46e57663          	bgeu	a0,a4,80006d64 <__printf+0x62c>
    800068fc:	02d7f5bb          	remuw	a1,a5,a3
    80006900:	02059593          	slli	a1,a1,0x20
    80006904:	0205d593          	srli	a1,a1,0x20
    80006908:	00bd85b3          	add	a1,s11,a1
    8000690c:	0005c583          	lbu	a1,0(a1)
    80006910:	02d7d7bb          	divuw	a5,a5,a3
    80006914:	f8b402a3          	sb	a1,-123(s0)
    80006918:	46ea7863          	bgeu	s4,a4,80006d88 <__printf+0x650>
    8000691c:	02d7f5bb          	remuw	a1,a5,a3
    80006920:	02059593          	slli	a1,a1,0x20
    80006924:	0205d593          	srli	a1,a1,0x20
    80006928:	00bd85b3          	add	a1,s11,a1
    8000692c:	0005c583          	lbu	a1,0(a1)
    80006930:	02d7d7bb          	divuw	a5,a5,a3
    80006934:	f8b40323          	sb	a1,-122(s0)
    80006938:	3eeaf863          	bgeu	s5,a4,80006d28 <__printf+0x5f0>
    8000693c:	02d7f5bb          	remuw	a1,a5,a3
    80006940:	02059593          	slli	a1,a1,0x20
    80006944:	0205d593          	srli	a1,a1,0x20
    80006948:	00bd85b3          	add	a1,s11,a1
    8000694c:	0005c583          	lbu	a1,0(a1)
    80006950:	02d7d7bb          	divuw	a5,a5,a3
    80006954:	f8b403a3          	sb	a1,-121(s0)
    80006958:	42eb7e63          	bgeu	s6,a4,80006d94 <__printf+0x65c>
    8000695c:	02d7f5bb          	remuw	a1,a5,a3
    80006960:	02059593          	slli	a1,a1,0x20
    80006964:	0205d593          	srli	a1,a1,0x20
    80006968:	00bd85b3          	add	a1,s11,a1
    8000696c:	0005c583          	lbu	a1,0(a1)
    80006970:	02d7d7bb          	divuw	a5,a5,a3
    80006974:	f8b40423          	sb	a1,-120(s0)
    80006978:	42ebfc63          	bgeu	s7,a4,80006db0 <__printf+0x678>
    8000697c:	02079793          	slli	a5,a5,0x20
    80006980:	0207d793          	srli	a5,a5,0x20
    80006984:	00fd8db3          	add	s11,s11,a5
    80006988:	000dc703          	lbu	a4,0(s11)
    8000698c:	00a00793          	li	a5,10
    80006990:	00900c93          	li	s9,9
    80006994:	f8e404a3          	sb	a4,-119(s0)
    80006998:	00065c63          	bgez	a2,800069b0 <__printf+0x278>
    8000699c:	f9040713          	addi	a4,s0,-112
    800069a0:	00f70733          	add	a4,a4,a5
    800069a4:	02d00693          	li	a3,45
    800069a8:	fed70823          	sb	a3,-16(a4)
    800069ac:	00078c93          	mv	s9,a5
    800069b0:	f8040793          	addi	a5,s0,-128
    800069b4:	01978cb3          	add	s9,a5,s9
    800069b8:	f7f40d13          	addi	s10,s0,-129
    800069bc:	000cc503          	lbu	a0,0(s9)
    800069c0:	fffc8c93          	addi	s9,s9,-1
    800069c4:	00000097          	auipc	ra,0x0
    800069c8:	b90080e7          	jalr	-1136(ra) # 80006554 <consputc>
    800069cc:	ffac98e3          	bne	s9,s10,800069bc <__printf+0x284>
    800069d0:	00094503          	lbu	a0,0(s2)
    800069d4:	e00514e3          	bnez	a0,800067dc <__printf+0xa4>
    800069d8:	1a0c1663          	bnez	s8,80006b84 <__printf+0x44c>
    800069dc:	08813083          	ld	ra,136(sp)
    800069e0:	08013403          	ld	s0,128(sp)
    800069e4:	07813483          	ld	s1,120(sp)
    800069e8:	07013903          	ld	s2,112(sp)
    800069ec:	06813983          	ld	s3,104(sp)
    800069f0:	06013a03          	ld	s4,96(sp)
    800069f4:	05813a83          	ld	s5,88(sp)
    800069f8:	05013b03          	ld	s6,80(sp)
    800069fc:	04813b83          	ld	s7,72(sp)
    80006a00:	04013c03          	ld	s8,64(sp)
    80006a04:	03813c83          	ld	s9,56(sp)
    80006a08:	03013d03          	ld	s10,48(sp)
    80006a0c:	02813d83          	ld	s11,40(sp)
    80006a10:	0d010113          	addi	sp,sp,208
    80006a14:	00008067          	ret
    80006a18:	07300713          	li	a4,115
    80006a1c:	1ce78a63          	beq	a5,a4,80006bf0 <__printf+0x4b8>
    80006a20:	07800713          	li	a4,120
    80006a24:	1ee79e63          	bne	a5,a4,80006c20 <__printf+0x4e8>
    80006a28:	f7843783          	ld	a5,-136(s0)
    80006a2c:	0007a703          	lw	a4,0(a5)
    80006a30:	00878793          	addi	a5,a5,8
    80006a34:	f6f43c23          	sd	a5,-136(s0)
    80006a38:	28074263          	bltz	a4,80006cbc <__printf+0x584>
    80006a3c:	00002d97          	auipc	s11,0x2
    80006a40:	c8cd8d93          	addi	s11,s11,-884 # 800086c8 <digits>
    80006a44:	00f77793          	andi	a5,a4,15
    80006a48:	00fd87b3          	add	a5,s11,a5
    80006a4c:	0007c683          	lbu	a3,0(a5)
    80006a50:	00f00613          	li	a2,15
    80006a54:	0007079b          	sext.w	a5,a4
    80006a58:	f8d40023          	sb	a3,-128(s0)
    80006a5c:	0047559b          	srliw	a1,a4,0x4
    80006a60:	0047569b          	srliw	a3,a4,0x4
    80006a64:	00000c93          	li	s9,0
    80006a68:	0ee65063          	bge	a2,a4,80006b48 <__printf+0x410>
    80006a6c:	00f6f693          	andi	a3,a3,15
    80006a70:	00dd86b3          	add	a3,s11,a3
    80006a74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006a78:	0087d79b          	srliw	a5,a5,0x8
    80006a7c:	00100c93          	li	s9,1
    80006a80:	f8d400a3          	sb	a3,-127(s0)
    80006a84:	0cb67263          	bgeu	a2,a1,80006b48 <__printf+0x410>
    80006a88:	00f7f693          	andi	a3,a5,15
    80006a8c:	00dd86b3          	add	a3,s11,a3
    80006a90:	0006c583          	lbu	a1,0(a3)
    80006a94:	00f00613          	li	a2,15
    80006a98:	0047d69b          	srliw	a3,a5,0x4
    80006a9c:	f8b40123          	sb	a1,-126(s0)
    80006aa0:	0047d593          	srli	a1,a5,0x4
    80006aa4:	28f67e63          	bgeu	a2,a5,80006d40 <__printf+0x608>
    80006aa8:	00f6f693          	andi	a3,a3,15
    80006aac:	00dd86b3          	add	a3,s11,a3
    80006ab0:	0006c503          	lbu	a0,0(a3)
    80006ab4:	0087d813          	srli	a6,a5,0x8
    80006ab8:	0087d69b          	srliw	a3,a5,0x8
    80006abc:	f8a401a3          	sb	a0,-125(s0)
    80006ac0:	28b67663          	bgeu	a2,a1,80006d4c <__printf+0x614>
    80006ac4:	00f6f693          	andi	a3,a3,15
    80006ac8:	00dd86b3          	add	a3,s11,a3
    80006acc:	0006c583          	lbu	a1,0(a3)
    80006ad0:	00c7d513          	srli	a0,a5,0xc
    80006ad4:	00c7d69b          	srliw	a3,a5,0xc
    80006ad8:	f8b40223          	sb	a1,-124(s0)
    80006adc:	29067a63          	bgeu	a2,a6,80006d70 <__printf+0x638>
    80006ae0:	00f6f693          	andi	a3,a3,15
    80006ae4:	00dd86b3          	add	a3,s11,a3
    80006ae8:	0006c583          	lbu	a1,0(a3)
    80006aec:	0107d813          	srli	a6,a5,0x10
    80006af0:	0107d69b          	srliw	a3,a5,0x10
    80006af4:	f8b402a3          	sb	a1,-123(s0)
    80006af8:	28a67263          	bgeu	a2,a0,80006d7c <__printf+0x644>
    80006afc:	00f6f693          	andi	a3,a3,15
    80006b00:	00dd86b3          	add	a3,s11,a3
    80006b04:	0006c683          	lbu	a3,0(a3)
    80006b08:	0147d79b          	srliw	a5,a5,0x14
    80006b0c:	f8d40323          	sb	a3,-122(s0)
    80006b10:	21067663          	bgeu	a2,a6,80006d1c <__printf+0x5e4>
    80006b14:	02079793          	slli	a5,a5,0x20
    80006b18:	0207d793          	srli	a5,a5,0x20
    80006b1c:	00fd8db3          	add	s11,s11,a5
    80006b20:	000dc683          	lbu	a3,0(s11)
    80006b24:	00800793          	li	a5,8
    80006b28:	00700c93          	li	s9,7
    80006b2c:	f8d403a3          	sb	a3,-121(s0)
    80006b30:	00075c63          	bgez	a4,80006b48 <__printf+0x410>
    80006b34:	f9040713          	addi	a4,s0,-112
    80006b38:	00f70733          	add	a4,a4,a5
    80006b3c:	02d00693          	li	a3,45
    80006b40:	fed70823          	sb	a3,-16(a4)
    80006b44:	00078c93          	mv	s9,a5
    80006b48:	f8040793          	addi	a5,s0,-128
    80006b4c:	01978cb3          	add	s9,a5,s9
    80006b50:	f7f40d13          	addi	s10,s0,-129
    80006b54:	000cc503          	lbu	a0,0(s9)
    80006b58:	fffc8c93          	addi	s9,s9,-1
    80006b5c:	00000097          	auipc	ra,0x0
    80006b60:	9f8080e7          	jalr	-1544(ra) # 80006554 <consputc>
    80006b64:	ff9d18e3          	bne	s10,s9,80006b54 <__printf+0x41c>
    80006b68:	0100006f          	j	80006b78 <__printf+0x440>
    80006b6c:	00000097          	auipc	ra,0x0
    80006b70:	9e8080e7          	jalr	-1560(ra) # 80006554 <consputc>
    80006b74:	000c8493          	mv	s1,s9
    80006b78:	00094503          	lbu	a0,0(s2)
    80006b7c:	c60510e3          	bnez	a0,800067dc <__printf+0xa4>
    80006b80:	e40c0ee3          	beqz	s8,800069dc <__printf+0x2a4>
    80006b84:	00005517          	auipc	a0,0x5
    80006b88:	b7c50513          	addi	a0,a0,-1156 # 8000b700 <pr>
    80006b8c:	00001097          	auipc	ra,0x1
    80006b90:	94c080e7          	jalr	-1716(ra) # 800074d8 <release>
    80006b94:	e49ff06f          	j	800069dc <__printf+0x2a4>
    80006b98:	f7843783          	ld	a5,-136(s0)
    80006b9c:	03000513          	li	a0,48
    80006ba0:	01000d13          	li	s10,16
    80006ba4:	00878713          	addi	a4,a5,8
    80006ba8:	0007bc83          	ld	s9,0(a5)
    80006bac:	f6e43c23          	sd	a4,-136(s0)
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	9a4080e7          	jalr	-1628(ra) # 80006554 <consputc>
    80006bb8:	07800513          	li	a0,120
    80006bbc:	00000097          	auipc	ra,0x0
    80006bc0:	998080e7          	jalr	-1640(ra) # 80006554 <consputc>
    80006bc4:	00002d97          	auipc	s11,0x2
    80006bc8:	b04d8d93          	addi	s11,s11,-1276 # 800086c8 <digits>
    80006bcc:	03ccd793          	srli	a5,s9,0x3c
    80006bd0:	00fd87b3          	add	a5,s11,a5
    80006bd4:	0007c503          	lbu	a0,0(a5)
    80006bd8:	fffd0d1b          	addiw	s10,s10,-1
    80006bdc:	004c9c93          	slli	s9,s9,0x4
    80006be0:	00000097          	auipc	ra,0x0
    80006be4:	974080e7          	jalr	-1676(ra) # 80006554 <consputc>
    80006be8:	fe0d12e3          	bnez	s10,80006bcc <__printf+0x494>
    80006bec:	f8dff06f          	j	80006b78 <__printf+0x440>
    80006bf0:	f7843783          	ld	a5,-136(s0)
    80006bf4:	0007bc83          	ld	s9,0(a5)
    80006bf8:	00878793          	addi	a5,a5,8
    80006bfc:	f6f43c23          	sd	a5,-136(s0)
    80006c00:	000c9a63          	bnez	s9,80006c14 <__printf+0x4dc>
    80006c04:	1080006f          	j	80006d0c <__printf+0x5d4>
    80006c08:	001c8c93          	addi	s9,s9,1
    80006c0c:	00000097          	auipc	ra,0x0
    80006c10:	948080e7          	jalr	-1720(ra) # 80006554 <consputc>
    80006c14:	000cc503          	lbu	a0,0(s9)
    80006c18:	fe0518e3          	bnez	a0,80006c08 <__printf+0x4d0>
    80006c1c:	f5dff06f          	j	80006b78 <__printf+0x440>
    80006c20:	02500513          	li	a0,37
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	930080e7          	jalr	-1744(ra) # 80006554 <consputc>
    80006c2c:	000c8513          	mv	a0,s9
    80006c30:	00000097          	auipc	ra,0x0
    80006c34:	924080e7          	jalr	-1756(ra) # 80006554 <consputc>
    80006c38:	f41ff06f          	j	80006b78 <__printf+0x440>
    80006c3c:	02500513          	li	a0,37
    80006c40:	00000097          	auipc	ra,0x0
    80006c44:	914080e7          	jalr	-1772(ra) # 80006554 <consputc>
    80006c48:	f31ff06f          	j	80006b78 <__printf+0x440>
    80006c4c:	00030513          	mv	a0,t1
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	7bc080e7          	jalr	1980(ra) # 8000740c <acquire>
    80006c58:	b4dff06f          	j	800067a4 <__printf+0x6c>
    80006c5c:	40c0053b          	negw	a0,a2
    80006c60:	00a00713          	li	a4,10
    80006c64:	02e576bb          	remuw	a3,a0,a4
    80006c68:	00002d97          	auipc	s11,0x2
    80006c6c:	a60d8d93          	addi	s11,s11,-1440 # 800086c8 <digits>
    80006c70:	ff700593          	li	a1,-9
    80006c74:	02069693          	slli	a3,a3,0x20
    80006c78:	0206d693          	srli	a3,a3,0x20
    80006c7c:	00dd86b3          	add	a3,s11,a3
    80006c80:	0006c683          	lbu	a3,0(a3)
    80006c84:	02e557bb          	divuw	a5,a0,a4
    80006c88:	f8d40023          	sb	a3,-128(s0)
    80006c8c:	10b65e63          	bge	a2,a1,80006da8 <__printf+0x670>
    80006c90:	06300593          	li	a1,99
    80006c94:	02e7f6bb          	remuw	a3,a5,a4
    80006c98:	02069693          	slli	a3,a3,0x20
    80006c9c:	0206d693          	srli	a3,a3,0x20
    80006ca0:	00dd86b3          	add	a3,s11,a3
    80006ca4:	0006c683          	lbu	a3,0(a3)
    80006ca8:	02e7d73b          	divuw	a4,a5,a4
    80006cac:	00200793          	li	a5,2
    80006cb0:	f8d400a3          	sb	a3,-127(s0)
    80006cb4:	bca5ece3          	bltu	a1,a0,8000688c <__printf+0x154>
    80006cb8:	ce5ff06f          	j	8000699c <__printf+0x264>
    80006cbc:	40e007bb          	negw	a5,a4
    80006cc0:	00002d97          	auipc	s11,0x2
    80006cc4:	a08d8d93          	addi	s11,s11,-1528 # 800086c8 <digits>
    80006cc8:	00f7f693          	andi	a3,a5,15
    80006ccc:	00dd86b3          	add	a3,s11,a3
    80006cd0:	0006c583          	lbu	a1,0(a3)
    80006cd4:	ff100613          	li	a2,-15
    80006cd8:	0047d69b          	srliw	a3,a5,0x4
    80006cdc:	f8b40023          	sb	a1,-128(s0)
    80006ce0:	0047d59b          	srliw	a1,a5,0x4
    80006ce4:	0ac75e63          	bge	a4,a2,80006da0 <__printf+0x668>
    80006ce8:	00f6f693          	andi	a3,a3,15
    80006cec:	00dd86b3          	add	a3,s11,a3
    80006cf0:	0006c603          	lbu	a2,0(a3)
    80006cf4:	00f00693          	li	a3,15
    80006cf8:	0087d79b          	srliw	a5,a5,0x8
    80006cfc:	f8c400a3          	sb	a2,-127(s0)
    80006d00:	d8b6e4e3          	bltu	a3,a1,80006a88 <__printf+0x350>
    80006d04:	00200793          	li	a5,2
    80006d08:	e2dff06f          	j	80006b34 <__printf+0x3fc>
    80006d0c:	00002c97          	auipc	s9,0x2
    80006d10:	99cc8c93          	addi	s9,s9,-1636 # 800086a8 <CONSOLE_STATUS+0x698>
    80006d14:	02800513          	li	a0,40
    80006d18:	ef1ff06f          	j	80006c08 <__printf+0x4d0>
    80006d1c:	00700793          	li	a5,7
    80006d20:	00600c93          	li	s9,6
    80006d24:	e0dff06f          	j	80006b30 <__printf+0x3f8>
    80006d28:	00700793          	li	a5,7
    80006d2c:	00600c93          	li	s9,6
    80006d30:	c69ff06f          	j	80006998 <__printf+0x260>
    80006d34:	00300793          	li	a5,3
    80006d38:	00200c93          	li	s9,2
    80006d3c:	c5dff06f          	j	80006998 <__printf+0x260>
    80006d40:	00300793          	li	a5,3
    80006d44:	00200c93          	li	s9,2
    80006d48:	de9ff06f          	j	80006b30 <__printf+0x3f8>
    80006d4c:	00400793          	li	a5,4
    80006d50:	00300c93          	li	s9,3
    80006d54:	dddff06f          	j	80006b30 <__printf+0x3f8>
    80006d58:	00400793          	li	a5,4
    80006d5c:	00300c93          	li	s9,3
    80006d60:	c39ff06f          	j	80006998 <__printf+0x260>
    80006d64:	00500793          	li	a5,5
    80006d68:	00400c93          	li	s9,4
    80006d6c:	c2dff06f          	j	80006998 <__printf+0x260>
    80006d70:	00500793          	li	a5,5
    80006d74:	00400c93          	li	s9,4
    80006d78:	db9ff06f          	j	80006b30 <__printf+0x3f8>
    80006d7c:	00600793          	li	a5,6
    80006d80:	00500c93          	li	s9,5
    80006d84:	dadff06f          	j	80006b30 <__printf+0x3f8>
    80006d88:	00600793          	li	a5,6
    80006d8c:	00500c93          	li	s9,5
    80006d90:	c09ff06f          	j	80006998 <__printf+0x260>
    80006d94:	00800793          	li	a5,8
    80006d98:	00700c93          	li	s9,7
    80006d9c:	bfdff06f          	j	80006998 <__printf+0x260>
    80006da0:	00100793          	li	a5,1
    80006da4:	d91ff06f          	j	80006b34 <__printf+0x3fc>
    80006da8:	00100793          	li	a5,1
    80006dac:	bf1ff06f          	j	8000699c <__printf+0x264>
    80006db0:	00900793          	li	a5,9
    80006db4:	00800c93          	li	s9,8
    80006db8:	be1ff06f          	j	80006998 <__printf+0x260>
    80006dbc:	00002517          	auipc	a0,0x2
    80006dc0:	8f450513          	addi	a0,a0,-1804 # 800086b0 <CONSOLE_STATUS+0x6a0>
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	918080e7          	jalr	-1768(ra) # 800066dc <panic>

0000000080006dcc <printfinit>:
    80006dcc:	fe010113          	addi	sp,sp,-32
    80006dd0:	00813823          	sd	s0,16(sp)
    80006dd4:	00913423          	sd	s1,8(sp)
    80006dd8:	00113c23          	sd	ra,24(sp)
    80006ddc:	02010413          	addi	s0,sp,32
    80006de0:	00005497          	auipc	s1,0x5
    80006de4:	92048493          	addi	s1,s1,-1760 # 8000b700 <pr>
    80006de8:	00048513          	mv	a0,s1
    80006dec:	00002597          	auipc	a1,0x2
    80006df0:	8d458593          	addi	a1,a1,-1836 # 800086c0 <CONSOLE_STATUS+0x6b0>
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	5f4080e7          	jalr	1524(ra) # 800073e8 <initlock>
    80006dfc:	01813083          	ld	ra,24(sp)
    80006e00:	01013403          	ld	s0,16(sp)
    80006e04:	0004ac23          	sw	zero,24(s1)
    80006e08:	00813483          	ld	s1,8(sp)
    80006e0c:	02010113          	addi	sp,sp,32
    80006e10:	00008067          	ret

0000000080006e14 <uartinit>:
    80006e14:	ff010113          	addi	sp,sp,-16
    80006e18:	00813423          	sd	s0,8(sp)
    80006e1c:	01010413          	addi	s0,sp,16
    80006e20:	100007b7          	lui	a5,0x10000
    80006e24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006e28:	f8000713          	li	a4,-128
    80006e2c:	00e781a3          	sb	a4,3(a5)
    80006e30:	00300713          	li	a4,3
    80006e34:	00e78023          	sb	a4,0(a5)
    80006e38:	000780a3          	sb	zero,1(a5)
    80006e3c:	00e781a3          	sb	a4,3(a5)
    80006e40:	00700693          	li	a3,7
    80006e44:	00d78123          	sb	a3,2(a5)
    80006e48:	00e780a3          	sb	a4,1(a5)
    80006e4c:	00813403          	ld	s0,8(sp)
    80006e50:	01010113          	addi	sp,sp,16
    80006e54:	00008067          	ret

0000000080006e58 <uartputc>:
    80006e58:	00003797          	auipc	a5,0x3
    80006e5c:	5e07a783          	lw	a5,1504(a5) # 8000a438 <panicked>
    80006e60:	00078463          	beqz	a5,80006e68 <uartputc+0x10>
    80006e64:	0000006f          	j	80006e64 <uartputc+0xc>
    80006e68:	fd010113          	addi	sp,sp,-48
    80006e6c:	02813023          	sd	s0,32(sp)
    80006e70:	00913c23          	sd	s1,24(sp)
    80006e74:	01213823          	sd	s2,16(sp)
    80006e78:	01313423          	sd	s3,8(sp)
    80006e7c:	02113423          	sd	ra,40(sp)
    80006e80:	03010413          	addi	s0,sp,48
    80006e84:	00003917          	auipc	s2,0x3
    80006e88:	5bc90913          	addi	s2,s2,1468 # 8000a440 <uart_tx_r>
    80006e8c:	00093783          	ld	a5,0(s2)
    80006e90:	00003497          	auipc	s1,0x3
    80006e94:	5b848493          	addi	s1,s1,1464 # 8000a448 <uart_tx_w>
    80006e98:	0004b703          	ld	a4,0(s1)
    80006e9c:	02078693          	addi	a3,a5,32
    80006ea0:	00050993          	mv	s3,a0
    80006ea4:	02e69c63          	bne	a3,a4,80006edc <uartputc+0x84>
    80006ea8:	00001097          	auipc	ra,0x1
    80006eac:	834080e7          	jalr	-1996(ra) # 800076dc <push_on>
    80006eb0:	00093783          	ld	a5,0(s2)
    80006eb4:	0004b703          	ld	a4,0(s1)
    80006eb8:	02078793          	addi	a5,a5,32
    80006ebc:	00e79463          	bne	a5,a4,80006ec4 <uartputc+0x6c>
    80006ec0:	0000006f          	j	80006ec0 <uartputc+0x68>
    80006ec4:	00001097          	auipc	ra,0x1
    80006ec8:	88c080e7          	jalr	-1908(ra) # 80007750 <pop_on>
    80006ecc:	00093783          	ld	a5,0(s2)
    80006ed0:	0004b703          	ld	a4,0(s1)
    80006ed4:	02078693          	addi	a3,a5,32
    80006ed8:	fce688e3          	beq	a3,a4,80006ea8 <uartputc+0x50>
    80006edc:	01f77693          	andi	a3,a4,31
    80006ee0:	00005597          	auipc	a1,0x5
    80006ee4:	84058593          	addi	a1,a1,-1984 # 8000b720 <uart_tx_buf>
    80006ee8:	00d586b3          	add	a3,a1,a3
    80006eec:	00170713          	addi	a4,a4,1
    80006ef0:	01368023          	sb	s3,0(a3)
    80006ef4:	00e4b023          	sd	a4,0(s1)
    80006ef8:	10000637          	lui	a2,0x10000
    80006efc:	02f71063          	bne	a4,a5,80006f1c <uartputc+0xc4>
    80006f00:	0340006f          	j	80006f34 <uartputc+0xdc>
    80006f04:	00074703          	lbu	a4,0(a4)
    80006f08:	00f93023          	sd	a5,0(s2)
    80006f0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006f10:	00093783          	ld	a5,0(s2)
    80006f14:	0004b703          	ld	a4,0(s1)
    80006f18:	00f70e63          	beq	a4,a5,80006f34 <uartputc+0xdc>
    80006f1c:	00564683          	lbu	a3,5(a2)
    80006f20:	01f7f713          	andi	a4,a5,31
    80006f24:	00e58733          	add	a4,a1,a4
    80006f28:	0206f693          	andi	a3,a3,32
    80006f2c:	00178793          	addi	a5,a5,1
    80006f30:	fc069ae3          	bnez	a3,80006f04 <uartputc+0xac>
    80006f34:	02813083          	ld	ra,40(sp)
    80006f38:	02013403          	ld	s0,32(sp)
    80006f3c:	01813483          	ld	s1,24(sp)
    80006f40:	01013903          	ld	s2,16(sp)
    80006f44:	00813983          	ld	s3,8(sp)
    80006f48:	03010113          	addi	sp,sp,48
    80006f4c:	00008067          	ret

0000000080006f50 <uartputc_sync>:
    80006f50:	ff010113          	addi	sp,sp,-16
    80006f54:	00813423          	sd	s0,8(sp)
    80006f58:	01010413          	addi	s0,sp,16
    80006f5c:	00003717          	auipc	a4,0x3
    80006f60:	4dc72703          	lw	a4,1244(a4) # 8000a438 <panicked>
    80006f64:	02071663          	bnez	a4,80006f90 <uartputc_sync+0x40>
    80006f68:	00050793          	mv	a5,a0
    80006f6c:	100006b7          	lui	a3,0x10000
    80006f70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006f74:	02077713          	andi	a4,a4,32
    80006f78:	fe070ce3          	beqz	a4,80006f70 <uartputc_sync+0x20>
    80006f7c:	0ff7f793          	andi	a5,a5,255
    80006f80:	00f68023          	sb	a5,0(a3)
    80006f84:	00813403          	ld	s0,8(sp)
    80006f88:	01010113          	addi	sp,sp,16
    80006f8c:	00008067          	ret
    80006f90:	0000006f          	j	80006f90 <uartputc_sync+0x40>

0000000080006f94 <uartstart>:
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00813423          	sd	s0,8(sp)
    80006f9c:	01010413          	addi	s0,sp,16
    80006fa0:	00003617          	auipc	a2,0x3
    80006fa4:	4a060613          	addi	a2,a2,1184 # 8000a440 <uart_tx_r>
    80006fa8:	00003517          	auipc	a0,0x3
    80006fac:	4a050513          	addi	a0,a0,1184 # 8000a448 <uart_tx_w>
    80006fb0:	00063783          	ld	a5,0(a2)
    80006fb4:	00053703          	ld	a4,0(a0)
    80006fb8:	04f70263          	beq	a4,a5,80006ffc <uartstart+0x68>
    80006fbc:	100005b7          	lui	a1,0x10000
    80006fc0:	00004817          	auipc	a6,0x4
    80006fc4:	76080813          	addi	a6,a6,1888 # 8000b720 <uart_tx_buf>
    80006fc8:	01c0006f          	j	80006fe4 <uartstart+0x50>
    80006fcc:	0006c703          	lbu	a4,0(a3)
    80006fd0:	00f63023          	sd	a5,0(a2)
    80006fd4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006fd8:	00063783          	ld	a5,0(a2)
    80006fdc:	00053703          	ld	a4,0(a0)
    80006fe0:	00f70e63          	beq	a4,a5,80006ffc <uartstart+0x68>
    80006fe4:	01f7f713          	andi	a4,a5,31
    80006fe8:	00e806b3          	add	a3,a6,a4
    80006fec:	0055c703          	lbu	a4,5(a1)
    80006ff0:	00178793          	addi	a5,a5,1
    80006ff4:	02077713          	andi	a4,a4,32
    80006ff8:	fc071ae3          	bnez	a4,80006fcc <uartstart+0x38>
    80006ffc:	00813403          	ld	s0,8(sp)
    80007000:	01010113          	addi	sp,sp,16
    80007004:	00008067          	ret

0000000080007008 <uartgetc>:
    80007008:	ff010113          	addi	sp,sp,-16
    8000700c:	00813423          	sd	s0,8(sp)
    80007010:	01010413          	addi	s0,sp,16
    80007014:	10000737          	lui	a4,0x10000
    80007018:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000701c:	0017f793          	andi	a5,a5,1
    80007020:	00078c63          	beqz	a5,80007038 <uartgetc+0x30>
    80007024:	00074503          	lbu	a0,0(a4)
    80007028:	0ff57513          	andi	a0,a0,255
    8000702c:	00813403          	ld	s0,8(sp)
    80007030:	01010113          	addi	sp,sp,16
    80007034:	00008067          	ret
    80007038:	fff00513          	li	a0,-1
    8000703c:	ff1ff06f          	j	8000702c <uartgetc+0x24>

0000000080007040 <uartintr>:
    80007040:	100007b7          	lui	a5,0x10000
    80007044:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007048:	0017f793          	andi	a5,a5,1
    8000704c:	0a078463          	beqz	a5,800070f4 <uartintr+0xb4>
    80007050:	fe010113          	addi	sp,sp,-32
    80007054:	00813823          	sd	s0,16(sp)
    80007058:	00913423          	sd	s1,8(sp)
    8000705c:	00113c23          	sd	ra,24(sp)
    80007060:	02010413          	addi	s0,sp,32
    80007064:	100004b7          	lui	s1,0x10000
    80007068:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000706c:	0ff57513          	andi	a0,a0,255
    80007070:	fffff097          	auipc	ra,0xfffff
    80007074:	534080e7          	jalr	1332(ra) # 800065a4 <consoleintr>
    80007078:	0054c783          	lbu	a5,5(s1)
    8000707c:	0017f793          	andi	a5,a5,1
    80007080:	fe0794e3          	bnez	a5,80007068 <uartintr+0x28>
    80007084:	00003617          	auipc	a2,0x3
    80007088:	3bc60613          	addi	a2,a2,956 # 8000a440 <uart_tx_r>
    8000708c:	00003517          	auipc	a0,0x3
    80007090:	3bc50513          	addi	a0,a0,956 # 8000a448 <uart_tx_w>
    80007094:	00063783          	ld	a5,0(a2)
    80007098:	00053703          	ld	a4,0(a0)
    8000709c:	04f70263          	beq	a4,a5,800070e0 <uartintr+0xa0>
    800070a0:	100005b7          	lui	a1,0x10000
    800070a4:	00004817          	auipc	a6,0x4
    800070a8:	67c80813          	addi	a6,a6,1660 # 8000b720 <uart_tx_buf>
    800070ac:	01c0006f          	j	800070c8 <uartintr+0x88>
    800070b0:	0006c703          	lbu	a4,0(a3)
    800070b4:	00f63023          	sd	a5,0(a2)
    800070b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800070bc:	00063783          	ld	a5,0(a2)
    800070c0:	00053703          	ld	a4,0(a0)
    800070c4:	00f70e63          	beq	a4,a5,800070e0 <uartintr+0xa0>
    800070c8:	01f7f713          	andi	a4,a5,31
    800070cc:	00e806b3          	add	a3,a6,a4
    800070d0:	0055c703          	lbu	a4,5(a1)
    800070d4:	00178793          	addi	a5,a5,1
    800070d8:	02077713          	andi	a4,a4,32
    800070dc:	fc071ae3          	bnez	a4,800070b0 <uartintr+0x70>
    800070e0:	01813083          	ld	ra,24(sp)
    800070e4:	01013403          	ld	s0,16(sp)
    800070e8:	00813483          	ld	s1,8(sp)
    800070ec:	02010113          	addi	sp,sp,32
    800070f0:	00008067          	ret
    800070f4:	00003617          	auipc	a2,0x3
    800070f8:	34c60613          	addi	a2,a2,844 # 8000a440 <uart_tx_r>
    800070fc:	00003517          	auipc	a0,0x3
    80007100:	34c50513          	addi	a0,a0,844 # 8000a448 <uart_tx_w>
    80007104:	00063783          	ld	a5,0(a2)
    80007108:	00053703          	ld	a4,0(a0)
    8000710c:	04f70263          	beq	a4,a5,80007150 <uartintr+0x110>
    80007110:	100005b7          	lui	a1,0x10000
    80007114:	00004817          	auipc	a6,0x4
    80007118:	60c80813          	addi	a6,a6,1548 # 8000b720 <uart_tx_buf>
    8000711c:	01c0006f          	j	80007138 <uartintr+0xf8>
    80007120:	0006c703          	lbu	a4,0(a3)
    80007124:	00f63023          	sd	a5,0(a2)
    80007128:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000712c:	00063783          	ld	a5,0(a2)
    80007130:	00053703          	ld	a4,0(a0)
    80007134:	02f70063          	beq	a4,a5,80007154 <uartintr+0x114>
    80007138:	01f7f713          	andi	a4,a5,31
    8000713c:	00e806b3          	add	a3,a6,a4
    80007140:	0055c703          	lbu	a4,5(a1)
    80007144:	00178793          	addi	a5,a5,1
    80007148:	02077713          	andi	a4,a4,32
    8000714c:	fc071ae3          	bnez	a4,80007120 <uartintr+0xe0>
    80007150:	00008067          	ret
    80007154:	00008067          	ret

0000000080007158 <kinit>:
    80007158:	fc010113          	addi	sp,sp,-64
    8000715c:	02913423          	sd	s1,40(sp)
    80007160:	fffff7b7          	lui	a5,0xfffff
    80007164:	00005497          	auipc	s1,0x5
    80007168:	5db48493          	addi	s1,s1,1499 # 8000c73f <end+0xfff>
    8000716c:	02813823          	sd	s0,48(sp)
    80007170:	01313c23          	sd	s3,24(sp)
    80007174:	00f4f4b3          	and	s1,s1,a5
    80007178:	02113c23          	sd	ra,56(sp)
    8000717c:	03213023          	sd	s2,32(sp)
    80007180:	01413823          	sd	s4,16(sp)
    80007184:	01513423          	sd	s5,8(sp)
    80007188:	04010413          	addi	s0,sp,64
    8000718c:	000017b7          	lui	a5,0x1
    80007190:	01100993          	li	s3,17
    80007194:	00f487b3          	add	a5,s1,a5
    80007198:	01b99993          	slli	s3,s3,0x1b
    8000719c:	06f9e063          	bltu	s3,a5,800071fc <kinit+0xa4>
    800071a0:	00004a97          	auipc	s5,0x4
    800071a4:	5a0a8a93          	addi	s5,s5,1440 # 8000b740 <end>
    800071a8:	0754ec63          	bltu	s1,s5,80007220 <kinit+0xc8>
    800071ac:	0734fa63          	bgeu	s1,s3,80007220 <kinit+0xc8>
    800071b0:	00088a37          	lui	s4,0x88
    800071b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800071b8:	00003917          	auipc	s2,0x3
    800071bc:	29890913          	addi	s2,s2,664 # 8000a450 <kmem>
    800071c0:	00ca1a13          	slli	s4,s4,0xc
    800071c4:	0140006f          	j	800071d8 <kinit+0x80>
    800071c8:	000017b7          	lui	a5,0x1
    800071cc:	00f484b3          	add	s1,s1,a5
    800071d0:	0554e863          	bltu	s1,s5,80007220 <kinit+0xc8>
    800071d4:	0534f663          	bgeu	s1,s3,80007220 <kinit+0xc8>
    800071d8:	00001637          	lui	a2,0x1
    800071dc:	00100593          	li	a1,1
    800071e0:	00048513          	mv	a0,s1
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	5e4080e7          	jalr	1508(ra) # 800077c8 <__memset>
    800071ec:	00093783          	ld	a5,0(s2)
    800071f0:	00f4b023          	sd	a5,0(s1)
    800071f4:	00993023          	sd	s1,0(s2)
    800071f8:	fd4498e3          	bne	s1,s4,800071c8 <kinit+0x70>
    800071fc:	03813083          	ld	ra,56(sp)
    80007200:	03013403          	ld	s0,48(sp)
    80007204:	02813483          	ld	s1,40(sp)
    80007208:	02013903          	ld	s2,32(sp)
    8000720c:	01813983          	ld	s3,24(sp)
    80007210:	01013a03          	ld	s4,16(sp)
    80007214:	00813a83          	ld	s5,8(sp)
    80007218:	04010113          	addi	sp,sp,64
    8000721c:	00008067          	ret
    80007220:	00001517          	auipc	a0,0x1
    80007224:	4c050513          	addi	a0,a0,1216 # 800086e0 <digits+0x18>
    80007228:	fffff097          	auipc	ra,0xfffff
    8000722c:	4b4080e7          	jalr	1204(ra) # 800066dc <panic>

0000000080007230 <freerange>:
    80007230:	fc010113          	addi	sp,sp,-64
    80007234:	000017b7          	lui	a5,0x1
    80007238:	02913423          	sd	s1,40(sp)
    8000723c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007240:	009504b3          	add	s1,a0,s1
    80007244:	fffff537          	lui	a0,0xfffff
    80007248:	02813823          	sd	s0,48(sp)
    8000724c:	02113c23          	sd	ra,56(sp)
    80007250:	03213023          	sd	s2,32(sp)
    80007254:	01313c23          	sd	s3,24(sp)
    80007258:	01413823          	sd	s4,16(sp)
    8000725c:	01513423          	sd	s5,8(sp)
    80007260:	01613023          	sd	s6,0(sp)
    80007264:	04010413          	addi	s0,sp,64
    80007268:	00a4f4b3          	and	s1,s1,a0
    8000726c:	00f487b3          	add	a5,s1,a5
    80007270:	06f5e463          	bltu	a1,a5,800072d8 <freerange+0xa8>
    80007274:	00004a97          	auipc	s5,0x4
    80007278:	4cca8a93          	addi	s5,s5,1228 # 8000b740 <end>
    8000727c:	0954e263          	bltu	s1,s5,80007300 <freerange+0xd0>
    80007280:	01100993          	li	s3,17
    80007284:	01b99993          	slli	s3,s3,0x1b
    80007288:	0734fc63          	bgeu	s1,s3,80007300 <freerange+0xd0>
    8000728c:	00058a13          	mv	s4,a1
    80007290:	00003917          	auipc	s2,0x3
    80007294:	1c090913          	addi	s2,s2,448 # 8000a450 <kmem>
    80007298:	00002b37          	lui	s6,0x2
    8000729c:	0140006f          	j	800072b0 <freerange+0x80>
    800072a0:	000017b7          	lui	a5,0x1
    800072a4:	00f484b3          	add	s1,s1,a5
    800072a8:	0554ec63          	bltu	s1,s5,80007300 <freerange+0xd0>
    800072ac:	0534fa63          	bgeu	s1,s3,80007300 <freerange+0xd0>
    800072b0:	00001637          	lui	a2,0x1
    800072b4:	00100593          	li	a1,1
    800072b8:	00048513          	mv	a0,s1
    800072bc:	00000097          	auipc	ra,0x0
    800072c0:	50c080e7          	jalr	1292(ra) # 800077c8 <__memset>
    800072c4:	00093703          	ld	a4,0(s2)
    800072c8:	016487b3          	add	a5,s1,s6
    800072cc:	00e4b023          	sd	a4,0(s1)
    800072d0:	00993023          	sd	s1,0(s2)
    800072d4:	fcfa76e3          	bgeu	s4,a5,800072a0 <freerange+0x70>
    800072d8:	03813083          	ld	ra,56(sp)
    800072dc:	03013403          	ld	s0,48(sp)
    800072e0:	02813483          	ld	s1,40(sp)
    800072e4:	02013903          	ld	s2,32(sp)
    800072e8:	01813983          	ld	s3,24(sp)
    800072ec:	01013a03          	ld	s4,16(sp)
    800072f0:	00813a83          	ld	s5,8(sp)
    800072f4:	00013b03          	ld	s6,0(sp)
    800072f8:	04010113          	addi	sp,sp,64
    800072fc:	00008067          	ret
    80007300:	00001517          	auipc	a0,0x1
    80007304:	3e050513          	addi	a0,a0,992 # 800086e0 <digits+0x18>
    80007308:	fffff097          	auipc	ra,0xfffff
    8000730c:	3d4080e7          	jalr	980(ra) # 800066dc <panic>

0000000080007310 <kfree>:
    80007310:	fe010113          	addi	sp,sp,-32
    80007314:	00813823          	sd	s0,16(sp)
    80007318:	00113c23          	sd	ra,24(sp)
    8000731c:	00913423          	sd	s1,8(sp)
    80007320:	02010413          	addi	s0,sp,32
    80007324:	03451793          	slli	a5,a0,0x34
    80007328:	04079c63          	bnez	a5,80007380 <kfree+0x70>
    8000732c:	00004797          	auipc	a5,0x4
    80007330:	41478793          	addi	a5,a5,1044 # 8000b740 <end>
    80007334:	00050493          	mv	s1,a0
    80007338:	04f56463          	bltu	a0,a5,80007380 <kfree+0x70>
    8000733c:	01100793          	li	a5,17
    80007340:	01b79793          	slli	a5,a5,0x1b
    80007344:	02f57e63          	bgeu	a0,a5,80007380 <kfree+0x70>
    80007348:	00001637          	lui	a2,0x1
    8000734c:	00100593          	li	a1,1
    80007350:	00000097          	auipc	ra,0x0
    80007354:	478080e7          	jalr	1144(ra) # 800077c8 <__memset>
    80007358:	00003797          	auipc	a5,0x3
    8000735c:	0f878793          	addi	a5,a5,248 # 8000a450 <kmem>
    80007360:	0007b703          	ld	a4,0(a5)
    80007364:	01813083          	ld	ra,24(sp)
    80007368:	01013403          	ld	s0,16(sp)
    8000736c:	00e4b023          	sd	a4,0(s1)
    80007370:	0097b023          	sd	s1,0(a5)
    80007374:	00813483          	ld	s1,8(sp)
    80007378:	02010113          	addi	sp,sp,32
    8000737c:	00008067          	ret
    80007380:	00001517          	auipc	a0,0x1
    80007384:	36050513          	addi	a0,a0,864 # 800086e0 <digits+0x18>
    80007388:	fffff097          	auipc	ra,0xfffff
    8000738c:	354080e7          	jalr	852(ra) # 800066dc <panic>

0000000080007390 <kalloc>:
    80007390:	fe010113          	addi	sp,sp,-32
    80007394:	00813823          	sd	s0,16(sp)
    80007398:	00913423          	sd	s1,8(sp)
    8000739c:	00113c23          	sd	ra,24(sp)
    800073a0:	02010413          	addi	s0,sp,32
    800073a4:	00003797          	auipc	a5,0x3
    800073a8:	0ac78793          	addi	a5,a5,172 # 8000a450 <kmem>
    800073ac:	0007b483          	ld	s1,0(a5)
    800073b0:	02048063          	beqz	s1,800073d0 <kalloc+0x40>
    800073b4:	0004b703          	ld	a4,0(s1)
    800073b8:	00001637          	lui	a2,0x1
    800073bc:	00500593          	li	a1,5
    800073c0:	00048513          	mv	a0,s1
    800073c4:	00e7b023          	sd	a4,0(a5)
    800073c8:	00000097          	auipc	ra,0x0
    800073cc:	400080e7          	jalr	1024(ra) # 800077c8 <__memset>
    800073d0:	01813083          	ld	ra,24(sp)
    800073d4:	01013403          	ld	s0,16(sp)
    800073d8:	00048513          	mv	a0,s1
    800073dc:	00813483          	ld	s1,8(sp)
    800073e0:	02010113          	addi	sp,sp,32
    800073e4:	00008067          	ret

00000000800073e8 <initlock>:
    800073e8:	ff010113          	addi	sp,sp,-16
    800073ec:	00813423          	sd	s0,8(sp)
    800073f0:	01010413          	addi	s0,sp,16
    800073f4:	00813403          	ld	s0,8(sp)
    800073f8:	00b53423          	sd	a1,8(a0)
    800073fc:	00052023          	sw	zero,0(a0)
    80007400:	00053823          	sd	zero,16(a0)
    80007404:	01010113          	addi	sp,sp,16
    80007408:	00008067          	ret

000000008000740c <acquire>:
    8000740c:	fe010113          	addi	sp,sp,-32
    80007410:	00813823          	sd	s0,16(sp)
    80007414:	00913423          	sd	s1,8(sp)
    80007418:	00113c23          	sd	ra,24(sp)
    8000741c:	01213023          	sd	s2,0(sp)
    80007420:	02010413          	addi	s0,sp,32
    80007424:	00050493          	mv	s1,a0
    80007428:	10002973          	csrr	s2,sstatus
    8000742c:	100027f3          	csrr	a5,sstatus
    80007430:	ffd7f793          	andi	a5,a5,-3
    80007434:	10079073          	csrw	sstatus,a5
    80007438:	fffff097          	auipc	ra,0xfffff
    8000743c:	8e8080e7          	jalr	-1816(ra) # 80005d20 <mycpu>
    80007440:	07852783          	lw	a5,120(a0)
    80007444:	06078e63          	beqz	a5,800074c0 <acquire+0xb4>
    80007448:	fffff097          	auipc	ra,0xfffff
    8000744c:	8d8080e7          	jalr	-1832(ra) # 80005d20 <mycpu>
    80007450:	07852783          	lw	a5,120(a0)
    80007454:	0004a703          	lw	a4,0(s1)
    80007458:	0017879b          	addiw	a5,a5,1
    8000745c:	06f52c23          	sw	a5,120(a0)
    80007460:	04071063          	bnez	a4,800074a0 <acquire+0x94>
    80007464:	00100713          	li	a4,1
    80007468:	00070793          	mv	a5,a4
    8000746c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007470:	0007879b          	sext.w	a5,a5
    80007474:	fe079ae3          	bnez	a5,80007468 <acquire+0x5c>
    80007478:	0ff0000f          	fence
    8000747c:	fffff097          	auipc	ra,0xfffff
    80007480:	8a4080e7          	jalr	-1884(ra) # 80005d20 <mycpu>
    80007484:	01813083          	ld	ra,24(sp)
    80007488:	01013403          	ld	s0,16(sp)
    8000748c:	00a4b823          	sd	a0,16(s1)
    80007490:	00013903          	ld	s2,0(sp)
    80007494:	00813483          	ld	s1,8(sp)
    80007498:	02010113          	addi	sp,sp,32
    8000749c:	00008067          	ret
    800074a0:	0104b903          	ld	s2,16(s1)
    800074a4:	fffff097          	auipc	ra,0xfffff
    800074a8:	87c080e7          	jalr	-1924(ra) # 80005d20 <mycpu>
    800074ac:	faa91ce3          	bne	s2,a0,80007464 <acquire+0x58>
    800074b0:	00001517          	auipc	a0,0x1
    800074b4:	23850513          	addi	a0,a0,568 # 800086e8 <digits+0x20>
    800074b8:	fffff097          	auipc	ra,0xfffff
    800074bc:	224080e7          	jalr	548(ra) # 800066dc <panic>
    800074c0:	00195913          	srli	s2,s2,0x1
    800074c4:	fffff097          	auipc	ra,0xfffff
    800074c8:	85c080e7          	jalr	-1956(ra) # 80005d20 <mycpu>
    800074cc:	00197913          	andi	s2,s2,1
    800074d0:	07252e23          	sw	s2,124(a0)
    800074d4:	f75ff06f          	j	80007448 <acquire+0x3c>

00000000800074d8 <release>:
    800074d8:	fe010113          	addi	sp,sp,-32
    800074dc:	00813823          	sd	s0,16(sp)
    800074e0:	00113c23          	sd	ra,24(sp)
    800074e4:	00913423          	sd	s1,8(sp)
    800074e8:	01213023          	sd	s2,0(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	00052783          	lw	a5,0(a0)
    800074f4:	00079a63          	bnez	a5,80007508 <release+0x30>
    800074f8:	00001517          	auipc	a0,0x1
    800074fc:	1f850513          	addi	a0,a0,504 # 800086f0 <digits+0x28>
    80007500:	fffff097          	auipc	ra,0xfffff
    80007504:	1dc080e7          	jalr	476(ra) # 800066dc <panic>
    80007508:	01053903          	ld	s2,16(a0)
    8000750c:	00050493          	mv	s1,a0
    80007510:	fffff097          	auipc	ra,0xfffff
    80007514:	810080e7          	jalr	-2032(ra) # 80005d20 <mycpu>
    80007518:	fea910e3          	bne	s2,a0,800074f8 <release+0x20>
    8000751c:	0004b823          	sd	zero,16(s1)
    80007520:	0ff0000f          	fence
    80007524:	0f50000f          	fence	iorw,ow
    80007528:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000752c:	ffffe097          	auipc	ra,0xffffe
    80007530:	7f4080e7          	jalr	2036(ra) # 80005d20 <mycpu>
    80007534:	100027f3          	csrr	a5,sstatus
    80007538:	0027f793          	andi	a5,a5,2
    8000753c:	04079a63          	bnez	a5,80007590 <release+0xb8>
    80007540:	07852783          	lw	a5,120(a0)
    80007544:	02f05e63          	blez	a5,80007580 <release+0xa8>
    80007548:	fff7871b          	addiw	a4,a5,-1
    8000754c:	06e52c23          	sw	a4,120(a0)
    80007550:	00071c63          	bnez	a4,80007568 <release+0x90>
    80007554:	07c52783          	lw	a5,124(a0)
    80007558:	00078863          	beqz	a5,80007568 <release+0x90>
    8000755c:	100027f3          	csrr	a5,sstatus
    80007560:	0027e793          	ori	a5,a5,2
    80007564:	10079073          	csrw	sstatus,a5
    80007568:	01813083          	ld	ra,24(sp)
    8000756c:	01013403          	ld	s0,16(sp)
    80007570:	00813483          	ld	s1,8(sp)
    80007574:	00013903          	ld	s2,0(sp)
    80007578:	02010113          	addi	sp,sp,32
    8000757c:	00008067          	ret
    80007580:	00001517          	auipc	a0,0x1
    80007584:	19050513          	addi	a0,a0,400 # 80008710 <digits+0x48>
    80007588:	fffff097          	auipc	ra,0xfffff
    8000758c:	154080e7          	jalr	340(ra) # 800066dc <panic>
    80007590:	00001517          	auipc	a0,0x1
    80007594:	16850513          	addi	a0,a0,360 # 800086f8 <digits+0x30>
    80007598:	fffff097          	auipc	ra,0xfffff
    8000759c:	144080e7          	jalr	324(ra) # 800066dc <panic>

00000000800075a0 <holding>:
    800075a0:	00052783          	lw	a5,0(a0)
    800075a4:	00079663          	bnez	a5,800075b0 <holding+0x10>
    800075a8:	00000513          	li	a0,0
    800075ac:	00008067          	ret
    800075b0:	fe010113          	addi	sp,sp,-32
    800075b4:	00813823          	sd	s0,16(sp)
    800075b8:	00913423          	sd	s1,8(sp)
    800075bc:	00113c23          	sd	ra,24(sp)
    800075c0:	02010413          	addi	s0,sp,32
    800075c4:	01053483          	ld	s1,16(a0)
    800075c8:	ffffe097          	auipc	ra,0xffffe
    800075cc:	758080e7          	jalr	1880(ra) # 80005d20 <mycpu>
    800075d0:	01813083          	ld	ra,24(sp)
    800075d4:	01013403          	ld	s0,16(sp)
    800075d8:	40a48533          	sub	a0,s1,a0
    800075dc:	00153513          	seqz	a0,a0
    800075e0:	00813483          	ld	s1,8(sp)
    800075e4:	02010113          	addi	sp,sp,32
    800075e8:	00008067          	ret

00000000800075ec <push_off>:
    800075ec:	fe010113          	addi	sp,sp,-32
    800075f0:	00813823          	sd	s0,16(sp)
    800075f4:	00113c23          	sd	ra,24(sp)
    800075f8:	00913423          	sd	s1,8(sp)
    800075fc:	02010413          	addi	s0,sp,32
    80007600:	100024f3          	csrr	s1,sstatus
    80007604:	100027f3          	csrr	a5,sstatus
    80007608:	ffd7f793          	andi	a5,a5,-3
    8000760c:	10079073          	csrw	sstatus,a5
    80007610:	ffffe097          	auipc	ra,0xffffe
    80007614:	710080e7          	jalr	1808(ra) # 80005d20 <mycpu>
    80007618:	07852783          	lw	a5,120(a0)
    8000761c:	02078663          	beqz	a5,80007648 <push_off+0x5c>
    80007620:	ffffe097          	auipc	ra,0xffffe
    80007624:	700080e7          	jalr	1792(ra) # 80005d20 <mycpu>
    80007628:	07852783          	lw	a5,120(a0)
    8000762c:	01813083          	ld	ra,24(sp)
    80007630:	01013403          	ld	s0,16(sp)
    80007634:	0017879b          	addiw	a5,a5,1
    80007638:	06f52c23          	sw	a5,120(a0)
    8000763c:	00813483          	ld	s1,8(sp)
    80007640:	02010113          	addi	sp,sp,32
    80007644:	00008067          	ret
    80007648:	0014d493          	srli	s1,s1,0x1
    8000764c:	ffffe097          	auipc	ra,0xffffe
    80007650:	6d4080e7          	jalr	1748(ra) # 80005d20 <mycpu>
    80007654:	0014f493          	andi	s1,s1,1
    80007658:	06952e23          	sw	s1,124(a0)
    8000765c:	fc5ff06f          	j	80007620 <push_off+0x34>

0000000080007660 <pop_off>:
    80007660:	ff010113          	addi	sp,sp,-16
    80007664:	00813023          	sd	s0,0(sp)
    80007668:	00113423          	sd	ra,8(sp)
    8000766c:	01010413          	addi	s0,sp,16
    80007670:	ffffe097          	auipc	ra,0xffffe
    80007674:	6b0080e7          	jalr	1712(ra) # 80005d20 <mycpu>
    80007678:	100027f3          	csrr	a5,sstatus
    8000767c:	0027f793          	andi	a5,a5,2
    80007680:	04079663          	bnez	a5,800076cc <pop_off+0x6c>
    80007684:	07852783          	lw	a5,120(a0)
    80007688:	02f05a63          	blez	a5,800076bc <pop_off+0x5c>
    8000768c:	fff7871b          	addiw	a4,a5,-1
    80007690:	06e52c23          	sw	a4,120(a0)
    80007694:	00071c63          	bnez	a4,800076ac <pop_off+0x4c>
    80007698:	07c52783          	lw	a5,124(a0)
    8000769c:	00078863          	beqz	a5,800076ac <pop_off+0x4c>
    800076a0:	100027f3          	csrr	a5,sstatus
    800076a4:	0027e793          	ori	a5,a5,2
    800076a8:	10079073          	csrw	sstatus,a5
    800076ac:	00813083          	ld	ra,8(sp)
    800076b0:	00013403          	ld	s0,0(sp)
    800076b4:	01010113          	addi	sp,sp,16
    800076b8:	00008067          	ret
    800076bc:	00001517          	auipc	a0,0x1
    800076c0:	05450513          	addi	a0,a0,84 # 80008710 <digits+0x48>
    800076c4:	fffff097          	auipc	ra,0xfffff
    800076c8:	018080e7          	jalr	24(ra) # 800066dc <panic>
    800076cc:	00001517          	auipc	a0,0x1
    800076d0:	02c50513          	addi	a0,a0,44 # 800086f8 <digits+0x30>
    800076d4:	fffff097          	auipc	ra,0xfffff
    800076d8:	008080e7          	jalr	8(ra) # 800066dc <panic>

00000000800076dc <push_on>:
    800076dc:	fe010113          	addi	sp,sp,-32
    800076e0:	00813823          	sd	s0,16(sp)
    800076e4:	00113c23          	sd	ra,24(sp)
    800076e8:	00913423          	sd	s1,8(sp)
    800076ec:	02010413          	addi	s0,sp,32
    800076f0:	100024f3          	csrr	s1,sstatus
    800076f4:	100027f3          	csrr	a5,sstatus
    800076f8:	0027e793          	ori	a5,a5,2
    800076fc:	10079073          	csrw	sstatus,a5
    80007700:	ffffe097          	auipc	ra,0xffffe
    80007704:	620080e7          	jalr	1568(ra) # 80005d20 <mycpu>
    80007708:	07852783          	lw	a5,120(a0)
    8000770c:	02078663          	beqz	a5,80007738 <push_on+0x5c>
    80007710:	ffffe097          	auipc	ra,0xffffe
    80007714:	610080e7          	jalr	1552(ra) # 80005d20 <mycpu>
    80007718:	07852783          	lw	a5,120(a0)
    8000771c:	01813083          	ld	ra,24(sp)
    80007720:	01013403          	ld	s0,16(sp)
    80007724:	0017879b          	addiw	a5,a5,1
    80007728:	06f52c23          	sw	a5,120(a0)
    8000772c:	00813483          	ld	s1,8(sp)
    80007730:	02010113          	addi	sp,sp,32
    80007734:	00008067          	ret
    80007738:	0014d493          	srli	s1,s1,0x1
    8000773c:	ffffe097          	auipc	ra,0xffffe
    80007740:	5e4080e7          	jalr	1508(ra) # 80005d20 <mycpu>
    80007744:	0014f493          	andi	s1,s1,1
    80007748:	06952e23          	sw	s1,124(a0)
    8000774c:	fc5ff06f          	j	80007710 <push_on+0x34>

0000000080007750 <pop_on>:
    80007750:	ff010113          	addi	sp,sp,-16
    80007754:	00813023          	sd	s0,0(sp)
    80007758:	00113423          	sd	ra,8(sp)
    8000775c:	01010413          	addi	s0,sp,16
    80007760:	ffffe097          	auipc	ra,0xffffe
    80007764:	5c0080e7          	jalr	1472(ra) # 80005d20 <mycpu>
    80007768:	100027f3          	csrr	a5,sstatus
    8000776c:	0027f793          	andi	a5,a5,2
    80007770:	04078463          	beqz	a5,800077b8 <pop_on+0x68>
    80007774:	07852783          	lw	a5,120(a0)
    80007778:	02f05863          	blez	a5,800077a8 <pop_on+0x58>
    8000777c:	fff7879b          	addiw	a5,a5,-1
    80007780:	06f52c23          	sw	a5,120(a0)
    80007784:	07853783          	ld	a5,120(a0)
    80007788:	00079863          	bnez	a5,80007798 <pop_on+0x48>
    8000778c:	100027f3          	csrr	a5,sstatus
    80007790:	ffd7f793          	andi	a5,a5,-3
    80007794:	10079073          	csrw	sstatus,a5
    80007798:	00813083          	ld	ra,8(sp)
    8000779c:	00013403          	ld	s0,0(sp)
    800077a0:	01010113          	addi	sp,sp,16
    800077a4:	00008067          	ret
    800077a8:	00001517          	auipc	a0,0x1
    800077ac:	f9050513          	addi	a0,a0,-112 # 80008738 <digits+0x70>
    800077b0:	fffff097          	auipc	ra,0xfffff
    800077b4:	f2c080e7          	jalr	-212(ra) # 800066dc <panic>
    800077b8:	00001517          	auipc	a0,0x1
    800077bc:	f6050513          	addi	a0,a0,-160 # 80008718 <digits+0x50>
    800077c0:	fffff097          	auipc	ra,0xfffff
    800077c4:	f1c080e7          	jalr	-228(ra) # 800066dc <panic>

00000000800077c8 <__memset>:
    800077c8:	ff010113          	addi	sp,sp,-16
    800077cc:	00813423          	sd	s0,8(sp)
    800077d0:	01010413          	addi	s0,sp,16
    800077d4:	1a060e63          	beqz	a2,80007990 <__memset+0x1c8>
    800077d8:	40a007b3          	neg	a5,a0
    800077dc:	0077f793          	andi	a5,a5,7
    800077e0:	00778693          	addi	a3,a5,7
    800077e4:	00b00813          	li	a6,11
    800077e8:	0ff5f593          	andi	a1,a1,255
    800077ec:	fff6071b          	addiw	a4,a2,-1
    800077f0:	1b06e663          	bltu	a3,a6,8000799c <__memset+0x1d4>
    800077f4:	1cd76463          	bltu	a4,a3,800079bc <__memset+0x1f4>
    800077f8:	1a078e63          	beqz	a5,800079b4 <__memset+0x1ec>
    800077fc:	00b50023          	sb	a1,0(a0)
    80007800:	00100713          	li	a4,1
    80007804:	1ae78463          	beq	a5,a4,800079ac <__memset+0x1e4>
    80007808:	00b500a3          	sb	a1,1(a0)
    8000780c:	00200713          	li	a4,2
    80007810:	1ae78a63          	beq	a5,a4,800079c4 <__memset+0x1fc>
    80007814:	00b50123          	sb	a1,2(a0)
    80007818:	00300713          	li	a4,3
    8000781c:	18e78463          	beq	a5,a4,800079a4 <__memset+0x1dc>
    80007820:	00b501a3          	sb	a1,3(a0)
    80007824:	00400713          	li	a4,4
    80007828:	1ae78263          	beq	a5,a4,800079cc <__memset+0x204>
    8000782c:	00b50223          	sb	a1,4(a0)
    80007830:	00500713          	li	a4,5
    80007834:	1ae78063          	beq	a5,a4,800079d4 <__memset+0x20c>
    80007838:	00b502a3          	sb	a1,5(a0)
    8000783c:	00700713          	li	a4,7
    80007840:	18e79e63          	bne	a5,a4,800079dc <__memset+0x214>
    80007844:	00b50323          	sb	a1,6(a0)
    80007848:	00700e93          	li	t4,7
    8000784c:	00859713          	slli	a4,a1,0x8
    80007850:	00e5e733          	or	a4,a1,a4
    80007854:	01059e13          	slli	t3,a1,0x10
    80007858:	01c76e33          	or	t3,a4,t3
    8000785c:	01859313          	slli	t1,a1,0x18
    80007860:	006e6333          	or	t1,t3,t1
    80007864:	02059893          	slli	a7,a1,0x20
    80007868:	40f60e3b          	subw	t3,a2,a5
    8000786c:	011368b3          	or	a7,t1,a7
    80007870:	02859813          	slli	a6,a1,0x28
    80007874:	0108e833          	or	a6,a7,a6
    80007878:	03059693          	slli	a3,a1,0x30
    8000787c:	003e589b          	srliw	a7,t3,0x3
    80007880:	00d866b3          	or	a3,a6,a3
    80007884:	03859713          	slli	a4,a1,0x38
    80007888:	00389813          	slli	a6,a7,0x3
    8000788c:	00f507b3          	add	a5,a0,a5
    80007890:	00e6e733          	or	a4,a3,a4
    80007894:	000e089b          	sext.w	a7,t3
    80007898:	00f806b3          	add	a3,a6,a5
    8000789c:	00e7b023          	sd	a4,0(a5)
    800078a0:	00878793          	addi	a5,a5,8
    800078a4:	fed79ce3          	bne	a5,a3,8000789c <__memset+0xd4>
    800078a8:	ff8e7793          	andi	a5,t3,-8
    800078ac:	0007871b          	sext.w	a4,a5
    800078b0:	01d787bb          	addw	a5,a5,t4
    800078b4:	0ce88e63          	beq	a7,a4,80007990 <__memset+0x1c8>
    800078b8:	00f50733          	add	a4,a0,a5
    800078bc:	00b70023          	sb	a1,0(a4)
    800078c0:	0017871b          	addiw	a4,a5,1
    800078c4:	0cc77663          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    800078c8:	00e50733          	add	a4,a0,a4
    800078cc:	00b70023          	sb	a1,0(a4)
    800078d0:	0027871b          	addiw	a4,a5,2
    800078d4:	0ac77e63          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    800078d8:	00e50733          	add	a4,a0,a4
    800078dc:	00b70023          	sb	a1,0(a4)
    800078e0:	0037871b          	addiw	a4,a5,3
    800078e4:	0ac77663          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    800078e8:	00e50733          	add	a4,a0,a4
    800078ec:	00b70023          	sb	a1,0(a4)
    800078f0:	0047871b          	addiw	a4,a5,4
    800078f4:	08c77e63          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    800078f8:	00e50733          	add	a4,a0,a4
    800078fc:	00b70023          	sb	a1,0(a4)
    80007900:	0057871b          	addiw	a4,a5,5
    80007904:	08c77663          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007908:	00e50733          	add	a4,a0,a4
    8000790c:	00b70023          	sb	a1,0(a4)
    80007910:	0067871b          	addiw	a4,a5,6
    80007914:	06c77e63          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007918:	00e50733          	add	a4,a0,a4
    8000791c:	00b70023          	sb	a1,0(a4)
    80007920:	0077871b          	addiw	a4,a5,7
    80007924:	06c77663          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007928:	00e50733          	add	a4,a0,a4
    8000792c:	00b70023          	sb	a1,0(a4)
    80007930:	0087871b          	addiw	a4,a5,8
    80007934:	04c77e63          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007938:	00e50733          	add	a4,a0,a4
    8000793c:	00b70023          	sb	a1,0(a4)
    80007940:	0097871b          	addiw	a4,a5,9
    80007944:	04c77663          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007948:	00e50733          	add	a4,a0,a4
    8000794c:	00b70023          	sb	a1,0(a4)
    80007950:	00a7871b          	addiw	a4,a5,10
    80007954:	02c77e63          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007958:	00e50733          	add	a4,a0,a4
    8000795c:	00b70023          	sb	a1,0(a4)
    80007960:	00b7871b          	addiw	a4,a5,11
    80007964:	02c77663          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007968:	00e50733          	add	a4,a0,a4
    8000796c:	00b70023          	sb	a1,0(a4)
    80007970:	00c7871b          	addiw	a4,a5,12
    80007974:	00c77e63          	bgeu	a4,a2,80007990 <__memset+0x1c8>
    80007978:	00e50733          	add	a4,a0,a4
    8000797c:	00b70023          	sb	a1,0(a4)
    80007980:	00d7879b          	addiw	a5,a5,13
    80007984:	00c7f663          	bgeu	a5,a2,80007990 <__memset+0x1c8>
    80007988:	00f507b3          	add	a5,a0,a5
    8000798c:	00b78023          	sb	a1,0(a5)
    80007990:	00813403          	ld	s0,8(sp)
    80007994:	01010113          	addi	sp,sp,16
    80007998:	00008067          	ret
    8000799c:	00b00693          	li	a3,11
    800079a0:	e55ff06f          	j	800077f4 <__memset+0x2c>
    800079a4:	00300e93          	li	t4,3
    800079a8:	ea5ff06f          	j	8000784c <__memset+0x84>
    800079ac:	00100e93          	li	t4,1
    800079b0:	e9dff06f          	j	8000784c <__memset+0x84>
    800079b4:	00000e93          	li	t4,0
    800079b8:	e95ff06f          	j	8000784c <__memset+0x84>
    800079bc:	00000793          	li	a5,0
    800079c0:	ef9ff06f          	j	800078b8 <__memset+0xf0>
    800079c4:	00200e93          	li	t4,2
    800079c8:	e85ff06f          	j	8000784c <__memset+0x84>
    800079cc:	00400e93          	li	t4,4
    800079d0:	e7dff06f          	j	8000784c <__memset+0x84>
    800079d4:	00500e93          	li	t4,5
    800079d8:	e75ff06f          	j	8000784c <__memset+0x84>
    800079dc:	00600e93          	li	t4,6
    800079e0:	e6dff06f          	j	8000784c <__memset+0x84>

00000000800079e4 <__memmove>:
    800079e4:	ff010113          	addi	sp,sp,-16
    800079e8:	00813423          	sd	s0,8(sp)
    800079ec:	01010413          	addi	s0,sp,16
    800079f0:	0e060863          	beqz	a2,80007ae0 <__memmove+0xfc>
    800079f4:	fff6069b          	addiw	a3,a2,-1
    800079f8:	0006881b          	sext.w	a6,a3
    800079fc:	0ea5e863          	bltu	a1,a0,80007aec <__memmove+0x108>
    80007a00:	00758713          	addi	a4,a1,7
    80007a04:	00a5e7b3          	or	a5,a1,a0
    80007a08:	40a70733          	sub	a4,a4,a0
    80007a0c:	0077f793          	andi	a5,a5,7
    80007a10:	00f73713          	sltiu	a4,a4,15
    80007a14:	00174713          	xori	a4,a4,1
    80007a18:	0017b793          	seqz	a5,a5
    80007a1c:	00e7f7b3          	and	a5,a5,a4
    80007a20:	10078863          	beqz	a5,80007b30 <__memmove+0x14c>
    80007a24:	00900793          	li	a5,9
    80007a28:	1107f463          	bgeu	a5,a6,80007b30 <__memmove+0x14c>
    80007a2c:	0036581b          	srliw	a6,a2,0x3
    80007a30:	fff8081b          	addiw	a6,a6,-1
    80007a34:	02081813          	slli	a6,a6,0x20
    80007a38:	01d85893          	srli	a7,a6,0x1d
    80007a3c:	00858813          	addi	a6,a1,8
    80007a40:	00058793          	mv	a5,a1
    80007a44:	00050713          	mv	a4,a0
    80007a48:	01088833          	add	a6,a7,a6
    80007a4c:	0007b883          	ld	a7,0(a5)
    80007a50:	00878793          	addi	a5,a5,8
    80007a54:	00870713          	addi	a4,a4,8
    80007a58:	ff173c23          	sd	a7,-8(a4)
    80007a5c:	ff0798e3          	bne	a5,a6,80007a4c <__memmove+0x68>
    80007a60:	ff867713          	andi	a4,a2,-8
    80007a64:	02071793          	slli	a5,a4,0x20
    80007a68:	0207d793          	srli	a5,a5,0x20
    80007a6c:	00f585b3          	add	a1,a1,a5
    80007a70:	40e686bb          	subw	a3,a3,a4
    80007a74:	00f507b3          	add	a5,a0,a5
    80007a78:	06e60463          	beq	a2,a4,80007ae0 <__memmove+0xfc>
    80007a7c:	0005c703          	lbu	a4,0(a1)
    80007a80:	00e78023          	sb	a4,0(a5)
    80007a84:	04068e63          	beqz	a3,80007ae0 <__memmove+0xfc>
    80007a88:	0015c603          	lbu	a2,1(a1)
    80007a8c:	00100713          	li	a4,1
    80007a90:	00c780a3          	sb	a2,1(a5)
    80007a94:	04e68663          	beq	a3,a4,80007ae0 <__memmove+0xfc>
    80007a98:	0025c603          	lbu	a2,2(a1)
    80007a9c:	00200713          	li	a4,2
    80007aa0:	00c78123          	sb	a2,2(a5)
    80007aa4:	02e68e63          	beq	a3,a4,80007ae0 <__memmove+0xfc>
    80007aa8:	0035c603          	lbu	a2,3(a1)
    80007aac:	00300713          	li	a4,3
    80007ab0:	00c781a3          	sb	a2,3(a5)
    80007ab4:	02e68663          	beq	a3,a4,80007ae0 <__memmove+0xfc>
    80007ab8:	0045c603          	lbu	a2,4(a1)
    80007abc:	00400713          	li	a4,4
    80007ac0:	00c78223          	sb	a2,4(a5)
    80007ac4:	00e68e63          	beq	a3,a4,80007ae0 <__memmove+0xfc>
    80007ac8:	0055c603          	lbu	a2,5(a1)
    80007acc:	00500713          	li	a4,5
    80007ad0:	00c782a3          	sb	a2,5(a5)
    80007ad4:	00e68663          	beq	a3,a4,80007ae0 <__memmove+0xfc>
    80007ad8:	0065c703          	lbu	a4,6(a1)
    80007adc:	00e78323          	sb	a4,6(a5)
    80007ae0:	00813403          	ld	s0,8(sp)
    80007ae4:	01010113          	addi	sp,sp,16
    80007ae8:	00008067          	ret
    80007aec:	02061713          	slli	a4,a2,0x20
    80007af0:	02075713          	srli	a4,a4,0x20
    80007af4:	00e587b3          	add	a5,a1,a4
    80007af8:	f0f574e3          	bgeu	a0,a5,80007a00 <__memmove+0x1c>
    80007afc:	02069613          	slli	a2,a3,0x20
    80007b00:	02065613          	srli	a2,a2,0x20
    80007b04:	fff64613          	not	a2,a2
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00c78633          	add	a2,a5,a2
    80007b10:	fff7c683          	lbu	a3,-1(a5)
    80007b14:	fff78793          	addi	a5,a5,-1
    80007b18:	fff70713          	addi	a4,a4,-1
    80007b1c:	00d70023          	sb	a3,0(a4)
    80007b20:	fec798e3          	bne	a5,a2,80007b10 <__memmove+0x12c>
    80007b24:	00813403          	ld	s0,8(sp)
    80007b28:	01010113          	addi	sp,sp,16
    80007b2c:	00008067          	ret
    80007b30:	02069713          	slli	a4,a3,0x20
    80007b34:	02075713          	srli	a4,a4,0x20
    80007b38:	00170713          	addi	a4,a4,1
    80007b3c:	00e50733          	add	a4,a0,a4
    80007b40:	00050793          	mv	a5,a0
    80007b44:	0005c683          	lbu	a3,0(a1)
    80007b48:	00178793          	addi	a5,a5,1
    80007b4c:	00158593          	addi	a1,a1,1
    80007b50:	fed78fa3          	sb	a3,-1(a5)
    80007b54:	fee798e3          	bne	a5,a4,80007b44 <__memmove+0x160>
    80007b58:	f89ff06f          	j	80007ae0 <__memmove+0xfc>

0000000080007b5c <__putc>:
    80007b5c:	fe010113          	addi	sp,sp,-32
    80007b60:	00813823          	sd	s0,16(sp)
    80007b64:	00113c23          	sd	ra,24(sp)
    80007b68:	02010413          	addi	s0,sp,32
    80007b6c:	00050793          	mv	a5,a0
    80007b70:	fef40593          	addi	a1,s0,-17
    80007b74:	00100613          	li	a2,1
    80007b78:	00000513          	li	a0,0
    80007b7c:	fef407a3          	sb	a5,-17(s0)
    80007b80:	fffff097          	auipc	ra,0xfffff
    80007b84:	b3c080e7          	jalr	-1220(ra) # 800066bc <console_write>
    80007b88:	01813083          	ld	ra,24(sp)
    80007b8c:	01013403          	ld	s0,16(sp)
    80007b90:	02010113          	addi	sp,sp,32
    80007b94:	00008067          	ret

0000000080007b98 <__getc>:
    80007b98:	fe010113          	addi	sp,sp,-32
    80007b9c:	00813823          	sd	s0,16(sp)
    80007ba0:	00113c23          	sd	ra,24(sp)
    80007ba4:	02010413          	addi	s0,sp,32
    80007ba8:	fe840593          	addi	a1,s0,-24
    80007bac:	00100613          	li	a2,1
    80007bb0:	00000513          	li	a0,0
    80007bb4:	fffff097          	auipc	ra,0xfffff
    80007bb8:	ae8080e7          	jalr	-1304(ra) # 8000669c <console_read>
    80007bbc:	fe844503          	lbu	a0,-24(s0)
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	02010113          	addi	sp,sp,32
    80007bcc:	00008067          	ret

0000000080007bd0 <console_handler>:
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00113c23          	sd	ra,24(sp)
    80007bdc:	00913423          	sd	s1,8(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	14202773          	csrr	a4,scause
    80007be8:	100027f3          	csrr	a5,sstatus
    80007bec:	0027f793          	andi	a5,a5,2
    80007bf0:	06079e63          	bnez	a5,80007c6c <console_handler+0x9c>
    80007bf4:	00074c63          	bltz	a4,80007c0c <console_handler+0x3c>
    80007bf8:	01813083          	ld	ra,24(sp)
    80007bfc:	01013403          	ld	s0,16(sp)
    80007c00:	00813483          	ld	s1,8(sp)
    80007c04:	02010113          	addi	sp,sp,32
    80007c08:	00008067          	ret
    80007c0c:	0ff77713          	andi	a4,a4,255
    80007c10:	00900793          	li	a5,9
    80007c14:	fef712e3          	bne	a4,a5,80007bf8 <console_handler+0x28>
    80007c18:	ffffe097          	auipc	ra,0xffffe
    80007c1c:	6dc080e7          	jalr	1756(ra) # 800062f4 <plic_claim>
    80007c20:	00a00793          	li	a5,10
    80007c24:	00050493          	mv	s1,a0
    80007c28:	02f50c63          	beq	a0,a5,80007c60 <console_handler+0x90>
    80007c2c:	fc0506e3          	beqz	a0,80007bf8 <console_handler+0x28>
    80007c30:	00050593          	mv	a1,a0
    80007c34:	00001517          	auipc	a0,0x1
    80007c38:	a0c50513          	addi	a0,a0,-1524 # 80008640 <CONSOLE_STATUS+0x630>
    80007c3c:	fffff097          	auipc	ra,0xfffff
    80007c40:	afc080e7          	jalr	-1284(ra) # 80006738 <__printf>
    80007c44:	01013403          	ld	s0,16(sp)
    80007c48:	01813083          	ld	ra,24(sp)
    80007c4c:	00048513          	mv	a0,s1
    80007c50:	00813483          	ld	s1,8(sp)
    80007c54:	02010113          	addi	sp,sp,32
    80007c58:	ffffe317          	auipc	t1,0xffffe
    80007c5c:	6d430067          	jr	1748(t1) # 8000632c <plic_complete>
    80007c60:	fffff097          	auipc	ra,0xfffff
    80007c64:	3e0080e7          	jalr	992(ra) # 80007040 <uartintr>
    80007c68:	fddff06f          	j	80007c44 <console_handler+0x74>
    80007c6c:	00001517          	auipc	a0,0x1
    80007c70:	ad450513          	addi	a0,a0,-1324 # 80008740 <digits+0x78>
    80007c74:	fffff097          	auipc	ra,0xfffff
    80007c78:	a68080e7          	jalr	-1432(ra) # 800066dc <panic>
	...
