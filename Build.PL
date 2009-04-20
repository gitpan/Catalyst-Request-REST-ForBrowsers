use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new
    ( module_name        => 'Catalyst::Request::REST::ForBrowsers',
      license            => 'perl',
      requires           => { 'Catalyst::Action::REST' => '0.41',
                              'Moose'                  => '0',
                            },
      build_requires     => { 'HTTP::Headers' => '0',
                              'Test::More'    => '0',
                            },
      create_makefile_pl => 'passthrough',
      create_readme      => 1,
      sign               => 1,
    );

$builder->create_build_script();
