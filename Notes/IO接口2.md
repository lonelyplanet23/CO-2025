# CPU 支持I/O

**类似于DM：Addr, Dout, Din**

+ **CPU不能单独** 为每一个设备提供数据/地址，否则使得CPU设计过于复杂

## Bridge 模块

+ 功能：完成地址、数据转换、控制信号CS产生
+ 结构
  + <img src="./assets/image-20251229141957285.png" alt="image-20251229141957285" style="zoom:50%;" />
+ 回顾：**地址图**

### Bridge 如何译码

+ 回顾如何判定地址在范围里，补充：**由于是32位二进制，对于任意地址范围来说每一位要么不变，要么只取0/1（在0-1范围浮动）**

**因此只需要找到不变的那几位判定是否相等**

+ 例子：0号设备的命中信号：`HitDEV0 = （Addr[31:8] == A00000);`

<img src="./assets/image-20251229142436688.png" alt="image-20251229142436688" style="zoom:50%;" />

### Bridge如何写入设备

+ 写数据直通设备
+ 每一个设备的写使能信号需要满足两个条件：CPU传来写使能信号，且地址命中
  `assign WeDEV0 = WeCPU & HitDEV0;`

### Bridge如何读数据

+ 硬件设计思路：每一个都要输出，再MUX选择出来

+ `assign PrRD=HitDEV0 ?DEV0_RD: HitDEV1 ?DEV1_RD: ... DEV3_RD;`

## CPU的改造

1. 数据存储器**DM的写使能信号**也需要判断地址范围是否命中DM
   +  `DM的实际写入信号= m_DMWr & HitDM`
      + 其中HitDM 同理Bridge译码。

2. DM读出数据- RF回写数据MUX需要增加一路，来判断来自DM还是来自设备

```verilog
MUXWD_Sel = load指令 & HitDM  ? DR@W  :
			load指令 & !HitDM ? DIn@W :
			cal指令           ? AO@W  :
			                   PC4@W
```









