/* It had generated by DirectStruct v1.4.4 */

#include "IDL_dag_batches_tasks.dsc.ESQL.eh"

EXEC SQL BEGIN DECLARE SECTION ;
	char dag_batches_tasks_schedule_name[ 64 + 1 ] ;	short dag_batches_tasks_schedule_name_id ;
	char dag_batches_tasks_batch_name[ 64 + 1 ] ;	short dag_batches_tasks_batch_name_id ;
	int dag_batches_tasks_order_index ;	short dag_batches_tasks_order_index_id ;
	char dag_batches_tasks_program_and_params[ 256 + 1 ] ;	short dag_batches_tasks_program_and_params_id ;
	int dag_batches_tasks_timeout ;	short dag_batches_tasks_timeout_id ;
EXEC SQL END DECLARE SECTION ;

void DSCINITV_dag_batches_tasks()
{
	memset( dag_batches_tasks_schedule_name , 0x00 , sizeof(dag_batches_tasks_schedule_name) );
	dag_batches_tasks_schedule_name_id = 0 ;
	memset( dag_batches_tasks_batch_name , 0x00 , sizeof(dag_batches_tasks_batch_name) );
	dag_batches_tasks_batch_name_id = 0 ;
	dag_batches_tasks_order_index = 0 ;
	dag_batches_tasks_order_index_id = 0 ;
	memset( dag_batches_tasks_program_and_params , 0x00 , sizeof(dag_batches_tasks_program_and_params) );
	dag_batches_tasks_program_and_params_id = 0 ;
	dag_batches_tasks_timeout = 0 ;
	dag_batches_tasks_timeout_id = 0 ;
	return;
}

void DSCVTOS_dag_batches_tasks( dag_batches_tasks *pst )
{
	strcpy( pst->schedule_name , dag_batches_tasks_schedule_name );
	strcpy( pst->batch_name , dag_batches_tasks_batch_name );
	pst->order_index = dag_batches_tasks_order_index ;
	strcpy( pst->program_and_params , dag_batches_tasks_program_and_params );
	pst->timeout = dag_batches_tasks_timeout ;
	return;
}

void DSCSTOV_dag_batches_tasks( dag_batches_tasks *pst )
{
	strcpy( dag_batches_tasks_schedule_name , pst->schedule_name );
	strcpy( dag_batches_tasks_batch_name , pst->batch_name );
	dag_batches_tasks_order_index = pst->order_index ;
	strcpy( dag_batches_tasks_program_and_params , pst->program_and_params );
	dag_batches_tasks_timeout = pst->timeout ;
	return;
}

#ifndef TRIM
#define TRIM(_str_) {char *p=(_str_)+strlen(_str_)-1; for(;((*p)==' ')&&(p>=(_str_));p--){(*p)='\0';}}
#endif

void DSCTRIM_dag_batches_tasks( dag_batches_tasks *pst )
{
	TRIM( pst->schedule_name )
	TRIM( pst->batch_name )
	TRIM( pst->program_and_params )
	return;
}

void DSCSQLACTION_OPEN_CURSOR_dag_batches_tasks_cursor1_SELECT_A_FROM_dag_batches_tasks_WHERE_schedule_name_E( dag_batches_tasks *pst )
{
	DSCSTOV_dag_batches_tasks( pst );
	
	EXEC SQL
		DECLARE	dag_batches_tasks_dag_batches_tasks_cursor1 CURSOR FOR
		SELECT	*
		FROM	dag_batches_tasks
		WHERE	schedule_name = :dag_batches_tasks_schedule_name
		;
	if( SQLCODE )
		return;
	
	EXEC SQL
		OPEN	dag_batches_tasks_dag_batches_tasks_cursor1
		;
	if( SQLCODE )
		return;
	
	return;
}

void DSCSQLACTION_FETCH_CURSOR_dag_batches_tasks_cursor1( dag_batches_tasks *pst )
{
	EXEC SQL
		FETCH	dag_batches_tasks_dag_batches_tasks_cursor1
		INTO	DBVLLIST_dag_batches_tasks
		;
	if( SQLCODE )
		return;
	
	DSCVTOS_dag_batches_tasks( pst );
	
	return;
}

void DSCSQLACTION_CLOSE_CURSOR_dag_batches_tasks_cursor1()
{
	EXEC SQL
		CLOSE	dag_batches_tasks_dag_batches_tasks_cursor1
		;
	return;
}

void DSCSQLACTION_OPEN_CURSOR_dag_batches_tasks_cursor2_SELECT_A_FROM_dag_batches_tasks_WHERE_schedule_name_E_AND_batch_name_E_ORDER_BY_order_index( dag_batches_tasks *pst )
{
	DSCSTOV_dag_batches_tasks( pst );
	
	EXEC SQL
		DECLARE	dag_batches_tasks_dag_batches_tasks_cursor2 CURSOR FOR
		SELECT	*
		FROM	dag_batches_tasks
		WHERE	schedule_name = :dag_batches_tasks_schedule_name AND batch_name = :dag_batches_tasks_batch_name
		ORDER BY  order_index 
		;
	if( SQLCODE )
		return;
	
	EXEC SQL
		OPEN	dag_batches_tasks_dag_batches_tasks_cursor2
		;
	if( SQLCODE )
		return;
	
	return;
}

void DSCSQLACTION_FETCH_CURSOR_dag_batches_tasks_cursor2( dag_batches_tasks *pst )
{
	EXEC SQL
		FETCH	dag_batches_tasks_dag_batches_tasks_cursor2
		INTO	DBVLLIST_dag_batches_tasks
		;
	if( SQLCODE )
		return;
	
	DSCVTOS_dag_batches_tasks( pst );
	
	return;
}

void DSCSQLACTION_CLOSE_CURSOR_dag_batches_tasks_cursor2()
{
	EXEC SQL
		CLOSE	dag_batches_tasks_dag_batches_tasks_cursor2
		;
	return;
}
