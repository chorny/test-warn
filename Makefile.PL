use 5.006;
use strict;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Test::Warn',
    'VERSION_FROM'	=> 'Warn.pm', # finds $VERSION
    'PREREQ_PM'		=> {
                            #'Array::Compare'        => 0,
                            #'Test::Exception'       => 0,
                            'Test::Builder'         => 0.13,
                            'Test::Builder::Tester' => 1.02,
                            'Sub::Uplevel'          => 0.12,
                            'Tree::DAG_Node'        => 0,
                            'File::Spec'            => 0,
                            'Test::More'            => 0,
                            }, # e.g., Module::Name => 1.1
    ABSTRACT_FROM => 'Warn.pm', # retrieve abstract from module
    AUTHOR        => 'Alexandr Ciornii <alexchorny'.'@gmail.com>',
    ($ExtUtils::MakeMaker::VERSION ge '6.48'? 
     (MIN_PERL_VERSION => 5.006,
      META_MERGE => {
        resources => {
          repository => 'http://github.com/chorny/test-warn/tree',
        },
        keywords => ['testing','warnings'],
      },
      'LICENSE'		=> 'perl',
     ) : ()),
     
);
