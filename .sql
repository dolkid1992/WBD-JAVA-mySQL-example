USE my_Database;

DROP TABLE contacts;
DROP TABLE supplires;

CREATE TABLE contacts(
contacts_id INT(11) NOT NULL AUTO_INCREMENT, 
last_name varchar(30) NOT NULL,
first_name varchar(25),
birthday date,
constraint contacts_pk primary key (contacts_id)
);

CREATE TABLE supplires(
supplier_id int(11) NOT NULL auto_increment,
supplier_name varchar(50) NOT NULL,
supplier_rep varchar(30) NOT NULL default 'TBD',
constraint supplires_pk primary key (supplier_id)
);

select * from contacts;

ALTER TABLE contacts
	add last_name1 varchar(40) NOT NULL
		after contacts_id,
	add first_name2 varchar(35) null
		after last_name;
        
alter table contacts
	drop column first_name2;
    
alter table supplires
	change column supplier_rep rep_supplier
    varchar(30) not null;
    
alter table contacts
	rename to contact;