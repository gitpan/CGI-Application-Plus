# This file uses the "Perlish" coding style
# please read http://perl.4pro.net/perlish_coding_style.html

; use 5.006_001
; use ExtUtils::MakeMaker

; my $pm = 'lib/CGI/Application/Plus.pm'

; WriteMakefile
   ( NAME           => 'CGI::Application::Plus'
   , VERSION_FROM   => $pm
   , ( $] ge '5.005' )
     ? ( AUTHOR     => 'Domizio Demichelis - perl.4pro.net'
       , ABSTRACT_FROM   => $pm
       )
     : ()
   , PREREQ_PM      => { 'Class::constr'     => '1.6'
                       , 'Class::props'      => '1.6'
                       , 'Object::props'     => '1.6'
                       , 'Object::groups'    => '1.6'
                       }
   )

; 1


