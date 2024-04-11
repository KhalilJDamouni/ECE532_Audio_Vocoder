#define MEMSIZE 640/4
#define coord(x, y) ((x) + 640*(y))

volatile u32 membase = XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR;
volatile u32* membase_pointer = (u32*) XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR;
volatile u32 memmax = XPAR_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR;
volatile u32 mic_reg = XPAR_AXI_CHILD_V1_0_S00_A_0_BASEADDR;
volatile u32* axi_base =  (u32*) XPAR_AXI_CHILD_V1_0_S00_A_0_BASEADDR;
volatile u32* test = (u32*) XPAR_AXI_CHILD_V1_0_S00_A_0_BASEADDR;
volatile u32* iic_base = (u32*) XPAR_AXI_IIC_0_BASEADDR;


//Func Defs
void draw_pixel(int start_x, int start_y, int color);
void draw_pixel_color(int start_x, int start_y, int color);
void draw_dot_color(int start_x, int start_y, int color);
void print_option(int start_x, int start_y, int color);
void write_words();
void make_background();
void make_waveform_1_border();
void make_waveform_2_border();
void make_settings_border();
void write_domain_T();
void write_domain_F();
int is_number();


void write_A(int start_x, int start_y, int color);
void write_C(int start_x, int start_y, int color);
void write_D(int start_x, int start_y, int color);
void write_E(int start_x, int start_y, int color);
void write_F(int start_x, int start_y, int color);
void write_G(int start_x, int start_y, int color);
void write_I(int start_x, int start_y, int color);
void write_L(int start_x, int start_y, int color);
void write_M(int start_x, int start_y, int color);
void write_N(int start_x, int start_y, int color);
void write_O(int start_x, int start_y, int color);
void write_R(int start_x, int start_y, int color);
void write_S(int start_x, int start_y, int color);
void write_T(int start_x, int start_y, int color);
void write_U(int start_x, int start_y, int color);
void write_V(int start_x, int start_y, int color);

