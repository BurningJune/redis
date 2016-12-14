#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include"redis_op.h"



int main()
{
	redisContext* c =  rop_connectdb_nopwd("127.0.0.1","6379");
	char buf[1024]= {0};
	int ret = rop_redis_get(c,"key",buf);
	if(ret != 0)
	{
		printf("获取不成功\n");
		redisFree(c);
	}
	printf("%s\n",buf);

	redisFree(c);	
	return 0;
}
