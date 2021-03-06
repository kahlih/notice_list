DECLARE
  empid ACTIVE_EMPLOYEES.employee_id%TYPE;
  userid "User".user_id%TYPE;
BEGIN
INSERT INTO ACTIVE_EMPLOYEES(employee_name, employee_status, employee_lab, employee_division) VALUES('Test Admin', 'A', 'ITS', 'MISS');
SELECT employee_id INTO empid FROM ACTIVE_EMPLOYEES WHERE employee_name = 'Test Admin';
INSERT INTO "User"(IS_ADMIN, ACTIVE_EMPLOYEES_EMPLOYEE_ID, APEX_USER) VALUES('Y', empid, v('APP_USER'));
SELECT user_id INTO userid FROM "User" WHERE "User".active_employees_employee_id = empid;
UPDATE ACTIVE_EMPLOYEES SET user_user_id = userid WHERE employee_id = empid;
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Signal_Physics_Division', 'SPD', 'Notice list for all Signal Physics Division (SPD) employees', 'sig_phys', 'I', '4/27/2015');
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Space_Geophysics_Lab', 'SGL', 'Notice list for all Space and Geophysics Lab (SGL) employees', 'spc_geo_lab', 'A', '4/28/2015');
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Environmental_Sciences', 'ESL', 'Notice list for all Environmental Science lab (ESL) employees', 'env_lab', 'A', '4/28/2015');
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Advanced Technology', 'ATL', 'Notice list for all Advanced Technology (ATL) employees', 'at_lab', 'A', '4/28/2015');
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Acoustic Technology', 'ACS', 'Notice list for Advanced Technology Employees working on acoustic technology', 'acs_lab', 'A', '4/28/2015');
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Human Resources', 'HR', 'Notice list for all recruiters and other people classified under human resources', 'HR', 'A', '4/28/2015');
INSERT INTO NOTICE_LISTS(LIST_NAME, OWNERSHIP_DIV_CODE, LIST_DESCRIPTION, EXTERNAL_VIEW_NAME, LIST_STATUS, STATUS_EFF_DATE) VALUES('Information Technology Services', 'ITS', 'Notice list for all IT personnel', 'ITS', 'A', '4/28/2015');
END
