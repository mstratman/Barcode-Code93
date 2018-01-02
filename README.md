# NAME

Barcode::Code93 - Generate data for Code 93 barcodes

# VERSION

version 0.05

# SYNOPSIS

    use Barcode::Code93;
    my $data = Barcode::Code93->new->barcode('MONKEY');
    print for map { $_ ? "#" : ' ' } @$data;

# DESCRIPTION

This class is used to generate data for Code 93 barcodes. It is primarily
useful as a data source for barcode modules that do rendering,
such as [HTML::Barcode::Code93](https://metacpan.org/pod/HTML::Barcode::Code93).  You can easily make a version that
renders an image, PDF, or anything else.

# METHODS

## new

Instantiate a new Barcode::Code93 object.

## barcode ($text)

Generate barcode data representing the `$text` string.  This returns
an array (or arrayref in scalar context) containing true and false values
that represent lines and spaces.

## calculateSums

Method for **INTERNAL USE**.

# AUTHOR

Chris DiMartino `<chris DOT dimartino AT gmail DOT com`> ([GD::Barcode::Code93](https://metacpan.org/pod/GD::Barcode::Code93), from which this distribution originates)

Mark A. Stratman, `<stratman at gmail.com>`

Jan Bieron [https://github.com/bieron](https://github.com/bieron)

# CONTRIBUTERS

The [GD::Barcode::Code93](https://metacpan.org/pod/GD::Barcode::Code93) module, from which this module originates, was based on code provided by Kawai Takanori. Japan.

The [GD::Barcode::Code93](https://metacpan.org/pod/GD::Barcode::Code93) module was written by Chris DiMartino, 2004. Thanks to Lobanov Igor, Joel Richard, and Joshua Fortriede for their excellent Bug Reports and patches. All rights reserved.

# SOURCE REPOSITORY

[http://github.com/mstratman/Barcode-Code93](http://github.com/mstratman/Barcode-Code93)

# SEE ALSO

- [GD::Barcode::Code93](https://metacpan.org/pod/GD::Barcode::Code93)
- [HTML::Barcode::Code93](https://metacpan.org/pod/HTML::Barcode::Code93)

# LICENSE AND COPYRIGHT

Copyright 2011 the AUTHORs and CONTRIBUTERS listed above.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

# AUTHOR

Mark A. Stratman <stratman@gmail.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Mark A. Stratman.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

# SUPPORT

## Perldoc

You can find documentation for this module with the perldoc command.

    perldoc Barcode::Code93

## Websites

The following websites have more information about this module, and may be of help to you. As always,
in addition to those websites please use your favorite search engine to discover more resources.

- MetaCPAN

    A modern, open-source CPAN search engine, useful to view POD in HTML format.

    [https://metacpan.org/release/Barcode-Code93](https://metacpan.org/release/Barcode-Code93)

- Search CPAN

    The default CPAN search engine, useful to view POD in HTML format.

    [http://search.cpan.org/dist/Barcode-Code93](http://search.cpan.org/dist/Barcode-Code93)

- RT: CPAN's Bug Tracker

    The RT ( Request Tracker ) website is the default bug/issue tracking system for CPAN.

    [https://rt.cpan.org/Public/Dist/Display.html?Name=Barcode-Code93](https://rt.cpan.org/Public/Dist/Display.html?Name=Barcode-Code93)

- AnnoCPAN

    The AnnoCPAN is a website that allows community annotations of Perl module documentation.

    [http://annocpan.org/dist/Barcode-Code93](http://annocpan.org/dist/Barcode-Code93)

- CPAN Ratings

    The CPAN Ratings is a website that allows community ratings and reviews of Perl modules.

    [http://cpanratings.perl.org/d/Barcode-Code93](http://cpanratings.perl.org/d/Barcode-Code93)

- CPANTS

    The CPANTS is a website that analyzes the Kwalitee ( code metrics ) of a distribution.

    [http://cpants.cpanauthors.org/dist/Barcode-Code93](http://cpants.cpanauthors.org/dist/Barcode-Code93)

- CPAN Testers

    The CPAN Testers is a network of smoke testers who run automated tests on uploaded CPAN distributions.

    [http://www.cpantesters.org/distro/B/Barcode-Code93](http://www.cpantesters.org/distro/B/Barcode-Code93)

- CPAN Testers Matrix

    The CPAN Testers Matrix is a website that provides a visual overview of the test results for a distribution on various Perls/platforms.

    [http://matrix.cpantesters.org/?dist=Barcode-Code93](http://matrix.cpantesters.org/?dist=Barcode-Code93)

- CPAN Testers Dependencies

    The CPAN Testers Dependencies is a website that shows a chart of the test results of all dependencies for a distribution.

    [http://deps.cpantesters.org/?module=Barcode::Code93](http://deps.cpantesters.org/?module=Barcode::Code93)

## Bugs / Feature Requests

Please report any bugs or feature requests by email to `bug-barcode-code93 at rt.cpan.org`, or through
the web interface at [https://rt.cpan.org/Public/Bug/Report.html?Queue=Barcode-Code93](https://rt.cpan.org/Public/Bug/Report.html?Queue=Barcode-Code93). You will be automatically notified of any
progress on the request by the system.

## Source Code

The code is open to the world, and available for you to hack on. Please feel free to browse it and play
with it, or whatever. If you want to contribute patches, please send me a diff or prod me to pull
from your repository :)

[https://github.com/mstratman/Barcode-Code93](https://github.com/mstratman/Barcode-Code93)

    git clone https://github.com/mstratman/Barcode-Code93
