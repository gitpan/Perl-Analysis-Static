package Perl::Analysis::Static::Filter::StringLike;
{
  $Perl::Analysis::Static::Filter::StringLike::VERSION = '0.004'; # TRIAL
}
# ABSTRACT: Does the string match this regex?

use Moose;

extends 'Perl::Analysis::Static::Filter';

has 'string' => ( is => 'rw', isa => 'Str' );

sub _filter {
    my ($self, $element) = @_;
    
    return 1 if $element->string() =~ $self->string();
}

sub _set_arguments {
    my ($self, $arguments) = @_;

    $self->string($arguments->[0]);    
}

1;

__END__
=pod

=head1 NAME

Perl::Analysis::Static::Filter::StringLike - Does the string match this regex?

=head1 VERSION

version 0.004

=head1 AUTHOR

Gregor Goldbach <glauschwuffel@nomaden.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Gregor Goldbach.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

