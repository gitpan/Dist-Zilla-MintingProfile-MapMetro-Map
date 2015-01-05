use 5.14.0;

package Dist::Zilla::Plugin::MapMetro::MintMapFiles;
$Dist::Zilla::Plugin::MapMetro::MintMapFiles::VERSION = '0.1300';
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';
with 'Dist::Zilla::Role::TextTemplate';

override 'merged_section_data' => sub {
    my $self = shift;

    my $data = super;
    for my $name (keys %{ $data }) {
        my $city = $self->zilla->name;
        $city =~ s{^Map-Metro-Plugin-Map-}{};

        $data->{ $name } = \$self->fill_in_string(
            ${ $data->{ $name } }, {
                dist => \($self->zilla),
                city => \$city,
                plugin => \($self),
            },
        );
    }
    return $data;
};

1;

__DATA__
__[ Changes ]__
Revision history for {{ $dist->name }}

{{ '{{$NEXT}}' }}
   - Initial release
__[ .gitignore ]__
/{{ $dist->name }}-*
/.build
/_build*
/Build
MYMETA.*
!META.json
/.prove
__[ cpanfile ]__
requires 'perl', '5.014000';

requires 'Moose::Role', '2.0000';
requires 'Map::Metro', '0.1900';
__[ t/basic.t ]__
use strict;
use Test::More;

use Map::Metro;

my $graph = Map::Metro->new('{{ $city }}')->parse;
my $routing = $graph->routing_for(qw/1 3/);

is $routing->get_route(0)->get_step(0)->origin_line_station->station->name, '<<Name of first station in route>>', 'Found route';

# more tests

done_testing;
__[ dist.ini ]__
name = {{ $dist->name }}
author = {{ $dist->authors->[0] }}
license = Perl_5
copyright_holder = {{ $dist->authors->[0] }}

[@Iller]
is_private = 0

NextVersion::Semantic.major =
NextVersion::Semantic.minor = API Changes, New Features, Enhancements
NextVersion::Semantic.revision = Revision, Bug Fixes, Documentation, Meta
NextVersion::Semantic.format = %d.%02d%02d
NextVersion::Semantic.numify_version = 0

[MapMetro::MakeGraphViz]

[MapMetro::MakeLinePod]
