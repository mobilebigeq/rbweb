
rename table what_we_do_details to our_mission;


alter table our_mission add column page varchar(255) after description;


alter table md_message add column page varchar(255) after link;

alter table awards_history add column awards_type varchar(255) after description;