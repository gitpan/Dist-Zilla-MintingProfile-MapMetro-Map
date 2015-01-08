requires 'perl', '5.014000';
requires 'Moose', '2.0000';
requires 'Dist::Zilla', '5.000';

requires 'Dist::Zilla::Plugin::Git::GatherDir';
requires 'Dist::Zilla::Plugin::CopyFilesFromBuild';
requires 'Dist::Zilla::Plugin::ReversionOnRelease';
requires 'Dist::Zilla::Plugin::OurPkgVersion';
requires 'Dist::Zilla::Plugin::NextRelease';
requires 'Dist::Zilla::Plugin::PreviousVersion::Changelog';
requires 'Dist::Zilla::Plugin::NextVersion::Semantic';
requires 'Dist::Zilla::Plugin::Git::Check';
requires 'Dist::Zilla::Plugin::MapMetro::MakeGraphViz';
requires 'Dist::Zilla::Plugin::GithubMeta';
requires 'Dist::Zilla::Plugin::ReadmeAnyFromPod';
requires 'Dist::Zilla::Plugin::MetaNoIndex';
requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile';
requires 'Dist::Zilla::Plugin::ModuleBuildTiny';
requires 'Dist::Zilla::Plugin::MetaJSON';
requires 'Dist::Zilla::Plugin::ContributorsFromGit';
requires 'Dist::Zilla::Plugin::Test::EOL';
requires 'Dist::Zilla::Plugin::PodSyntaxTests';
requires 'Dist::Zilla::Plugin::MetaYAML';
requires 'Dist::Zilla::Plugin::License';
requires 'Dist::Zilla::Plugin::ExtraTests';
requires 'Dist::Zilla::Plugin::ShareDir';
requires 'Dist::Zilla::Plugin::Manifest';
requires 'Dist::Zilla::Plugin::ManifestSkip';
requires 'Dist::Zilla::Plugin::CheckChangesHasContent';
requires 'Dist::Zilla::Plugin::TestRelease';
requires 'Dist::Zilla::Plugin::ConfirmRelease';
requires 'Dist::Zilla::Plugin::UploadToCPAN';
requires 'Dist::Zilla::Plugin::Git::Commit';
requires 'Dist::Zilla::Plugin::Git::Tag';
requires 'Dist::Zilla::Plugin::Git::Push';

on 'test' => sub {
    requires 'Test::NoTabs';
};
