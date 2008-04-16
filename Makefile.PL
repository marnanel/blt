use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME            => 'blt',
  AUTHOR          => 'Thomas Thurman <tthurman@gnome.org>',
  VERSION_FROM    => 'bin/blt',
  PREREQ_PM       => {
    'Getopt::Long'  => 0,
    'XML::Tiny'     => 0,
    'IO::Scalar'    => 0,
  },
  PM              => {
    'lib/App/BLT.pm' => '$(INST_LIBDIR)/App/BLT.pm'
  },
  EXE_FILES       => [ 'bin/blt' ],
);
