// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Arial Unicode MS Regular';
@sans_bold: 'Arial Unicode MS Bold';

/*
This style is designed to be easily recolored by adjusting the color
variables below. For predicatable feature relationships,
maintain or invert existing value (light to dark) scale.
*/

// Color palette //
@road:  #fff;
@land:  #eee;

@fill1: #fff;
@fill2: #bbb;
@fill3: #777;
@fill4: #000;

@text: #777;

@lborange: #F1AA36;

Map { background-color: rgba(0,0,0,0,5); }

/*
By default, show council districts as lighter than the surrounding
non-Long Beach area, but still grayed out.
*/
#CouncilDistricts {
  polygon-fill: @fill2;
  polygon-opacity: 0.3;
}
#CouncilDistricts::outline {
  line-color: @fill3;
  line-width: 1;
  line-comp-op: src;
}

/*
For active districts, the insides should be completely transparent
and they should be surrounded by an orange semi-transparent border.
*/
#CouncilDistricts::outer-border {
  [COUNCIL_NU=9],
  [COUNCIL_NU=1] {
    polygon-comp-op: dst-out;
  }
}
#CouncilDistricts::outer-border {
  [COUNCIL_NU=9],
  [COUNCIL_NU=1] {
    line-width: 1;
    line-color: @fill4;
    line-opacity: 0.8;
    line-offset: 5.5;
    line-comp-op: src;
  }
}
#CouncilDistricts::thick-border {
  [COUNCIL_NU=9],
  [COUNCIL_NU=1] {
    line-width: 10;
    line-color: @lborange;
    line-opacity: 0.7;
    line-offset: 0;
    line-comp-op: src;
    line-join: round;
  }
}
#CouncilDistrictCentroids::center-label {
  [COUNCIL_NU=9],
  [COUNCIL_NU=1] {
    text-size: 14;
    text-face-name: "Open Sans Semibold";
    text-halo-radius: 1;
    text-halo-fill: @fill2;
    text-name: [COUNCIL_NU];
    
    [zoom>12] {
      text-name: "District " + [COUNCIL_NU];
    }
    
    [zoom>15] {
      text-name: "";
    }
  }
}
