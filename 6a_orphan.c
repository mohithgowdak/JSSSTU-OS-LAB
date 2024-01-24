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
printf("[CHILD] sleeping for 10 seconds");
sleep(10);
printf("[CHILD] the parent has terminated so i am an orphan process adopted by init process\n");
}

else
{
printf("[PARENT] this is parent process \n");
mypid=getpid();
parentpid=getppid();
printf("[PARENT] my pid is %d\n",mypid);
printf("[PARENT] my parent pid is %d\n",parentpid);
printf("[PARENT] exiting \n");
exit(0);

}
}
