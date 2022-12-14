------------------------- DROP ---------------------------------
DROP TABLE EMP CASCADE CONSTRAINTS ;
DROP TABLE BOOKING CASCADE CONSTRAINTS ;
DROP TABLE BOTARGET CASCADE  CONSTRAINTS ;
DROP TABLE BOFOL CASCADE CONSTRAINTS ;
DROP TABLE CALENDAR CASCADE CONSTRAINTS ;
DROP TABLE SCTHEME CASCADE CONSTRAINTS ;
DROP TABLE SCFOLDER CASCADE CONSTRAINTS ;
DROP TABLE OFBOARDCOM CASCADE CONSTRAINTS ;
DROP TABLE OFBOARD CASCADE CONSTRAINTS ;
DROP TABLE OFBOARDFOL CASCADE CONSTRAINTS ;
DROP TABLE OFBOARDFILE CASCADE CONSTRAINTS ;
DROP TABLE OFBOARDLIKE CASCADE CONSTRAINTS ;
DROP TABLE ATTENDDAY CASCADE CONSTRAINTS ;
DROP TABLE ATTEND CASCADE CONSTRAINTS ;
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS ;
DROP TABLE POSITION CASCADE CONSTRAINTS ;
DROP TABLE RELINE CASCADE CONSTRAINTS ;
DROP TABLE ELFILE CASCADE CONSTRAINTS ;
DROP TABLE DOCFOL CASCADE CONSTRAINTS ;
DROP TABLE DOCSTY CASCADE CONSTRAINTS ;
DROP TABLE ELIMP CASCADE CONSTRAINTS ;
DROP TABLE APPLINE CASCADE CONSTRAINTS ;
DROP TABLE APPSTAMP CASCADE CONSTRAINTS ;
DROP TABLE ADDFOL CASCADE CONSTRAINTS ;
DROP TABLE ADDBOOK CASCADE CONSTRAINTS ;
DROP TABLE MAIL CASCADE CONSTRAINTS ;
DROP TABLE MAILFILE CASCADE CONSTRAINTS ;
DROP TABLE BREAKDAY CASCADE CONSTRAINTS ;
DROP TABLE BREAKTHEME CASCADE CONSTRAINTS ;

DROP SEQUENCE EMP_SEQ;
DROP SEQUENCE SCHEDULE_SEQ;
DROP SEQUENCE DOCSTY_SEQ;
DROP SEQUENCE DOCFOL_SEQ;
DROP SEQUENCE APPSTAMP_SEQ;
DROP SEQUENCE OFBOARD_SEQ;
DROP SEQUENCE OFBOARDFOL_SEQ;
DROP SEQUENCE ELIMP_SEQ;
DROP SEQUENCE OFBOARDFILE_SEQ;
DROP SEQUENCE OFBOARDCOM_SEQ;
DROP SEQUENCE APPLINE_SEQ;
DROP SEQUENCE RELINE_SEQ;
DROP SEQUENCE SCFOLDER_SEQ;
DROP SEQUENCE BOFOL_SEQ;
DROP SEQUENCE BOTARGET_SEQ;
DROP SEQUENCE BOOKING_SEQ;
DROP SEQUENCE BREAKDAY_SEQ;
DROP SEQUENCE ATTEND_SEQ;
DROP SEQUENCE ATTENDDAY_SEQ;
DROP SEQUENCE BREAKTHEME_SEQ;
DROP SEQUENCE ELFILE_SEQ;
DROP SEQUENCE ADDBOOK_SEQ;
DROP SEQUENCE ADDFOL_SEQ;
DROP SEQUENCE MAIL_SEQ;
DROP SEQUENCE MAILFILE_SEQ;

DROP VIEW selectstamp;
DROP VIEW apEleList;
DROP VIEW reEleList;
DROP VIEW breakDayView;
DROP VIEW empView;
DROP VIEW mailView;

------------------------- DROP ---------------------------------

------------------------- SEQ ----------------------------------

CREATE SEQUENCE EMP_SEQ
MINVALUE 100 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 100 
NOCACHE;

CREATE SEQUENCE SCFOLDER_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE SCHEDULE_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE BOFOL_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE BOTARGET_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE BOOKING_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE ATTENDDAY_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE ATTEND_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE BREAKTHEME_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE BREAKDAY_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE DOCSTY_SEQ
MINVALUE 100
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 100
NOCACHE;

CREATE SEQUENCE DOCFOL_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE APPSTAMP_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE OFBOARDFOL_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 5 
NOCACHE;

CREATE SEQUENCE OFBOARD_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE ELIMP_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE OFBOARDFILE_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE OFBOARDCOM_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE APPLINE_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE RELINE_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;

CREATE SEQUENCE ELFILE_SEQ
MINVALUE 1
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1
NOCACHE;


CREATE SEQUENCE ADDFOL_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE ADDBOOK_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE MAIL_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;

CREATE SEQUENCE MAILFILE_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 
START WITH 1 
NOCACHE;
------------------------- SEQ -----------------------------------------
-----------------------CREATE TABLE----------------------------------

