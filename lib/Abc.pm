package Abc;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  $self->secrets(['Cats', 'Dogs', 'Fire', 'Moon']);
  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');
  $self->plugin(Config => {file => 'conf/cat_shop.conf'} );

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');
  $r->get('/dashboard')->to('dashboard#show_dashboard');
}

1;
