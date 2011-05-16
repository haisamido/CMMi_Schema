#!/usr/bin/perl -w

use strict;

print "-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_maturity_levels`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;\n\n";

while (<>) {
  chomp;
  next if(/^\s*#/);
  next if(/^\s*$/);
  my @LINE=split(/\,/,$_);
  print "INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES ($LINE[0],$LINE[1],\'$LINE[2]\',\'$LINE[3]\') ;\n";

}

print "\ncommit;\n";
