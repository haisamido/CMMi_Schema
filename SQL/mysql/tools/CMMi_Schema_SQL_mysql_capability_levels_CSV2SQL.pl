#!/usr/bin/perl -w

use strict;

print "-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_capability_levels`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;\n\n";

while (<>) {
  chomp;
  next if(/^\s*#/);
  next if(/^\s*$/);
  my @LINE=split(/\,/,$_);
  print "INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES ($LINE[0],$LINE[1],\'$LINE[2]\',\'$LINE[3]\') ;\n";

}

print "\ncommit;\n";
