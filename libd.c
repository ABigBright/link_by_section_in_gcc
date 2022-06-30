#include <stdio.h>

void _libd(void)
{
    printf("%s:%d\r\n", __FUNCTION__, __LINE__);
}

void _liba(void);
void _libok(void)
{
    _liba();
    printf("%s:%d\r\n", __FUNCTION__, __LINE__);
}
