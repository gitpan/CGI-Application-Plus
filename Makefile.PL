# This file uses the "Perlish" coding style
# please read http://perl.4pro.net/perlish_coding_style.html

; use 5.006_001
; use ExtUtils::MakeMaker

; my $dist = 'CGI::Application::Plus'
; my $vers = '1.17'

; WriteMakefile
   ( NAME           => $dist
   , VERSION        => $vers
   , ( $] ge '5.005' )
     ? ( AUTHOR     => 'Domizio Demichelis - perl.4pro.net'
       , ABSTRACT   => ' CGI::Application rewriting with several pluses'
       )
     : ()
   , PREREQ_PM      => { 'Class::constr'     => '1.6'
                       , 'Class::props'      => '1.6'
                       , 'Object::props'     => '1.6'
                       , 'Object::groups'    => '1.6'
                       }
   )


; 1
