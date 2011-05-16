#!/usr/bin/perl -w

use strict;

print "-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_pacamls`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;\n\n";

while (<>) {
  chomp;
  next if(/^\s*#/);
  next if(/^\s*$/);
  my @LINE=split(/\,/,$_);
  print "INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES ($LINE[0],$LINE[1],$LINE[2],$LINE[3],$LINE[4]) ;\n";

}

print "\ncommit;\n";
