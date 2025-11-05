/*
 * tasks.h
 *
 * Created: 9/15/2022 5:55:06 PM
 *  Author: a00538665
 */ 


#ifndef TASKS_H_
#define TASKS_H_


void startTasks();
void myHeartBeatTask(void * pvParamaters);

#define DELETE_TASK_STACK_SIZE (configMINIMAL_STACK_SIZE * 3)
/*
 * The task that runs the FTP and HTTP servers.
 */
static void prvServerWorkTask( void *pvParameters );
void deleteTask( void *pvParameters );

extern TaskHandle_t xServerWorkTaskHandle;



#endif /* TASKS_H_ */