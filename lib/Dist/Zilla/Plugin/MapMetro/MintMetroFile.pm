use 5.14.0;

package Dist::Zilla::Plugin::MapMetro::MintMetroFile;
$Dist::Zilla::Plugin::MapMetro::MintMetroFile::VERSION = '0.1200';
use Moose;
with 'Dist::Zilla::Role::FileGatherer';

sub gather_files {
    my $self = shift;

    $self->add_file(Dist::Zilla::File::InMemory->new({
        name => sprintf ('share/map-%s.metro', lc $self->city_name),
        content => $self->map_contents,
    }));
}

sub city_name {
    my $self = shift;
    my $city = $self->zilla->name;
    $city =~ s{^Map-Metro-Plugin-Map-}{};
    return $city;
}

sub map_contents {
return q{--stations

--lines

--transfers

--segments
};
}

1;
