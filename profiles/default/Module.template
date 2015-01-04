use 5.14.0;

package Map::Metro::Plugin::Map::{{ $name =~ s{Map::Metro::Plugin::Map::}{}g; $name }};

# VERSION

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-{{ $name =~ s{Map::Metro::Plugin::Map::}{}g; lc $name }}.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=encoding utf-8

=head1 NAME

Map::Metro::Plugin::Map::{{ $name =~ s{Map::Metro::Plugin::Map::}{}g; $name }} - Map::Metro map for {{ $name =~ s{Map::Metro::Plugin::Map::}{}g; $name }}

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('{{ $name =~ s{Map::Metro::Plugin::Map::}{}g; $name }}')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

...

=head1 AUTHOR

{{(my $a = $dist->authors->[0]) =~ s/([<>])/"E<" . {qw(< lt > gt)}->{$1} . ">"/eg; $a}}

=head1 COPYRIGHT

Copyright {{$dist->copyright_year}} - {{(my $a = $dist->authors->[0]) =~ s/\s*<.*$//; $a}}

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
