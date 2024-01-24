#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<sys/shm.h>
#include<sys/stat.h>
#include<sys/mman.h>
void main()
{
pid_t childpid,mypid,parentpid;
childpid=fork();

if(childpid<0)
{
printf("fork failed!!exiting\n");
exit(0);
}

if(childpid==0)
{
printf("[CHILD] this is child process\n");
mypid=getpid();
parentpid=getppid();
printf("[CHILD] my pid is %d\n",mypid);
printf("[CHILD] my parent pid is %d\n",parentpid);
printf("[CHILD] exiting\n");
exit(0);
}

else
{
printf("[PARENT] this is parent process \n");
mypid=getpid();
parentpid=getppid();
printf("[PARENT] my pid is %d\n",mypid);
printf("[PARENT] my parent pid is %d\n",parentpid);
printf("[PARENT] parent sleeping for 10 seconds \n");
sleep(10);
printf("[PARENT] the child %d has exited but has an entry in the porcess table therfore it is a zombie process\n",childpid);
}
}
