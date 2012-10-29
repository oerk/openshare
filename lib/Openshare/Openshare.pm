package Openshare::Openshare;
use Mojo::Base 'Mojolicious::Controller';

sub login {
  my $self = shift;
  $self->render(
    message => 'Welcome to the Mojolicious real-time web framework!');
}

sub page {
  my $self = shift;
  my $page=$self->param('id');
  $self->render(
    message => " page $page !");
}

1;
