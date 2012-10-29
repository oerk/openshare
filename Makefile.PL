#!/usr/bin/env perl
use ExtUtils::MakeMaker;

WriteMakefile(
  PREREQ_PM => {'Mojolicious' => '3.0',
		}
);
