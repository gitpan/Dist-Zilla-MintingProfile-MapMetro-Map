use 5.14.0;

package Dist::Zilla::MintingProfile::MapMetro::Map;
$Dist::Zilla::MintingProfile::MapMetro::Map::VERSION = '0.1300';
# VERSION

use Moose;
with 'Dist::Zilla::Role::MintingProfile::ShareDir';

1;

__END__

=encoding utf-8

=head1 NAME

Dist::Zilla::MintingProfile::MapMetro::Map - Mint a Map::Metro Map distribution

=head1 SYNOPSIS

  $ dzil new -P MapMetro::Map  Map::Metro::Plugin::Map::[Cityname]

=head1 DESCRIPTION

Dist::Zilla::MintingProfile::MapMetro::Map is the easiest way to create a map distribution for L<Map::Metro>.

=head1 SEE ALSO

L<Map::Metro>

L<Map::Metro::Plugin::Map>

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2014 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
