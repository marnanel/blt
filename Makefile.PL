use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME            => 'blt',
  VERSION_FROM    => 'bin/blt',
  PREREQ_PM       => {
    'Getopt::Long'  => 0,
    'XML::Tiny'     => 0,
    'IO::Scalar'    => 0,
  },
);
