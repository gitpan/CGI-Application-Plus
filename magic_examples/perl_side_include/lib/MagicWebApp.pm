; package MagicWebApp
; use base 'Apache::Application::Magic'

# defaults are fine so nothing to define here

; package MagicWebApp::Lookups
# all the runtime values of variables and subs
# will be substituted in any template that uses
# a label or block with a matching identifier (name)
# look at the templates to see how they are used

; our $app_name = 'MagicWebApp 1.0'

; sub Time { scalar localtime }

; sub runmode { $_[0]->runmode }

; sub ENV_table
   { my @table
   ; while (my @line = each %ENV)
      { push @table, \@line
      }
   ; \@table
   }
   
; sub REQUEST_URI { $ENV{REQUEST_URI} }
