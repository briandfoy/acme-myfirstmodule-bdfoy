use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::MyFirstModule::BDFOY',
    license             => 'perl',
    dist_author         => q{brian d foy <bdfoy@cpan.org>},
    dist_version_from   => 'lib/Acme/MyFirstModule/BDFOY.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'Acme-MyFirstModule-BDFOY-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
