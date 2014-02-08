#
#===============================================================================
#
#         FILE: Dashboard.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 02/08/2014 01:25:39 AM
#     REVISION: ---
#===============================================================================
package Abc::Dashboard;

use strict;
use warnings;
 
use Mojo::Base 'Mojolicious::Controller';

sub show_dashboard {
	my $self = shift;

	$self->render;
}

1;
