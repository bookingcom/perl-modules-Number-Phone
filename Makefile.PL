use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Number::Phone',
    META_MERGE => {
        license => 'other',
        resources => {
            repository => 'https://github.com/DrHyde/perl-modules-Number-Phone',
            bugtracker => 'https://github.com/DrHyde/perl-modules-Number-Phone/issues'
        }
    },
  VERSION_FROM => 'lib/Number/Phone.pm',
  PREREQ_PM    => {
    'Scalar::Util'  => 0,
    'Test::More'    => '0.96', # need done_testing (0.88) and subtests (0.95_01)
    'Digest::MD5'   => 0,
    'DBM::Deep'     => 2.0008,
    'Test::utf8'    => 0,
  },
  dist => {
    PREOP => "./build-data.sh"
  },
  realclean => {
    FILES => "*.xls sabc.txt codelist.zip cover_db"
  },
);
