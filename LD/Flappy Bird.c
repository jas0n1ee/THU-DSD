/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>                     //sys funtion
#include "system.h"                     // sys description
#include "sys/alt_irq.h"                // sys interuption inc
#include "sys/alt_flash.h"              // sys flash inc
#include "altera_avalon_timer_regs.h"   // timer inc
#include "altera_avalon_pio_regs.h"     // io inc
#include "altera_avalon_uart_regs.h"    // uart inc

#define H_B 480                         //Background Height
#define W_B 640                         //Background Width
#define H_G 400                         //Ground Height
#define W_P 50                          //Pillar Width
#define H_H 100                         //Hole Height
#define I_P 100                         //Pillar Interval
#define Sh_step 5                       //Background Shift Step3
#define H_P_up 250                      //Pillar Height upper limit
#define H_P_low 50                      //Pillar Height lower limit
#define bird_size 10                    //Bird size
#define NO_3 ((NO_1 + 2) % 5)

struct Pillar
{
    /* data */
    int h;
    int w;
};

static void TimerInital(void);                              // timer interrupt initial
static void TimerIqrHandler(void *context,alt_u32 id);      // timer interrupt handler
static void KeyInital(void);                                // key button interrupt initial
void KeyIqrHandler(void* context, alt_u32 id);              // key button interrupt handler

void Init_Img (char** OutputImg)
{
    for (int col = 0; col < W_B; col++)
    {
        for (int row = 0; row < H_G; row++)
            OutputImg[row][col] = 255;
        for (row = H_G; row < H_B; row++)
            OutputImg[row][col] = 255;
    }
}

void Print_Bird(char** OutputImg, int bird_h)
{
    for (int h = bird_h - bird_size; h <= bird_h + bird_size; h++)
        for (int w = W_B/2 - bird_size; w = W_B/2 + bird_size; w++)
            OutputImg[h][w] = 128;
}

void Print_Pl(char** OutputImg, Pillar *p)
{
    int left, right;
    if (p->w >= 0 && p->w <= (W_B - W_P))
        {left = p->w; right = p->w + W_P;}
    else if (p->w < 0)
        {left = 0; right = p->w + W_P;}
    else
        {left = p->w; right = W_B;}
    
    for (int col = left; col < right; col++)
    {
        for (int row = 0; row < p->h; row++)
            OutputImg[row][col] = 255;
        for (int row = p->h + H_H; row < H_G; row++)
            OutputImg[row][col] = 255;
    }
}

int Shift_Pl(Pillar *p)
{
    if (p->w > -W_P)
        p->w = p->w - Sh_step;
    else
    {
        p->w = p->w + 5 * (W_P + I_P);
        p->h = rand()%(H_P_up - H_P_low + 1) + H_P_low;
        return 1;
    }
    return 0;
}

bool Collide(Pillar *pl, int bird_h)
{
    if (pl->w >= (W_B/2 + bird_size) || pl->w <= (W_B/2 - bird_size - W_P))
        return FALSE;
    else if ((bird_h - bird_size) >= pl->h && (bird_h + bird_size) <= (pl->h + H_H))
        return FALSE;
    else
        return TRUE;
}

bool HitGround(int bird_h)
{
    if ((bird_h + bird_size) >= H_G)
        return TRUE;
    else
        return FALSE;
}

int main()
{
//////////////////   Initialization   ////////////////////////////////////////
    char OutputImg[H_B][W_B];
    Init_Img(OutputImg);
    struct Pillar pl[5];
    for (int i = 0; i < 5; i++)
    {
        pl[i].w = W_B + (W_P + I_P) * i;
        pl[i].h = rand()%(H_P_up - H_P_low + 1) + H_P_low;
    }
    int bird_h = 200;
    int NO_1 = 0;
    int temp = 0;
    bool jump = FALSE;
    int v = 0;
    int time_cnt = 0;
    int press_cnt = 0;

////////////////////////////// Flappy Bird ///////////////////////////////////
    while(1){
        //Jump judgement
        if (press_button && jump == FALSE)
        {
            press_cnt++;
            if (press_cnt == 5000000)
            {
                jump = TRUE;
                press_cnt = 0;
            }
        }
        if (time_cnt == 1000000)
        {
            temp = 0;
            for (int k = 0; k < 5; k++)
                temp = temp + Shift_Pl(pl+k);
            if (temp == 1)
                NO_1 = (NO_1 + 1) % 5;
            if (jump)
                {v = -30; jump = FALSE;}
            v = v + 1;
            bird_h = bird_h + v;
            Print_Pl(OutputImg, pl);
            Print_Bird(OutputImg, bird_h);
            if (Collide(pl + NO_3, bird_h) || HitGround(bird_h))
                break;
        }
        time_cnt++;
    }

    return 0;
}




static void TimerInital(void){
    // clear "status" register
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
    // set counter value to "periodl(h)" register
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
    // set interrupt handler
    alt_irq_register(TIMER_IRQ,NULL,TimerIqrHandler);
    // set "control" register to start the counter
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
}
static void TimerIqrHandler(void *context,alt_u32 id){
    printf("Timers INT \n");
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
    // clear the "status" register
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
    // set "control" register to start the counter
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
}



static void KeyInital(void){
    // set "iqr mask" register to enable interrupt
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
    // clear "edge capture" register
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
    // set interrupt handler funtion
    alt_irq_register(PIO_BUTTON_IRQ,NULL,KeyIqrHandler);
}
void KeyIqrHandler(void* context, alt_u32 id){
     int key = 0;
     // read "edge capture" register to see which key triggered the interrupt
     key = IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_BUTTON_BASE);
     switch(key){
        case 2: key = 1; break;
        case 4: key = 2; break;
        case 8: key = 3; break;
     }
     printf("Key %d INT! \n", key);
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
     // clear "edge capture" register
    ////////////////// write your function here /////////////////////////

    /////////////////////////////////////////////////////////////////////
}
