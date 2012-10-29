package Openshare::Books;
use Mojo::Base 'Mojolicious::Controller';

sub showbook{
  my $self = shift;
  $self->render(
    message => 'Welcome to the real-time books!',
    );
}

1;
