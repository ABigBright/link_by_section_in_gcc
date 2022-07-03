#include <stdio.h>

void _liba(void);
void _libb(void);
void _libd(void);
void _libok(void);

/* void _start(void) */
/* {} */

void raise(void)
{}

int main(void)
{
    unsigned long long a = 124343;
    unsigned long res = 0;

    /* _liba(); */
    /* _libb(); */

    _libok();

    res = a / 3;
    while(1);
}

