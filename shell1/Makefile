
NAME=shell
OBJS=main.o uart.o led.o cmd.o strcmp.o delay.o pwm.o iic.o mma8653.o itoa.o

ELF=$(NAME).elf
BIN=$(NAME).bin

CC=arm-cortex_a9-linux-gnueabi-gcc
AS=arm-cortex_a9-linux-gnueabi-as
LD=arm-cortex_a9-linux-gnueabi-ld
OBJCOPY=arm-cortex_a9-linux-gnueabi-objcopy

CFLAGS=-nostdlib -Werror
LDFLAGS=-nostdlib -nostartfiles -T$(NAME).lds

deploy:$(BIN)
	cp $^ /tftpboot

$(BIN):$(ELF)
	$(OBJCOPY) -O binary $^ $@

$(ELF):$(OBJS)
	$(LD) $(LDFLAGS) $^ -o $@

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $^

.s.o:
	$(AS) -o $@ $^

clean:
	rm $(OBJS) $(ELF) $(BIN)
