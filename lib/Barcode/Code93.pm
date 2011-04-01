package Barcode::Code93;
use Any::Moose;

=head1 NAME

Barcode::Code93 - Generate data for Code 93 barcodes

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

    use Barcode::Code93;
    my $data = Barcode::Code93->new->barcode('MONKEY');
    print for map { $_ ? "#" : ' ' } @$data;

=head1 METHODS

=head2 new

Instantiate a new Barcode::Code93 object.

=head2 barcode ($text)

Generate barcode data representing the C<$text> string.  This returns
an array (or arrayref in scalar context) containing true and false values
that represent lines and spaces.

=cut

sub barcode {
    my ($self, $text) = @_;
    my @data = $self->_barcode(uc $text);
    return wantarray ? @data : \@data;
}

=head1 AUTHOR

Chris DiMartino C<<chris DOT dimartino AT gmail DOT com>> (L<GD::Barcode::Code93>, from which this distribution originates)

Mark A. Stratman, C<< <stratman at gmail.com> >>

=head1 CONTRIBUTERS

The L<GD::Barcode::Code93> module, from which this module originates, was based on code provided by Kawai Takanori. Japan.

The L<GD::Barcode::Code93> module was written by Chris DiMartino, 2004. Thanks to Lobanov Igor, Joel Richard, and Joshua Fortriede for their excellent Bug Reports and patches. All rights reserved.

=head1 SEE ALSO

=over 4

=item L<GD::Barcode::Code93>

=item L<HTML::Barcode::Code93>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2011 the AUTHORs and CONTRIBUTERS listed above.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

#------------------------------------------------------------------------------
# barcode (from GD::Barcode::Code93)
#------------------------------------------------------------------------------
sub _barcode {
    my $self = shift;
    my $text = shift;

    my $code93bar = {
        0   =>'100010100',
        1   =>'101001000',
        2   =>'101000100',
        3   =>'101000010',
        4   =>'100101000',
        5   =>'100100100',
        6   =>'100100010',
        7   =>'101010000',
        8   =>'100010010',
        9   =>'100001010',
        A   =>'110101000',
        B   =>'110100100',
        C   =>'110100010',
        D   =>'110010100',
        E   =>'110010010',
        F   =>'110001010',
        G   =>'101101000',
        H   =>'101100100',
        I   =>'101100010',
        J   =>'100110100',
        K   =>'100011010',
        L   =>'101011000',
        M   =>'101001100',
        N   =>'101000110',
        O   =>'100101100',
        P   =>'100010110',
        Q   =>'110110100',
        R   =>'110110010',
        S   =>'110101100',
        T   =>'110100110',
        U   =>'110010110',
        V   =>'110011010',
        W   =>'101101100',
        X   =>'101100110',
        Y   =>'100110110',
        Z   =>'100111010',
       ' '  =>'111010010',
       '$'  =>'111001010',
       '%'  =>'110101110',
       '($)'=>'100100110',
       '(%)'=>'111011010',
       '(+)'=>'100110010',
       '(/)'=>'111010110',
       '+'  =>'101110110',
       '-'  =>'100101110',
       '.'  =>'111010100',
       '/'  =>'101101110',
       '*'  =>'101011110',  ##Start/Stop
    };

    my @sum_text = ('*', $self->_calculateSums($text), '*');

    my @rv = map { split //, $code93bar->{$_} } @sum_text;
    push @rv, 1;
    return @rv;
}


#-----------------------------------------------------------------------------
# calculateSums (from GD::Barcode::Code93)
#-----------------------------------------------------------------------------
sub _calculateSums {
    my $self = shift;
    my $text = shift;
    $text = '' unless defined $text;
    my @array = split(//, scalar reverse $text);

    my %code93values = (
        '0'    =>'0',
        '1'    =>'1',
        '2'    =>'2',
        '3'    =>'3',
        '4'    =>'4',
        '5'    =>'5',
        '6'    =>'6',
        '7'    =>'7',
        '8'    =>'8',
        '9'    =>'9',
        'A'    =>'10',
        'B'    =>'11',
        'C'    =>'12',
        'D'    =>'13',
        'E'    =>'14',
        'F'    =>'15',
        'G'    =>'16',
        'H'    =>'17',
        'I'    =>'18',
        'J'    =>'19',
        'K'    =>'20',
        'L'    =>'21',
        'M'    =>'22',
        'N'    =>'23',
        'O'    =>'24',
        'P'    =>'25',
        'Q'    =>'26',
        'R'    =>'27',
        'S'    =>'28',
        'T'    =>'29',
        'U'    =>'30',
        'V'    =>'31',
        'W'    =>'32',
        'X'    =>'33',
        'Y'    =>'34',
        'Z'    =>'35',
        '-'    =>'36',
        '.'    =>'37',
        ' '    =>'38',
        '$'    =>'39',
        '/'    =>'40',
        '+'    =>'41',
        '%'    =>'42',
        '($)'    =>'43',
        '(%)'    =>'44',
        '(/)'    =>'45',
        '(+)'    =>'46',
        '*'        => '',
    );

    my %invCode93Values = reverse %code93values;
    my $weighted_sum;

    foreach my $counter ( qw/4 3/ ) {
        for (my $i = 0, my $x = 1; $i <= $#array; $i++, $x++) {
            my $letter  = $array[$i];

            if ($x > ($counter * 5)) { $x = 1 }
            $weighted_sum += ($code93values{$letter} * $x);
        }

        my $check = $invCode93Values{($weighted_sum % 47)};
        unshift @array, $check;
        $weighted_sum = ();
    }

    return reverse @array;
}

no Any::Moose;

1;
