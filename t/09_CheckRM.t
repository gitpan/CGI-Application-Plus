#!perl -w
; use strict
; use Test::More tests => 3
; use CGI
; use CGI::Application::Plus::Util
; chdir './t'

; SKIP:
   { skip("Data::FormValidator is not installed: try 'install Bundle::CGI::Application::Magic'", 3 )
     unless eval
             { require Data::FormValidator
             }

   ; eval { require 'test/AppCheckRM.pm' }

   # Prevent output to STDOUT
   ; $ENV{CGI_APP_RETURN_ONLY} = 1;

   # check method and props
   ; my $ap1 = ApplMagic1->new()
   ; my $o1 = $ap1->run()
   ; ok( $ap1->can('checkRM') )
   ; ok( $ap1->can('dfv_defaults') )
   ; ok( $ap1->can('dfv_results') )
   }
