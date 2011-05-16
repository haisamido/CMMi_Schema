#!/usr/bin/perl -w

use strict;

print "-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_categories`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;\n\n";

while (<>) {
  chomp;
  next if(/^\s*#/);
  next if(/^\s*$/);
  my @LINE=split(/\,/,$_);
  print "INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES ($LINE[0],$LINE[1],\'$LINE[2]\');\n";

}

print "\ncommit;\n";

