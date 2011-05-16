#!/usr/bin/perl -w

use strict;

print "-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_process_areas`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;\n\n";

while (<>) {
  chomp;
  next if(/^\s*#/);
  next if(/^\s*$/);
  my @LINE=split(/\,/,$_);
  print "INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES ($LINE[0],$LINE[1],\'$LINE[2]\',\'$LINE[3]\',\'$LINE[2] ($LINE[3])\') ;\n";

}

print "\ncommit;\n";

