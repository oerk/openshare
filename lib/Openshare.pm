package Openshare;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('home#welcome');
  $r->get('/books')->to('books#showbook');
  $r->get('/page/:id')->to('Openshare#page');
  $r->get('/login')->to('Openshare#login');


}

1;
