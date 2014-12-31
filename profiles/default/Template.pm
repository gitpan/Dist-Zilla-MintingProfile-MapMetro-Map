use 5.14.0;

package Map::Metro::Plugin::Map::<<Cityname>>;

# VERSION

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-<<cityname>>.metro',
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

Map::Metro::Plugin::Map::<<Cityname>> - Map::Metro map for <<Cityname>>

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('<<Cityname>>')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

...

=head1 AUTHOR

...

=head1 COPYRIGHT

Copyright 2015 - ...

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