/* ????????? */
CREATE TABLE EMP (
	EMP_NO NUMBER NOT NULL, /* ?????? ?????? */
	EMP_NAME VARCHAR2(255), /* ?????? ?????? */
	EMP_PWD VARCHAR2(255), /* ???????????? */
	EMP_TEL VARCHAR2(255), /* ???????????? */
	EMP_EMAIL VARCHAR2(255), /* ????????? */
	EMP_ZIPCODE NUMBER, /* ???????????? */
	EMP_ADDRESS VARCHAR2(255), /* ?????? */
	EMP_ADDRESSDETAIL VARCHAR2(255), /* ???????????? */
	EMP_REGDATE DATE, /* ????????? */
	EMP_RESDATE DATE, /* ????????? */
	EMP_PHOTO VARCHAR2(255), /* ???????????? */
	EMP_SALARY NUMBER, /* ?????? */
	EMP_ACCOUNT VARCHAR2(255), /* ?????? */
	EMP_ADMIN_LEV NUMBER, /* ????????? ???????????? */
	EMP_BIRTH DATE, /* ?????? */
	DEPARTMENT_NO NUMBER, /* ???????????? */
	POSITION_NO NUMBER /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_EMP
	ON EMP (
		EMP_NO ASC
	);

ALTER TABLE EMP
	ADD
		CONSTRAINT PK_EMP
		PRIMARY KEY (
			EMP_NO
		);

/* ?????????????????? */
CREATE TABLE ELIMP (
	ELECTRONIC_NO NUMBER NOT NULL, /* ???????????? */
	ELECTRONIC_DATE DATE DEFAULT CURRENT_DATE, /* ???????????? */
	ELECTRONIC_TITLE VARCHAR2(255) NOT NULL, /* ???????????? */
	ELECTRONIC_CONTENT CLOB NOT NULL, /* ???????????? */
	ELECTRONIC_FILE_FLAG VARCHAR2(255), /* ?????????????????? */
	ELECTRONIC_COMPLET_FLAG VARCHAR2(255) DEFAULT '0', /* ???????????? */
	ELECTRONIC_EMERGENCY_FLAG VARCHAR2(255) DEFAULT '0', /* ?????? ?????? */
	EMP_NO NUMBER, /* ????????? */
	STYLE_NO NUMBER, /* ???????????? */
	ELECTRONIC_DRAFT VARCHAR2(255) DEFAULT '0' /* ???????????? ?????? */
);

CREATE UNIQUE INDEX PK_ELIMP
	ON ELIMP (
		ELECTRONIC_NO ASC
	);

ALTER TABLE ELIMP
	ADD
		CONSTRAINT PK_ELIMP
		PRIMARY KEY (
			ELECTRONIC_NO
		);

/* ?????? */
CREATE TABLE MAIL (
	MAIL_NO NUMBER NOT NULL, /* ?????? ?????? */
	MAIL_TITLE VARCHAR2(255) NOT NULL, /* ?????? */
	MAIL_CONTENT CLOB, /* ?????? */
	MAIL_SEND VARCHAR2(255) NOT NULL, /* ???????????? */
	MAIL_TAKE VARCHAR2(255) NOT NULL, /* ???????????? */
	MAIL_SENDDATE DATE DEFAULT CURRENT_DATE, /* ?????? ?????? */
	MAIL_READDATE DATE, /* ?????? ?????? */
    MAIL_TEMPSAVE VARCHAR2(255), /*????????????*/
	MAIL_RESERVE DATE DEFAULT CURRENT_DATE, /* ?????? ?????? */
	MAIL_DEL_CHECK VARCHAR2(255) DEFAULT 0, /* ?????? ?????? */
	MAIL_EMPNO NUMBER NOT NULL, /* ???????????? */
    MAIL_IMPORTANT  VARCHAR2(255) DEFAULT 0 /*????????????*/
);

CREATE UNIQUE INDEX PK_MAIL
	ON MAIL (
		MAIL_NO ASC
	);

ALTER TABLE MAIL
	ADD
		CONSTRAINT PK_MAIL
		PRIMARY KEY (
			MAIL_NO
		);

/* ?????? */
CREATE TABLE ATTEND (
	ATTENDANCE_NO NUMBER NOT NULL, /* ?????? ?????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	ATTENDANCE_ANNUAL_COUNT NUMBER DEFAULT 21, /* ?????? ?????? */
	ATTENDANCE_ANNUAL_USE NUMBER DEFAULT 0, /* ?????? ????????? */
	ATTENDANCE_LATE_COUNT NUMBER DEFAULT 0, /* ?????? ?????? */
	ATTENDANCE_REWARD_COUNT NUMBER DEFAULT 0, /* ?????? ?????? ?????? */
	ATTENDANCE_REWARD_USE NUMBER DEFAULT 0 /* ???????????? ????????? */
);

CREATE UNIQUE INDEX PK_ATTEND
	ON ATTEND (
		ATTENDANCE_NO ASC
	);

ALTER TABLE ATTEND
	ADD
		CONSTRAINT PK_ATTEND
		PRIMARY KEY (
			ATTENDANCE_NO
		);

/* ????????? */
CREATE TABLE OFBOARD (
	BOARD_NO NUMBER NOT NULL, /* ????????? ?????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	BOARD_TITLE VARCHAR2(255) NOT NULL, /* ?????? */
	BOARD_CONTENT CLOB, /* ?????? */
	BOARD_WRITER VARCHAR2(255) NOT NULL, /* ????????? */
	BOARD_HITS NUMBER DEFAULT 1, /* ????????? */
	BOARD_DATE DATE DEFAULT CURRENT_DATE, /* ????????? */
	BOARD_FOLDER_NO NUMBER, /* ????????? ?????? ?????? */
    commentCnt NUMBER default 0 /* ?????? ??? */
);

CREATE UNIQUE INDEX PK_OFBOARD
	ON OFBOARD (
		BOARD_NO ASC
	);

ALTER TABLE OFBOARD
	ADD
		CONSTRAINT PK_OFBOARD
		PRIMARY KEY (
			BOARD_NO
		);

/* ?????? */
CREATE TABLE BOOKING (
	BOOKING_NO NUMBER NOT NULL, /* ?????? ?????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	BOOKING_CURRENT DATE DEFAULT CURRENT_DATE, /* ?????? ?????? */
	BOOKING_START VARCHAR2(255), /* ?????? ?????? */
	BOOKING_END VARCHAR2(255), /* ?????? ?????? ?????? */
	BOOKING_APP_FLAG VARCHAR2(255) DEFAULT '0', /* ?????? ?????? */
	BOOKING_DEL_FLAG VARCHAR2(255) DEFAULT '0', /* ?????? ?????? */
	BOOKING_TARGET_NO NUMBER, /* ?????? ?????? ?????? */
	BOOKING_CONTENT CLOB, /* ?????? ?????? */
	SCHEDULE_NO NUMBER DEFAULT 0 /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_BOOKING
	ON BOOKING (
		BOOKING_NO ASC
	);

ALTER TABLE BOOKING
	ADD
		CONSTRAINT PK_BOOKING
		PRIMARY KEY (
			BOOKING_NO
		);

/* ???????????? */
CREATE TABLE APPLINE (
	APPROVAL_LINE_NO NUMBER NOT NULL, /* ?????????????????? */
	ELECTRONIC_NO NUMBER, /* ???????????? */
	EMP_NO NUMBER, /* ????????? */
	APPROVAL_LINE_COMPLETE_FLAG VARCHAR2(255) DEFAULT '0', /* ???????????????????????? */
	APPROVAL_LINE_ORDER NUMBER DEFAULT 0 /* ???????????? */
);

CREATE UNIQUE INDEX PK_APPLINE
	ON APPLINE (
		APPROVAL_LINE_NO ASC
	);

ALTER TABLE APPLINE
	ADD
		CONSTRAINT PK_APPLINE
		PRIMARY KEY (
			APPROVAL_LINE_NO
		);

/* ?????? */
CREATE TABLE ELFILE (
	FILE_NO NUMBER NOT NULL, /* ???????????? */
	FILE_NAME VARCHAR2(255) NOT NULL, /* ???????????? */
	FILE_ORIGINALNAME VARCHAR2(255) NOT NULL, /* ?????????????????? */
	FILE_SIZE NUMBER NOT NULL, /* ???????????? */
	ELECTRONIC_NO NUMBER /* ???????????? */	
);

CREATE UNIQUE INDEX PK_ELFILE
	ON ELFILE (
		FILE_NO ASC
	);

ALTER TABLE ELFILE
	ADD
		CONSTRAINT PK_ELFILE
		PRIMARY KEY (
			FILE_NO
		);

/* ???????????? */
CREATE TABLE DOCSTY (
	STYLE_NO NUMBER NOT NULL, /* ???????????? */
	STYLE_NAME VARCHAR2(255) NOT NULL, /* ???????????? */
	STYLE_CONTENT CLOB, /* ???????????? */
	FOLDER_NO NUMBER /* ?????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_DOCSTY
	ON DOCSTY (
		STYLE_NO ASC
	);

ALTER TABLE DOCSTY
	ADD
		CONSTRAINT PK_DOCSTY
		PRIMARY KEY (
			STYLE_NO
		);

/* ?????????????????? */
CREATE TABLE APPSTAMP (
	STAMP_NO NUMBER NOT NULL, /* ???????????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	STAMP_NAME VARCHAR2(255) NOT NULL /* ???????????? */
);

CREATE UNIQUE INDEX PK_APPSTAMP
	ON APPSTAMP (
		STAMP_NO ASC
	);

ALTER TABLE APPSTAMP
	ADD
		CONSTRAINT PK_APPSTAMP
		PRIMARY KEY (
			STAMP_NO
		);

/* ?????? */
CREATE TABLE DEPARTMENT (
	DEPARTMENT_NO NUMBER NOT NULL, /* ???????????? */
	DEPARTMENT_NAME VARCHAR2(255) NOT NULL /* ???????????? */
);

CREATE UNIQUE INDEX PK_DEPARTMENT
	ON DEPARTMENT (
		DEPARTMENT_NO ASC
	);

ALTER TABLE DEPARTMENT
	ADD
		CONSTRAINT PK_DEPARTMENT
		PRIMARY KEY (
			DEPARTMENT_NO
		);

/* ?????? */
CREATE TABLE POSITION (
	POSITION_NO NUMBER NOT NULL, /* ?????? ?????? */
	POSITION_NAME VARCHAR2(255) NOT NULL /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_POSITION
	ON POSITION (
		POSITION_NO ASC
	);

ALTER TABLE POSITION
	ADD
		CONSTRAINT PK_POSITION
		PRIMARY KEY (
			POSITION_NO
		);

/* ?????? ???????????? */
CREATE TABLE MAILFILE (
	FILE_NO NUMBER NOT NULL, /* ???????????? */
	MAIL_NO NUMBER, /* ?????? ?????? */
    FILE_CHECK_NO NUMBER, /* ???????????????????????? */
	FILE_NAME VARCHAR2(255) NOT NULL, /* ???????????? */
	FILE_ORIGIN_NAME VARCHAR2(255) NOT NULL, /* ?????????????????? */
	FILE_SIZE NUMBER NOT NULL /* ???????????? */
);

CREATE UNIQUE INDEX PK_MAILFILE
	ON MAILFILE (
		FILE_NO ASC
	);

ALTER TABLE MAILFILE
	ADD
		CONSTRAINT PK_MAILFILE
		PRIMARY KEY (
			FILE_NO
		);

/* ????????? ?????? ?????? */
CREATE TABLE ATTENDDAY (
	ATTENDANCE_DAY_NO NUMBER NOT NULL, /* ?????? ?????? ?????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	ATTENDANCE_DAY_ON_HOUR DATE, /* ?????? ?????? */
	ATTENDANCE_DAY_OFF_HOUR DATE, /* ?????? ?????? */
	ATTENDANCE_DAY_WORK_HOUR DATE, /* ?????? ?????? */
	ATTENDANCE_DAY_HOLIDAY_FLAG VARCHAR2(255) DEFAULT 0, /* ?????? ?????? */
	ATTENDANCE_DAY_REGDATE DATE NOT NULL /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_ATTENDDAY
	ON ATTENDDAY (
		ATTENDANCE_DAY_NO ASC
	);

ALTER TABLE ATTENDDAY
	ADD
		CONSTRAINT PK_ATTENDDAY
		PRIMARY KEY (
			ATTENDANCE_DAY_NO
		);

/* ????????? ???????????? */
CREATE TABLE OFBOARDFILE (
	BOARD_FILE_NO NUMBER NOT NULL, /* ???????????? */
	BOARD_NO NUMBER NOT NULL, /* ????????? ?????? */
	FILENAME VARCHAR2(255), /* ???????????? */
	ORIGINALFILENAME VARCHAR2(255), /* ?????????????????? */
	FILESIZE NUMBER /* ???????????? */
);

CREATE UNIQUE INDEX PK_OFBOARDFILE
	ON OFBOARDFILE (
		BOARD_FILE_NO ASC
	);

ALTER TABLE OFBOARDFILE
	ADD
		CONSTRAINT PK_OFBOARDFILE
		PRIMARY KEY (
			BOARD_FILE_NO
		);

/* ????????? ?????? */
CREATE TABLE OFBOARDCOM (
	BOARD_COMMENT_NO NUMBER NOT NULL, /* ?????? ?????? */
	BOARD_NO NUMBER, /* ????????? ?????? */
	BOARD_COMMENT_CONTENT VARCHAR2(255) NOT NULL, /* ?????? */
	BOARD_COMMENT_WRITER VARCHAR2(255) NOT NULL, /* ????????? */
	BOARD_COMMENT_DATE DATE DEFAULT CURRENT_DATE, /* ????????? */
	BOARD_COMMENT_DEL_FLAG VARCHAR2(255) DEFAULT '0', /* ?????? ?????? */
	BOARD_COMMENT_GROUP_NO NUMBER, /* ?????? ?????? */
    BOARD_COMMENT_STEP_NO NUMBER DEFAULT '0'/* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_OFBOARDCOM
	ON OFBOARDCOM (
		BOARD_COMMENT_NO ASC
	);

ALTER TABLE OFBOARDCOM
	ADD
		CONSTRAINT PK_OFBOARDCOM
		PRIMARY KEY (
			BOARD_COMMENT_NO
		);

/* ????????? */
CREATE TABLE OFBOARDLIKE (
	BOARD_NO NUMBER, /* ????????? ?????? */
	EMP_NO NUMBER /* ?????? ?????? */
);

/* ????????? ?????? */
CREATE TABLE ADDBOOK (
	ADDRESSBOOK_NO NUMBER NOT NULL, /* ????????? ?????? ?????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	ADDRESSBOOK_NAME VARCHAR2(255) NOT NULL, /* ?????? */
	ADDRESSBOOK_TEL VARCHAR2(255) NOT NULL, /* ???????????? */
	ADDRESSBOOK_MAILE VARCHAR2(255), /* ????????? */
	ADDRESSBOOK_POSITION VARCHAR2(255), /* ?????? */
    ADDRESSBOOK_OFFICENAME VARCHAR(255), /* ????????? */
    ADDRESSBOOK_OFFICETEL VARCHAR(255), /* ???????????? */
    ADDRESSBOOK_GENDER VARCHAR(255), /* ?????? */
	ADDRESS_FOLDER_NO NUMBER NOT NULL/* ????????? ?????? ?????? */
);

CREATE UNIQUE INDEX ADDRESSBOOK
	ON ADDBOOK (
		ADDRESSBOOK_NO ASC
	);

ALTER TABLE ADDBOOK
	ADD
		CONSTRAINT ADDRESSBOOK
		PRIMARY KEY (
			ADDRESSBOOK_NO
		);

/* ?????? */
CREATE TABLE CALENDAR (
	SCHEDULE_NO NUMBER NOT NULL, /* ?????? ?????? */
	SCHEDULE_TITLE VARCHAR2(255) NOT NULL, /* ?????? ?????? */
	SCHEDULE_START VARCHAR2(255), /* ?????? ???????????? */
	SCHEDULE_END VARCHAR2(255), /* ?????? ???????????? */
	SCHEDULE_ALLDAY VARCHAR2(255), /* ?????? ?????? ?????? */
	SCHEDULE_COLOR VARCHAR2(255), /* ?????? ??? */
	SCHEDULE_FOLDER_NO NUMBER DEFAULT 0, /* ?????? ?????? ?????? */
	SCHEDULE_THEME_NO NUMBER, /* ????????? ?????? ?????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	BOOKING_TARGET_NO NUMBER DEFAULT 0, /* ?????? ?????? ?????? */
	SCHEDULE_CONTENT CLOB /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_CALENDAR
	ON CALENDAR (
		SCHEDULE_NO ASC
	);

ALTER TABLE CALENDAR
	ADD
		CONSTRAINT PK_CALENDAR
		PRIMARY KEY (
			SCHEDULE_NO
		);

/* ????????? ?????? */
CREATE TABLE ADDFOL (
	ADDRESS_FOLDER_NO NUMBER NOT NULL, /* ????????? ?????? ?????? */
	EMP_NO NUMBER NOT NULL, /* ?????? ?????? */
	ADDRESS_FOLDER_NAME VARCHAR2(255) /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_ADDFOL
	ON ADDFOL (
		ADDRESS_FOLDER_NO ASC
	);

ALTER TABLE ADDFOL
	ADD
		CONSTRAINT PK_ADDFOL
		PRIMARY KEY (
			ADDRESS_FOLDER_NO
		);

/* ?????? ?????? */
CREATE TABLE SCFOLDER (
	SCHEDULE_FOLDER_NO NUMBER NOT NULL, /* ?????? ?????? ?????? */
	SCHEDULE_FOLDER_NAME VARCHAR2(255), /* ?????? ?????? ?????? */
	SCHEDULE_FOLDER_COLOR VARCHAR2(255), /* ??? */
	EMP_NO NUMBER /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_SCFOLDER
	ON SCFOLDER (
		SCHEDULE_FOLDER_NO ASC
	);

ALTER TABLE SCFOLDER
	ADD
		CONSTRAINT PK_SCFOLDER
		PRIMARY KEY (
			SCHEDULE_FOLDER_NO
		);

/* ????????? ?????? */
CREATE TABLE SCTHEME (
	SCHEDULE_THEME_NO NUMBER NOT NULL, /* ?????? ?????? */
	SCHEDULE_THEME_NAME VARCHAR2(255) /* ?????? ?????? */
);

CREATE UNIQUE INDEX PK_SCTHEME
	ON SCTHEME (
		SCHEDULE_THEME_NO ASC
	);

ALTER TABLE SCTHEME
	ADD
		CONSTRAINT PK_SCTHEME
		PRIMARY KEY (
			SCHEDULE_THEME_NO
		);

/* ?????? ?????? */
CREATE TABLE BOFOL (
	BOOKING_FOLDER_NO NUMBER NOT NULL, /* ?????? ?????? ?????? */
	BOOKING_FOLDER_NAME VARCHAR2(255) /* ?????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_BOFOL
	ON BOFOL (
		BOOKING_FOLDER_NO ASC
	);

ALTER TABLE BOFOL
	ADD
		CONSTRAINT PK_BOFOL
		PRIMARY KEY (
			BOOKING_FOLDER_NO
		);

/* ????????? ?????? */
CREATE TABLE OFBOARDFOL (
	BOARD_FOLDER_NO NUMBER NOT NULL, /* ????????? ?????? ?????? */
	BOARD_FOLDER_NAME VARCHAR2(255) /* ????????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_OFBOARDFOL
	ON OFBOARDFOL (
		BOARD_FOLDER_NO ASC
	);

ALTER TABLE OFBOARDFOL
	ADD
		CONSTRAINT PK_OFBOARDFOL
		PRIMARY KEY (
			BOARD_FOLDER_NO
		);

/* ?????? ?????? */
CREATE TABLE BOTARGET (
	BOOKING_TARGET_NO NUMBER NOT NULL, /* ?????? ?????? ?????? */
	BOOKING_TARGET_NAME VARCHAR2(255), /* ?????? ?????? ?????? */
	BOOKING_FOLDER_NO NUMBER /* ?????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_BOTARGET
	ON BOTARGET (
		BOOKING_TARGET_NO ASC
	);

ALTER TABLE BOTARGET
	ADD
		CONSTRAINT PK_BOTARGET
		PRIMARY KEY (
			BOOKING_TARGET_NO
		);

/* ???????????? */
CREATE TABLE DOCFOL (
	FOLDER_NO NUMBER NOT NULL, /* ?????? ?????? ?????? */
	FOLDER_NAME VARCHAR(255) DEFAULT '??????' /* ?????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_DOCFOL
	ON DOCFOL (
		FOLDER_NO ASC
	);

ALTER TABLE DOCFOL
	ADD
		CONSTRAINT PK_DOCFOL
		PRIMARY KEY (
			FOLDER_NO
		);

/* ???????????? */
CREATE TABLE RELINE (
	RECEIVE_LINE_NO NUMBER NOT NULL, /* ?????????????????? */
	ELECTRONIC_NO NUMBER, /* ???????????? */
	EMP_NO NUMBER, /* ????????? */
	RECEIVE_LINE_FLAG VARCHAR2(255) DEFAULT '0' /* ?????????????????? */
);

CREATE UNIQUE INDEX PK_RELINE
	ON RELINE (
		RECEIVE_LINE_NO ASC
	);

ALTER TABLE RELINE
	ADD
		CONSTRAINT PK_RELINE
		PRIMARY KEY (
			RECEIVE_LINE_NO
		);

/* ?????? ?????? */
CREATE TABLE BREAKDAY (
	BREAKDAY_NO NUMBER NOT NULL, /* ?????? ?????? */
	BREAKDAY_START DATE, /* ????????? */
	BREAKDAY_END DATE, /* ???????????? */
	EMP_NO NUMBER, /* ?????? ?????? */
	BREAKTHEME_NO NUMBER /* ?????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_BREAKDAY
	ON BREAKDAY (
		BREAKDAY_NO ASC
	);

ALTER TABLE BREAKDAY
	ADD
		CONSTRAINT PK_BREAKDAY
		PRIMARY KEY (
			BREAKDAY_NO
		);

/* ?????? ?????? */
CREATE TABLE BREAKTHEME (
	BREAKTHEME_NO NUMBER NOT NULL, /* ?????? ?????? ?????? */
	BREAKTHEME_NAME VARCHAR2(255) /* ?????? ?????? ?????? */
);

CREATE UNIQUE INDEX PK_BREAKTHEME
	ON BREAKTHEME (
		BREAKTHEME_NO ASC
	);

ALTER TABLE BREAKTHEME
	ADD
		CONSTRAINT PK_BREAKTHEME
		PRIMARY KEY (
			BREAKTHEME_NO
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_DEPARTMENT_TO_EMP
		FOREIGN KEY (
			DEPARTMENT_NO
		)
		REFERENCES DEPARTMENT (
			DEPARTMENT_NO
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_POSITION_TO_EMP
		FOREIGN KEY (
			POSITION_NO
		)
		REFERENCES POSITION (
			POSITION_NO
		);

ALTER TABLE ELIMP
	ADD
		CONSTRAINT FK_EMP_TO_ELIMP
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE ELIMP
	ADD
		CONSTRAINT FK_DOCSTY_TO_ELIMP
		FOREIGN KEY (
			STYLE_NO
		)
		REFERENCES DOCSTY (
			STYLE_NO
		);

ALTER TABLE ATTEND
	ADD
		CONSTRAINT FK_EMP_TO_ATTEND
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE OFBOARD
	ADD
		CONSTRAINT FK_EMP_TO_OFBOARD
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE OFBOARD
	ADD
		CONSTRAINT FK_OFBOARDFOL_TO_OFBOARD
		FOREIGN KEY (
			BOARD_FOLDER_NO
		)
		REFERENCES OFBOARDFOL (
			BOARD_FOLDER_NO
		)
		ON DELETE CASCADE;

ALTER TABLE BOOKING
	ADD
		CONSTRAINT FK_EMP_TO_BOOKING
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE BOOKING
	ADD
		CONSTRAINT FK_BOTARGET_TO_BOOKING
		FOREIGN KEY (
			BOOKING_TARGET_NO
		)
		REFERENCES BOTARGET (
			BOOKING_TARGET_NO
		);

ALTER TABLE APPLINE
	ADD
		CONSTRAINT FK_EMP_TO_APPLINE
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE APPLINE
	ADD
		CONSTRAINT FK_ELIMP_TO_APPLINE
		FOREIGN KEY (
			ELECTRONIC_NO
		)
		REFERENCES ELIMP (
			ELECTRONIC_NO
		);

ALTER TABLE ELFILE
	ADD
		CONSTRAINT FK_ELIMP_TO_ELFILE
		FOREIGN KEY (
			ELECTRONIC_NO
		)
		REFERENCES ELIMP (
			ELECTRONIC_NO
		);


ALTER TABLE DOCSTY
	ADD
		CONSTRAINT FK_DOCFOL_TO_DOCSTY
		FOREIGN KEY (
			FOLDER_NO
		)
		REFERENCES DOCFOL (
			FOLDER_NO
		);

ALTER TABLE APPSTAMP
	ADD
		CONSTRAINT FK_EMP_TO_APPSTAMP
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE MAILFILE
	ADD
		CONSTRAINT FK_MAIL_TO_MAILFILE
		FOREIGN KEY (
			MAIL_NO
		)
		REFERENCES MAIL (
			MAIL_NO
		)
        ON DELETE CASCADE;

ALTER TABLE ATTENDDAY
	ADD
		CONSTRAINT FK_EMP_TO_ATTENDDAY
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE OFBOARDFILE
	ADD
		CONSTRAINT FK_OFBOARD_TO_OFBOARDFILE
		FOREIGN KEY (
			BOARD_NO
		)
		REFERENCES OFBOARD (
			BOARD_NO
		)
		ON DELETE CASCADE;

ALTER TABLE OFBOARDCOM
	ADD
		CONSTRAINT FK_OFBOARD_TO_OFBOARDCOM
		FOREIGN KEY (
			BOARD_NO
		)
		REFERENCES OFBOARD (
			BOARD_NO
		)
		ON DELETE CASCADE;

ALTER TABLE OFBOARDLIKE
	ADD
		CONSTRAINT FK_OFBOARD_TO_OFBOARDLIKE
		FOREIGN KEY (
			BOARD_NO
		)
		REFERENCES OFBOARD (
			BOARD_NO
		)
		ON DELETE CASCADE;

ALTER TABLE OFBOARDLIKE
	ADD
		CONSTRAINT FK_EMP_TO_OFBOARDLIKE
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE ADDBOOK
	ADD
		CONSTRAINT FK_EMP_TO_ADDBOOK
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);
        
ALTER TABLE ADDBOOK
	ADD
		CONSTRAINT FK_ADDFOL_TO_ADDBOOK
		FOREIGN KEY (
			ADDRESS_FOLDER_NO
		)
		REFERENCES ADDFOL (
			ADDRESS_FOLDER_NO
		)
        ON DELETE CASCADE;
        
ALTER TABLE CALENDAR
	ADD
		CONSTRAINT FK_EMP_TO_CALENDAR
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE CALENDAR
	ADD
		CONSTRAINT FK_SCTHEME_TO_CALENDAR
		FOREIGN KEY (
			SCHEDULE_THEME_NO
		)
		REFERENCES SCTHEME (
			SCHEDULE_THEME_NO
		);

ALTER TABLE ADDFOL
	ADD
		CONSTRAINT FK_EMP_TO_ADDFOL
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE SCFOLDER
	ADD
		CONSTRAINT FK_EMP_TO_SCFOLDER
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE BOTARGET
	ADD
		CONSTRAINT FK_BOFOL_TO_BOTARGET
		FOREIGN KEY (
			BOOKING_FOLDER_NO
		)
		REFERENCES BOFOL (
			BOOKING_FOLDER_NO
		)
         ON DELETE CASCADE;

ALTER TABLE RELINE
	ADD
		CONSTRAINT FK_ELIMP_TO_RELINE
		FOREIGN KEY (
			ELECTRONIC_NO
		)
		REFERENCES ELIMP (
			ELECTRONIC_NO
		);

ALTER TABLE RELINE
	ADD
		CONSTRAINT FK_EMP_TO_RELINE
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE BREAKDAY
	ADD
		CONSTRAINT FK_EMP_TO_BREAKDAY
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_NO
		);

ALTER TABLE BREAKDAY
	ADD
		CONSTRAINT FK_BREAKTHEME_TO_BREAKDAY
		FOREIGN KEY (
			BREAKTHEME_NO
		)
		REFERENCES BREAKTHEME (
			BREAKTHEME_NO
		);





------------------------- view ---------------------------------

--?????? ????????? ?????? ??????
create or replace view selectstamp AS 
select a.*, b.position_name
from 
(
select a.emp_Name, a.position_no , b.* 
from emp a join appstamp b
on a.emp_No = b.emp_no
) a join
position b
on a.position_no = b.position_no;


create or replace view apEleList AS
select a.*, b.APPROVAL_LINE_COMPLETE_FLAG, b.emp_No as emp_No_ap from 
elimp a join appline b 
on a.electronic_no = b.electronic_no;

create or replace view reEleList AS
select a.*, b.RECEIVE_LINE_FLAG, b.emp_No as emp_No_re from 
elimp a join reline b 
on a.electronic_no = b.electronic_no;

select * from apEleList;

create or replace view mailView
as
select m.*, mf.file_check_no, e.emp_name
from mail m 
left join 
        (
            select distinct file_check_no from mailfile
        )mf
on m.mail_no = mf.file_check_no
left join emp e
on m.mail_empno = e.emp_no;
------------------------- view ----------------------------------
create or replace view empView
as
select e.*,d.department_name, p.position_name
from emp e left join department d
on e.department_no=d.department_no
left join position p
on e.position_no = p.position_no;

--------------------------view----------------------------------
create or replace view breakDayView
as
select e.*,d.BREAKTHEME_NAME , p.EMP_NAME, (e.BREAKDAY_END -e.BREAKDAY_START)+1 as breakday_use 
from BREAKDAY  e left join BREAKTHEME  d
on e.BREAKTHEME_NO =d.BREAKTHEME_NO 
left join emp p
on e.EMP_NO  = p.EMP_NO;

select * from breakDayView;
------------------------------view-------------------------------------
create or replace view conditionView
as
select e.emp_name,d.department_name,d.department_no, p.position_name, a.*,
NVL(CASE WHEN ATTENDANCE_DAY_OFF_HOUR > TO_DATE(TO_CHAR(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')
                        THEN CASE WHEN ATTENDANCE_DAY_ON_HOUR  > TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')
                                  THEN NVL(TRUNC((ATTENDANCE_DAY_OFF_HOUR - to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss'))*24*60*60
                                                                -(ATTENDANCE_DAY_ON_HOUR  - to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss'))*24*60*60),0)
                                  ELSE NVL(TRUNC((ATTENDANCE_DAY_OFF_HOUR - to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss'))*24*60*60),0)
                                  END 
                        WHEN ATTENDANCE_DAY_ON_HOUR  < TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR ,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss')
                        THEN CASE WHEN ATTENDANCE_DAY_OFF_HOUR   < TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss')
                                  THEN NVL(TRUNC((to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')-ATTENDANCE_DAY_ON_HOUR)*24*60*60
                                                                -(to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')-ATTENDANCE_DAY_OFF_HOUR)*24*60*60),0)
                                  ELSE NVL(TRUNC((to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')-ATTENDANCE_DAY_ON_HOUR )*24*60*60),0)
                                  END
                        ELSE 0
                   END 
            ,0) AS EXCESS_TIME_DAY,
            NVL(CASE WHEN ATTENDANCE_DAY_OFF_HOUR > TO_DATE(TO_CHAR(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')
                        THEN CASE WHEN ATTENDANCE_DAY_ON_HOUR  < TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss')
                                  THEN NVL(TRUNC((to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')
                                                                -to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss'))*24*60*60),0)
                                  WHEN ATTENDANCE_DAY_ON_HOUR >= TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss') AND
                                             ATTENDANCE_DAY_ON_HOUR < TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')
                                  THEN NVL(TRUNC((to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')-ATTENDANCE_DAY_ON_HOUR)*24*60*60),0)
                                  ELSE 0
                                  END 
                        WHEN ATTENDANCE_DAY_OFF_HOUR  > TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR ,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss') AND
                                   ATTENDANCE_DAY_OFF_HOUR  <= TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR ,'yyyy-MM-dd')||' 18:00:00','yyyy-MM-dd hh24:mi:ss')
                        THEN CASE WHEN ATTENDANCE_DAY_ON_HOUR  < TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss')
                                  THEN NVL(TRUNC((ATTENDANCE_DAY_OFF_HOUR-to_date(to_char(ATTENDANCE_DAY_OFF_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss'))*24*60*60),0)
                                  WHEN ATTENDANCE_DAY_ON_HOUR  >= TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-MM-dd')||' 09:00:00','yyyy-MM-dd hh24:mi:ss')
                                  THEN NVL(TRUNC((ATTENDANCE_DAY_OFF_HOUR-ATTENDANCE_DAY_ON_HOUR )*24*60*60),0)
                                  ELSE 0
                                  END
                        ELSE 0
                   END 
            ,0) AS NORMAL_TIME_DAY,
            NVL(TRUNC((ATTENDANCE_DAY_OFF_HOUR -ATTENDANCE_DAY_ON_HOUR)*24*60*60),0) AS WORK_TIME_DAY
            
from ATTENDDAY  a left join emp e
on a.emp_no=e.emp_no
left join position p
on e.position_no = p.position_no
left join department d
on d.department_no = e.department_no;

------------------------------view-------------------------------------
--??????
create or replace view BREAKVIEW
as
select b.* , f.emp_name, d.department_name
from BREAKDAY b join emp f
on b.EMP_NO  = f.EMP_NO 
left join department d
on d.department_no = f.department_no;

------------------------------view-------------------------------------
--??????
create or replace view BOOKINGVIEW
as
select b.* , f.emp_name, t.BOOKING_TARGET_NAME 
from BOOKING b join emp f
on b.EMP_NO  = f.EMP_NO
left join BOTARGET t
on t.BOOKING_TARGET_NO = b.BOOKING_TARGET_NO;

select * from bookingview;

------------------------------view-------------------------------------
--????????? + ???????????????
create or replace view addBookView
as
select b.* , f.ADDRESS_FOLDER_NAME
from addbook b join addfol f
on b.address_folder_no = f.ADDRESS_FOLDER_no;
select * from emp;


-------------------------------------------------------------------------------------------

----??????
insert into POSITION values(1, '??????');
insert into POSITION values(2, '??????');
insert into POSITION values(3, '??????');
insert into POSITION values(4, '??????');
insert into POSITION values(5, '??????');
insert into POSITION values(6, '??????');
--
---- ??????
insert into DEPARTMENT values(1,'???????????????');
insert into DEPARTMENT values(2,'?????????');
insert into DEPARTMENT values(3,'????????????');
insert into DEPARTMENT values(4,'?????????');
insert into DEPARTMENT values(5,'?????????');
insert into DEPARTMENT values(6,'???????????????');


--EMP

insert into EMP values(EMP_SEQ.nextval, '?????????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01',null, 'images.jpg', 3000, '1234-1234-1234', 1, '1993-06-14', null, null);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01',null, 'images (1).jpg', 3000, '1234-1234-1234', 1, '1993-06-14', 1, 2);
insert into EMP values(EMP_SEQ.nextval, '???', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01',null, 'images (10).jpg', 3000, '1234-1234-1234', 1, '1993-06-14', 1, 2);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01',null, 'images (11).jpg', 3000, '1234-1234-1234', 1, '1993-06-14', 1, 2);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (12).jpg', 3000, '1234-1234-1234', 1, '1993-06-14', 1, 2);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (13).jpg', 3000, '1234-1234-1234', 2, '1993-06-14', 5, 3);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (14).jpg', 3000, '1234-1234-1234', 2, '1993-06-14', 5, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (15).jpg', 3000, '1234-1234-1234', 3, '1993-06-14', 6, 2);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (16).jpg', 3000, '1234-1234-1234', 3, '1993-06-14', 6, 3);


insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (17).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 3, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (18).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 4, 2);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (19).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 4, 3);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (2).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 4, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (20).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 5, 2);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (21).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 5, 3);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (22).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 5, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (23).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 2);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (24).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 3);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (25).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 4);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (26).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (27).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (28).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (3).jpg', 3000, '1234-1234-1234', 4, '1993-06-14', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (4).jpg', 3000, '1234-1234-1234', 4, '1993-07-29', 6, 4);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (5).jpg', 3000, '1234-1234-1234', 4, '1980-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (6).jpg', 3000, '1234-1234-1234', 4, '1980-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (7).jpg', 3000, '1234-1234-1234', 4, '1980-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (8).jpg', 3000, '1234-1234-1234', 4, '1980-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (9).jpg', 3000, '1234-1234-1234', 4, '1980-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '????????????.jpg', 3000, '1234-1234-1234', 4, '1980-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (1).jpg', 3000, '1234-1234-1234', 4, '1975-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (10).jpg', 3000, '1234-1234-1234', 4, '1975-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (11).jpg', 3000, '1234-1234-1234', 4, '1978-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (12).jpg', 3000, '1234-1234-1234', 4, '1977-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (13).jpg', 3000, '1234-1234-1234', 4, '1977-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (14).jpg', 3000, '1234-1234-1234', 4, '1976-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (15).jpg', 3000, '1234-1234-1234', 4, '1976-07-29', 6, 4);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (16).jpg', 3000, '1234-1234-1234', 4, '1964-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (17).jpg', 3000, '1234-1234-1234', 4, '1963-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (2).jpg', 3000, '1234-1234-1234', 4, '1963-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (3).jpg', 3000, '1234-1234-1234', 4, '1963-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (4).jpg', 3000, '1234-1234-1234', 4, '1962-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (5).jpg', 3000, '1234-1234-1234', 4, '1962-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (6).jpg', 3000, '1234-1234-1234', 4, '1961-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (7).jpg', 3000, '1234-1234-1234', 4, '1967-07-29', 6, 4);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (8).jpg', 3000, '1234-1234-1234', 4, '1954-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, '???????????? (9).jpg', 3000, '1234-1234-1234', 4, '1958-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images.jpg', 3000, '1234-1234-1234', 4, '1958-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (1).jpg', 3000, '1234-1234-1234', 4, '1959-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', null, 'images (10).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (11).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (12).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-07-05','images (13).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (14).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (15).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-07-05', 'images (16).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (17).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (18).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-07-05', 'images (19).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (2).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-07-01', null, 'images (20).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-07-05', 'images (21).jpg', 3000, '1234-1234-1234', 4, '1953-07-29', 6, 4);

insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (22).jpg', 3000, '1234-1234-1234', 4, '1953-08-15', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (23).jpg', 3000, '1234-1234-1234', 4, '1953-08-14', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-08-25','images (24).jpg', 3000, '1234-1234-1234', 4, '1953-08-13', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (25).jpg', 3000, '1234-1234-1234', 4, '1953-08-12', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (26).jpg', 3000, '1234-1234-1234', 4, '1953-08-11', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-08-25',  'images (27).jpg' ,3000, '1234-1234-1234', 4, '1953-08-10', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (28).jpg', 3000, '1234-1234-1234', 4, '1953-08-09', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (3).jpg', 3000, '1234-1234-1234', 4, '1953-08-08', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-08-25',  'images (4).jpg' ,3000, '1234-1234-1234', 4, '1953-08-07', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (5).jpg', 3000, '1234-1234-1234', 4, '1953-08-06', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2021-08-01', null, 'images (6).jpg', 3000, '1234-1234-1234', 4, '1953-08-05', 6, 4);
insert into EMP values(EMP_SEQ.nextval, '??????', '$2a$10$50mL18dBG6mblQkrPe34h.KGev0eKnDDbVwX5HXE59RLNEovaBHeu', '010-3225-4091', 'admin@gmail.com', '12345', '??????????????? ????????? ?????????', '111-123', '2020-01-01', '2021-08-25',  'images (7).jpg' ,3000, '1234-1234-1234', 4, '1953-08-04', 6, 4);


select * from emp 
order by emp_no;

--????????????
insert into sctheme values(1, '??????');
insert into sctheme values(2, '??????');

--????????????
insert into scfolder values(scfolder_seq.nextval, '(??????)??????', '#4ea0ec', 103);

--????????????
insert into calendar values(schedule_seq.nextval, '????????????', '2021-08-15', '2021-08-20', 'true','#183754',1,1,103,null,'?????? ??????, ??????????????? ??????');


--????????????
insert into BOFOL  values(bofol_seq.nextval, '??????1????????????');
insert into BOFOL  values(bofol_seq.nextval, '??????5????????????');
insert into BOFOL  values(bofol_seq.nextval, '??????');
insert into BOFOL  values(bofol_seq.nextval, '???????????????');

--????????????
insert into BOTARGET  values(botarget_seq.nextval, '????????????',1);
insert into BOTARGET  values(botarget_seq.nextval, '????????????',1);
insert into BOTARGET  values(botarget_seq.nextval, '????????????',2);
insert into BOTARGET  values(botarget_seq.nextval, '????????????',2);
insert into BOTARGET  values(botarget_seq.nextval, '7498?????????',3);
insert into BOTARGET  values(botarget_seq.nextval, '3929?????????',3);
insert into BOTARGET  values(botarget_seq.nextval, '???????????????1',4);
insert into BOTARGET  values(botarget_seq.nextval, '???????????????2',4);

--????????????
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',1,2,119,1,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',1,2,119,2,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',2,2,119,3,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',2,2,119,4,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',3,2,119,5,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',3,2,119,6,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',4,2,119,7,'asd');
insert into calendar values(schedule_seq.nextval, '[119]??????', '2021-07-17 00:00:00', '2021-07-20 00:00:00', 'true','#4ea0ec',4,2,119,8,'asd');

insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',1,2,103,1,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',1,2,103,2,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',2,2,103,3,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',2,2,103,4,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',3,2,103,5,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',3,2,103,6,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',4,2,103,7,'asd');
insert into calendar values(schedule_seq.nextval, '[103]??????', '2021-08-15 00:00:00', '2021-08-18 00:00:00', 'true','#4ea0ec',4,2,103,8,'asd');

select * from calendar; 
--????????????
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,1,'asd', 2);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,2,'asd', 3);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,3,'asd', 4);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,4,'asd', 5);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,5,'asd', 6);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,6,'asd', 7);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,7,'asd', 8);
insert into BOOKING values(booking_seq.nextval,119, CURRENT_DATE ,TO_DATE('20210717000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210720000000','YYYY-MM-DD HH24:MI:SS'),0,0,8,'asd', 9);

insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,1,'asd', 10);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,2,'asd', 11);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,3,'asd', 12);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,4,'asd', 13);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,5,'asd', 14);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,6,'asd', 15);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,7,'asd', 16);
insert into BOOKING values(booking_seq.nextval,103, CURRENT_DATE ,TO_DATE('20210815000000','YYYY-MM-DD HH24:MI:SS'), TO_DATE('20210818000000','YYYY-MM-DD HH24:MI:SS'),0,0,8,'asd', 17);


--?????? ?????? ?????? ?????? 
select * from docfol;
insert into DOCFOL
values(DOCFOL_SEQ.nextval, '????????????1');
insert into DOCFOL
values(DOCFOL_SEQ.nextval, '????????????2');
insert into DOCFOL
values(DOCFOL_SEQ.nextval, '????????????3');


--?????? ?????? ?????? ?????? (no, ?????? ?????? ????????????)
--SEQ strat 100
select * from docsty;
insert into DOCSTY
values(DOCSTY_SEQ.nextval, '???????????????', '				
			
                <br>
            	<table class="doc-table">
					<tr>
						<td class="doc-td" rowspan="6">?????? ??????</td>
						<td class="doc-td" rowspan="4">???????????????</td>
						<td class="doc-td">??????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>
					<tr>
						<td class="doc-td">??????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>
					<tr>
						<td class="doc-td">???????????????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>
					<tr>
						<td class="doc-td">???????????????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>
					<tr>
						<td class="doc-td" colspan="2">????????????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>
					<tr>
						<td class="doc-td" colspan="2">???????????????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>
					<tr>
						<td class="doc-td" colspan="3">????????????</td>
						<td class="doc-td2" colspan="3"><input type="text"
							class="doc-input2"></td>
					</tr>

				</table>
				<br>', 1);
insert into DOCSTY
values(DOCSTY_SEQ.nextval, '???????????????', '<br>			
			
				<br>
				<table class="doc-table">
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td">??????</td>
						<td class="doc-td">??????</td>
						<td class="doc-td">??????</td>
						<td class="doc-td">??????</td>
						<td class="doc-td">??????</td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">/</td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
						<td class="doc-td3"><input type="text"></td>
					</tr>
					<tr>
						<td class="doc-td">????????????</td>
						<td class="doc-td2" colspan="5"><input type="text"
							class="doc-input2"></td>
					</tr>
				</table>
				<br>', 1);
insert into DOCSTY
values(DOCSTY_SEQ.nextval, '???????????????1', '', 2);
insert into DOCSTY
values(DOCSTY_SEQ.nextval, '???????????????2', '', 2);
insert into DOCSTY
values(DOCSTY_SEQ.nextval, '???????????????3', '', 3);
insert into DOCSTY
values(DOCSTY_SEQ.nextval, '???????????????4', '', 3);


-- ?????? ?????? ??????
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 101, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 102, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 103, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 104, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 105, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 106, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 107, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 108, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 119, '?????????1.jpg');
insert into APPSTAMP
values (APPSTAMP_SEQ.nextval, 120, '?????????1.jpg');


--?????? ?????? ?????? 

insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????1', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????2', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????3', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????4', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????5', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????6', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????7', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????8', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????9', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????10', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????12', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????13', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????14', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????15', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????16', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, default);



insert into APPLINE
values (APPLINE_SEQ.nextval, 1, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 2, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 3, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 4, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 5, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 6, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 7, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 8, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 9, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 10, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 11, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 12, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 13, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 14, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 15, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 16, 101, '0', 0);
insert into APPLINE
values (APPLINE_SEQ.nextval, 17, 101, '0', 0);


insert into RELINE
values (RELINE_SEQ.nextval, 1, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 2, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 3, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 4, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 5, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 6, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 7, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 8, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 9, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 10, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 11, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 12, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 13, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 14, 101, '0');
insert into RELINE
values (RELINE_SEQ.nextval, 15, 101, '0');

insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????18', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????19', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????20', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????21', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????22', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????23', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????24', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????25', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????26', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????27', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????28', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????29', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????30', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????31', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '1', '0', 120, 100, default);

insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????32', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????33', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????34', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????35', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????36', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????37', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????38', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????39', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????40', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????41', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????42', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????43', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????44', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????45', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '2', '0', 120, 100, default);


insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????1', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????2', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????3', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????4', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????5', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????6', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????7', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????8', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????9', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????10', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????12', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????13', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????14', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????15', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????16', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');
insert into ELIMP
values (ELIMP_SEQ.nextval, CURRENT_DATE, '??????????????????17', '["2021/7/28","???????????????","??????","??????","123","","","","","","123"]', 'N', '0', '0', 120, 100, '1');


-- ????????? ??????
INSERT INTO OFBOARDFOL VALUES(1, '????????????');
INSERT INTO OFBOARDFOL VALUES(2, '?????????');
INSERT INTO OFBOARDFOL VALUES(3, '???????????????');
INSERT INTO OFBOARDFOL VALUES(4, '????????????');
INSERT INTO OFBOARDFOL VALUES(OFBOARDFOL_SEQ.nextval, '???????????????');
INSERT INTO OFBOARDFOL VALUES(OFBOARDFOL_SEQ.nextval, '?????????');
INSERT INTO OFBOARDFOL VALUES(OFBOARDFOL_SEQ.nextval, '?????????');
INSERT INTO OFBOARDFOL VALUES(OFBOARDFOL_SEQ.nextval, '?????????');
INSERT INTO OFBOARDFOL VALUES(OFBOARDFOL_SEQ.nextval, '???????????????');

--????????? ?????? ??????
insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210623090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210623210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210623120000','YYYY-MM-DD HH24:MI:SS'),1,'20210623');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210624090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210624210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210624120000','YYYY-MM-DD HH24:MI:SS'),1,'20210624');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210625090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210625210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210625120000','YYYY-MM-DD HH24:MI:SS'),1,'20210625');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210628090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210628210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210628120000','YYYY-MM-DD HH24:MI:SS'),1,'20210628');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210629090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210629210000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210629120000','YYYY-MM-DD HH24:MI:SS'),1,'20210629');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210630180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210630090000','YYYY-MM-DD HH24:MI:SS'),0,'20210630');


insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210705180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210705090000','YYYY-MM-DD HH24:MI:SS'),0,'20210705');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210706180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210706090000','YYYY-MM-DD HH24:MI:SS'),0,'20210706');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210719180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210719090000','YYYY-MM-DD HH24:MI:SS'),0,'20210719');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210720180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210720090000','YYYY-MM-DD HH24:MI:SS'),0,'20210720');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210721180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210721090000','YYYY-MM-DD HH24:MI:SS'),0,'20210721');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210722180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210722090000','YYYY-MM-DD HH24:MI:SS'),0,'20210722');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210723180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210723090000','YYYY-MM-DD HH24:MI:SS'),0,'20210723');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210726180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210726090000','YYYY-MM-DD HH24:MI:SS'),0,'20210726');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210727180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210727090000','YYYY-MM-DD HH24:MI:SS'),0,'20210727');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210728180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210728090000','YYYY-MM-DD HH24:MI:SS'),0,'20210728');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210729180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210729090000','YYYY-MM-DD HH24:MI:SS'),0,'20210729');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210730180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210730090000','YYYY-MM-DD HH24:MI:SS'),0,'20210730');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210802180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210802090000','YYYY-MM-DD HH24:MI:SS'),0,'20210802');


insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210803180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210803090000','YYYY-MM-DD HH24:MI:SS'),0,'20210803');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210804180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210804090000','YYYY-MM-DD HH24:MI:SS'),0,'20210804');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210805180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210805090000','YYYY-MM-DD HH24:MI:SS'),0,'20210805');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210806090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210806200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210806110000','YYYY-MM-DD HH24:MI:SS'),1,'20210806');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210809110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210809180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210809070000','YYYY-MM-DD HH24:MI:SS'),0,'20210809');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210810090000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210810200000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210810110000','YYYY-MM-DD HH24:MI:SS'),1,'20210810');

insert into attendday values(attendday_seq.nextval,101, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,102, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,103, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,104, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,105, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,106, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,107, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,108, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,109, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,110, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,111, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,112, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,113, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,114, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,115, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,116, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,117, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,118, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,119, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,120, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,121, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,122, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,123, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,124, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,125, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,126, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,127, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,128, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,129, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,130, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,131, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,132, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,133, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,134, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,135, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,136, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,137, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,138, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,139, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,140, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,141, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,142, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,143, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,144, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,145, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,146, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,147, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,148, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,149, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,150, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,151, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,152, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,153, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,154, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,155, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,156, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,157, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,158, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,159, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,160, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,161, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,162, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,163, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,164, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,165, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,166, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,167, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,168, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');
insert into attendday values(attendday_seq.nextval,169, TO_DATE('20210811110000','YYYY-MM-DD HH24:MI:SS') ,
TO_DATE('20210811180000','YYYY-MM-DD HH24:MI:SS'),TO_DATE('20210811070000','YYYY-MM-DD HH24:MI:SS'),0,'20210811');


--?????? ??????
insert into BREAKTHEME values(BREAKTHEME_seq.nextval,'??????');
insert into BREAKTHEME values(BREAKTHEME_seq.nextval,'????????????');


select NVL(TRUNC(sum((ATTENDANCE_DAY_OFF_HOUR -ATTENDANCE_DAY_ON_HOUR)*24*60*60)),0)   from ATTENDDAY
		where ATTENDANCE_DAY_OFF_HOUR is not null and ATTENDANCE_DAY_REGDATE  between TRUNC(CURRENT_DATE,'d') and CURRENT_DATE and EMP_NO=117;

--?????? ??????
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-01', '2021-06-02','122','2');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-05', '2021-06-06','122','2');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-08', '2021-06-09','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-11', '2021-06-12','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-13', '2021-06-13','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-15', '2021-06-16','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-18', '2021-06-19','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-21', '2021-06-22','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-23', '2021-06-24','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-06-27', '2021-06-29','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-07-01', '2021-07-03','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-07-05', '2021-07-06','122','1');
insert into BREAKDAY values(BREAKDAY_seq.nextval, '2021-07-10', '2021-07-12','122','1');

