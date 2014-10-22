package Perl::Analysis::Static::Question::Lexical::NameLike;
# ABSTRACT: Does the name of the lexical variable match this regex?

use Moose;

extends 'Perl::Analysis::Static::Question';

sub set_arguments {
	my ($self, $arguments) = @_;
	$self->class('Perl::Analysis::Static::Element::Lexical');
	$self->filter(    ['NameLike'] );
	$self->arguments( [split(/:/, $arguments)] );
}

1;

__END__
=pod

=head1 NAME

Perl::Analysis::Static::Question::Lexical::NameLike - Does the name of the lexical variable match this regex?

=head1 VERSION

version 0.003

=head1 AUTHOR

Gregor Goldbach <glauschwuffel@nomaden.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Gregor Goldbach.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

