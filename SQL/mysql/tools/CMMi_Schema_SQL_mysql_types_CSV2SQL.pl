#!/usr/bin/perl -w

use strict;

print "-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_types`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;\n\n";

while (<>) {
  chomp;
  next if(/^\s*#/);
  next if(/^\s*$/);
  my @LINE=split(/\,/,$_);
  print "INSERT INTO  `cmmi`.`cmmi_types` ( `id`, `version_id`, `type`, `abbreviation`, `comment`) VALUES ($LINE[0],$LINE[1],\'$LINE[2]\',\'$LINE[3]\',\'$LINE[2] ($LINE[3])\') ;\n";

}

print "\ncommit;\n";
