.text

.pool
.set SEPROM_MAILBOX_BOOT, 0x1

.global _wait_for_boot

_wait_for_boot:
    ldr r2, [r0]
    cmp r2, #SEPROM_MAILBOX_BOOT
    bne _wait_for_boot

    b r1

