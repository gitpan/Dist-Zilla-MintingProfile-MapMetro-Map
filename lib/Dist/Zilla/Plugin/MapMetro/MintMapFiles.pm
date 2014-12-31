use 5.14.0;

package Dist::Zilla::Plugin::MapMetro::MintMapFiles;
$Dist::Zilla::Plugin::MapMetro::MintMapFiles::VERSION = '0.1000';
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';
with 'Dist::Zilla::Role::TextTemplate';

override 'merged_section_data' => sub {
    my $self = shift;

    my $data = super;
    for my $name (keys %{ $data }) {
        $data->{ $name } = \$self->fill_in_string(
            ${ $data->{ $name } }, {
                dist => \($self->zilla),
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
__[ share/map-cityname.metro ]__
--stations

--lines

--transfers

--segments
__[ t/basic.t ]__
use strict;
use Test::More;

use Map::Metro;

my $graph = Map::Metro->new('<<Your City>>')->parse;
my $routing = $graph->routing_for(qw/1 3/);

is $routing->get_route(0)->get_step(0)->origin_line_station->station->name, '<<Name of first station in route>>', 'Found route';

# more tests

done_testing;
__[ dist.ini ]__
name = {{ $dist->name }}
author = {{ $dist->authors->[0] }}
license = Perl_5
copyright_holder = {{ $dist->authors->[0] }}

[Git::GatherDir]
exclude_filename = Build.PL
exclude_filename = META.json
exclude_filename = LICENSE
exclude_filename = README.md

[CopyFilesFromBuild]
copy = META.json
copy = LICENSE
copy = Build.PL

[ReversionOnRelease]
prompt = 1

[OurPkgVersion]

[NextRelease]
format = %v  %{yyyy-MM-dd HH:mm:ss VVV}d

[PreviousVersion::Changelog]
[NextVersion::Semantic]
major =
minor = API Changes, New Features, Enhancements
revision = Revision, Bug Fixes, Documentation, Meta
format = %d.%02d%02d
numify_version = 0

[Git::Check]
allow_dirty = dist.ini
allow_dirty = Changes
allow_dirty = META.json
allow_dirty = README.md
allow_dirty = Build.PL

[ReadmeAnyFromPod]
filename = README.md
type = markdown
location = root

[MetaNoIndex]
directory = t
directory = xt
directory = inc
directory = share
directory = eg
directory = examples

[Prereqs::FromCPANfile]

[ModuleBuildTiny]

[MetaJSON]

[ContributorsFromGit]

[Test::EOL]
[PodSyntaxTests]

[MetaYAML]

[License]

[ExtraTests]

[ShareDir]

[Manifest]

[ManifestSkip]

[CheckChangesHasContent]

[TestRelease]

[ConfirmRelease]

[UploadToCPAN]

[Git::Commit]
commit_msg = %v
allow_dirty = dist.ini
allow_dirty = Changes
allow_dirty = META.json
allow_dirty = README.md
allow_dirty = Build.PL

[Git::Tag]
tag_format = %v
tag_message =

[Git::Push]
remotes_must_exist = 0
