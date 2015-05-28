/* It had generated by DirectStruct v1.4.4 */
#ifndef _H_dag_schedule_ESQL_
#define _H_dag_schedule_ESQL_

#define _PQSQL

#include <ecpglib.h>
#include <ecpgerrno.h>
#include <sqlca.h>

#include "IDL_dag_schedule.dsc.h"

#undef SQLCODE
#define SQLCODE		(int)(sqlca.sqlcode)

#undef SQLSTATE
#define SQLSTATE	sqlca.sqlstate

#undef SQLDESC
#define SQLDESC		sqlca.sqlerrm.sqlerrmc

#ifndef SQLNOTFOUND
#define SQLNOTFOUND	100
#endif


EXEC SQL BEGIN DECLARE SECTION ;
	extern int dag_schedule_order_index ;	extern short dag_schedule_order_index_id ;
	extern char dag_schedule_schedule_name[ 64 + 1 ] ;	extern short dag_schedule_schedule_name_id ;
	extern char dag_schedule_schedule_desc[ 256 + 1 ] ;	extern short dag_schedule_schedule_desc_id ;
EXEC SQL END DECLARE SECTION ;

#define	TFLIST_dag_schedule \
	order_index , \
	schedule_name , \
	schedule_desc

#define	DBVLIST_dag_schedule \
	:dag_schedule_order_index , \
	:dag_schedule_schedule_name , \
	:dag_schedule_schedule_desc

#define	DBVLLIST_dag_schedule \
	:dag_schedule_order_index :dag_schedule_order_index_id , \
	:dag_schedule_schedule_name :dag_schedule_schedule_name_id , \
	:dag_schedule_schedule_desc :dag_schedule_schedule_desc_id

void DSCINITV_dag_schedule();
void DSCVTOS_dag_schedule( dag_schedule *pst );
void DSCSTOV_dag_schedule( dag_schedule *pst );
void DSCTRIM_dag_schedule( dag_schedule *pst );

void DSCSQLACTION_SELECT_A_FROM_dag_schedule_WHERE_schedule_name_E( dag_schedule *pst );
void DSCSQLACTION_OPEN_CURSOR_dag_schedule_cursor1_SELECT_A_FROM_dag_schedule_ORDER_BY_order_index( dag_schedule *pst );
void DSCSQLACTION_FETCH_CURSOR_dag_schedule_cursor1( dag_schedule *pst );
void DSCSQLACTION_CLOSE_CURSOR_dag_schedule_cursor1();
void DSCDBCONN( char *host , int port , char *dbname , char *user , char *pass );
void DSCDBDISCONN();
void DSCDBBEGINWORK();
void DSCDBCOMMIT();
void DSCDBROLLBACK();

#endif
