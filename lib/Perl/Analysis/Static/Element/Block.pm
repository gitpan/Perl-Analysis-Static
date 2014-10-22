package Perl::Analysis::Static::Element::Block;
# ABSTRACT: a block

use Moose;

extends 'Perl::Analysis::Static::Element';

sub stringify {
    my ($self) = @_;
    
    return $self->from.' - '.$self->to;
}

1;

__END__
=pod

=head1 NAME

Perl::Analysis::Static::Element::Block - a block

=head1 VERSION

version 0.003

=head1 AUTHOR

Gregor Goldbach <glauschwuffel@nomaden.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Gregor Goldbach.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