--?????? ??????
insert into ATTEND values(ATTEND_seq.nextval, 122,default,12,2,30,7);
insert into ATTEND values(ATTEND_seq.nextval, 101,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 102,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 103,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 104,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 105,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 106,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 107,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 108,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 109,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 110,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 111,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 112,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 113,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 114,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 115,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 116,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 117,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 118,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 119,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 120,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 121,default,default,default,default,default);

insert into ATTEND values(ATTEND_seq.nextval, 123,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 124,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 125,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 126,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 127,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 128,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 129,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 130,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 131,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 132,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 133,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 134,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 135,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 136,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 137,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 138,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 139,default,default,default,default,default);

insert into ATTEND values(ATTEND_seq.nextval, 140,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 141,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 142,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 143,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 144,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 145,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 146,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 147,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 148,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 149,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 150,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 151,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 152,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 153,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 154,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 155,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 156,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 157,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 158,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 159,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 160,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 161,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 162,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 163,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 164,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 165,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 166,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 167,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 168,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 169,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 170,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 171,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 172,default,default,default,default,default);
insert into ATTEND values(ATTEND_seq.nextval, 173,default,default,default,default,default);



--?????? ??????
insert into mail values (mail_seq.nextVal, '????????? ??????????????????!', '?????????????????????1', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????? ???????????????', '?????????????????????2', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '?????? ?????????????????????', '?????????????????????3', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????? ?????? 2??? ?????????????????????', '?????????????????? ?????? ?????? ???????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '?????????????????????????????????.', '????????? ???????????? ?????? ???????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '?????? ??????????????????.', '??????????????? ?????????19??? ?????? ?????????????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '???????????? ???????????????.', '????????? ?????? ????????? ?????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '??????????????? ????????????', '?????? ????????? ????????????????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '?????? ???????????????', '', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, 'MOU ??????????????????', '??????????????? ???????????? ??????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????? ????????? ??????', '10/11 ?????????????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '9/1?????? ?????? ????????? ???????????????', '????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '?????? ????????? ??????', '?????? ??????????????? ??????????????? ?????????????????????', '102', '100', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '???????????????????????????.', '????????? ????????? -> ??????????????? ???????????????????????????', '102', '100', default, null, null,default, default, 102, default);

insert into mail values (mail_seq.nextval, '????????????1', '?????????????????????1', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????2', '?????????????????????2', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????3', '?????????????????????3', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????4', '?????????????????????4', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????5', '?????????????????????5', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????6', '?????????????????????6', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????7', '?????????????????????7', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????8', '?????????????????????8', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????9', '?????????????????????9', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????10', '?????????????????????10', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????11', '?????????????????????11', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????12', '?????????????????????12', '100', '102', default, null, null,default, default, 102, default);
insert into mail values (mail_seq.nextval, '????????????13', '?????????????????????13', '100', '102', default, null, null,default, default, 102, default);




commit;


drop procedure updateAttendDay;


create or replace procedure updateAttendDay 
(

	p_EMP_NO NUMBER, /* ?????? ?????? */
	p_ATTENDANCE_DAY_ON_HOUR DATE, /* ?????? ?????? */
	p_ATTENDANCE_DAY_OFF_HOUR DATE, /* ?????? ?????? */
	p_ATTENDANCE_DAY_WORK_HOUR DATE, /* ?????? ?????? */
	p_ATTENDANCE_DAY_REGDATE DATE
)
is

    cnt number;
begin
    
    IF p_ATTENDANCE_DAY_ON_HOUR < TO_DATE(TO_CHAR(p_ATTENDANCE_DAY_OFF_HOUR,'yyyy-mm-dd')||' 9:00:00','yyyy-mm-dd hh24:mi:ss') 
        or p_ATTENDANCE_DAY_OFF_HOUR > TO_DATE(TO_CHAR(p_ATTENDANCE_DAY_OFF_HOUR,'yyyy-mm-dd')||' 18:00:00','yyyy-mm-dd hh24:mi:ss') 
    THEN
        update ATTENDDAY set ATTENDANCE_DAY_OFF_HOUR=p_ATTENDANCE_DAY_OFF_HOUR,
		ATTENDANCE_DAY_WORK_HOUR=p_ATTENDANCE_DAY_WORK_HOUR, ATTENDANCE_DAY_HOLIDAY_FLAG = 1
		where EMP_NO=p_EMP_NO and ATTENDANCE_DAY_REGDATE =p_ATTENDANCE_DAY_REGDATE;
    
    ELSE
        update ATTENDDAY set ATTENDANCE_DAY_OFF_HOUR=p_ATTENDANCE_DAY_OFF_HOUR,
		ATTENDANCE_DAY_WORK_HOUR=p_ATTENDANCE_DAY_WORK_HOUR, ATTENDANCE_DAY_HOLIDAY_FLAG = 0
		where EMP_NO=p_EMP_NO and ATTENDANCE_DAY_REGDATE =p_ATTENDANCE_DAY_REGDATE;
    END IF;
    

    commit;

EXCEPTION
    WHEN OTHERS THEN
    raise_application_error(-20001, '?????? ?????? ?????? ???????????? ??????!');
        ROLLBACK;
END;


---?????? ??????
create or replace procedure updateAutoOffHour 
is


begin
        update ATTENDDAY set ATTENDANCE_DAY_OFF_HOUR=TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-mm-dd')||' 18:00:00','yyyy-mm-dd hh24:mi:ss'),
		ATTENDANCE_DAY_WORK_HOUR=TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-mm-dd')||' 18:00:00','yyyy-mm-dd hh24:mi:ss')-ATTENDANCE_DAY_ON_HOUR+ATTENDANCE_DAY_REGDATE
		where ATTENDANCE_DAY_OFF_HOUR IS NULL and ATTENDANCE_DAY_REGDATE =TRUNC(CURRENT_DATE)
        AND ATTENDANCE_DAY_ON_HOUR < TO_DATE(TO_CHAR(ATTENDANCE_DAY_ON_HOUR,'yyyy-mm-dd')||' 18:00:00','yyyy-mm-dd hh24:mi:ss') ;
        
        delete from ATTENDDAY 
        WHERE ATTENDANCE_DAY_OFF_HOUR IS NULL;
    
    

    commit;

EXCEPTION
    WHEN OTHERS THEN
    raise_application_error(-20001, '?????? ?????? ?????? ???????????? ??????!');
        ROLLBACK;
END;





