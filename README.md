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

# BUGS

Please report any bugs or feature requests on the bugtracker website
[https://github.com/mstratman/Barcode-Code93/issues](https://github.com/mstratman/Barcode-Code93/issues)

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.
