
#include "minitalk.h"

int main(int ac,char **av,char **env)
{
    
    char *py =  "/usr/bin/python3";
    char *a[] =  {"python3 ","server.py",NULL};
    execve(py,a,NULL);
    return (EXIT_SUCCESS);
}