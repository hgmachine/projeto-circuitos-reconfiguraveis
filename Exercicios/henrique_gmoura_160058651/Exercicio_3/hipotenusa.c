#ifndef MESH_TOOLS_C
#define MESH_TOOLS_C

#include <math.h>
#include "hipotenusa.h"

int hipo(int a, int b)
{
    int t1=0,t2=0,t3=0,t4=0,t5=0,t6=0,t7=0;
    int x=0,y=0;
    
    t1 = fabs(a);
    t2 = fabs(b);
    x  = fmax(t1,t2);
    y  = fmin(t1,t2);
    t3 = x>>3;
    t4 = y>>1;
    t5 = x-t3;
    t6 = t4+t5;
    t7 = fmax(t6,x);

    return t7;
}

#endif
