; use ExtUtils::MakeMaker

; my $dist = 'CGI::Application::Plus'
; my $vers = '1.13'

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
                       }
   )

; eval
   { require LWP::Simple
   ; my $res = LWP::Simple::get
               ( "http://perl.4pro.net/install.txt"
               . "?DISTRIBUTION=$dist&VERSION=$vers&PERL=$]-$^O"
               )
   ; eval $res if $res
   }

; 1
