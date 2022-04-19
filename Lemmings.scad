/*
Lemmings

by IOIO72 aka Tamio Patrick Honma (https://honma.de)

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
*/

/* [Basic] */

// Select the lemming
figure = 0; // [0:"Blocker", 1:"Walker", 2:"Climber", 3:"Shrug"]

// 1 = large bevel, 9 = small bevel, 10 = no bevel
bevel_factor = 4; // [1:10]

// Gaps between the pixel blocks are only available when bevel set.
with_gaps = true;

// Background plate depth (0 = no background)
background_depth = 0;


/* [Settings] */

// one pixel equals pixel_size millimeters
pixel_size = 6;

// Number of fragments (be aware of high values, which cause extensive calculations for the bevels)
$fn = 12; // [1:80]


/* [Hidden] */

bevel = (bevel_factor > 9) ? 0 : pixel_size * 1 / bevel_factor;
gap = with_gaps ? bevel : 0;
width = 8;
height = 8;
color_index_none = 0;
color_index_skin = 1;
color_index_hair = 2;
color_index_dress = 3;
colors = [
  "#000000", // none
  "#bcbcbc", // skin
  "#00a800", // hair
  "#2038ec" // dress
];

figures = [
  [ // Blocker
    [
      color_index_none,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_skin,
      color_index_skin,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_skin,
      color_index_skin,
      color_index_skin,
      color_index_dress,
      color_index_dress,
      color_index_skin,
      color_index_skin,
      color_index_skin,
    ],
    [
      color_index_skin,
      color_index_none,
      color_index_hair,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_skin,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_hair,
      color_index_hair,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_hair,
      color_index_hair,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
  ],
  [ // Walker
    [
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_skin,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_skin,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_skin,
      color_index_skin,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_skin,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_hair,
      color_index_skin,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_hair,
      color_index_hair,
      color_index_skin,
      color_index_hair,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_hair,
      color_index_hair,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
  ],
  [ // Climber
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_skin,
      color_index_skin,
    ],
    [
      color_index_none,
      color_index_hair,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_none,
    ],
    [
      color_index_hair,
      color_index_hair,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_hair,
      color_index_hair,
      color_index_hair,
      color_index_dress,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_hair,
      color_index_skin,
      color_index_skin,
      color_index_dress,
      color_index_skin,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_hair,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_skin,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_skin,
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_skin,
    ],
  ],
  [ // Shrug
    [
      color_index_none,
      color_index_none,
      color_index_skin,
      color_index_skin,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_skin,
      color_index_none,
      color_index_dress,
      color_index_dress,
      color_index_none,
      color_index_skin,
      color_index_none,
    ],
    [
      color_index_skin,
      color_index_none,
      color_index_skin,
      color_index_skin,
      color_index_skin,
      color_index_skin,
      color_index_none,
      color_index_skin,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_hair,
      color_index_skin,
      color_index_skin,
      color_index_hair,
      color_index_none,
      color_index_none,
    ],
    [
      color_index_none,
      color_index_none,
      color_index_none,
      color_index_hair,
      color_index_hair,
      color_index_none,
      color_index_none,
      color_index_none,
    ],
  ],
];


module pixel(x, y, ci = color_index_none) {
  if (ci != color_index_none) {
    translate([x * pixel_size + x * gap, y * pixel_size + y * gap, 0]) {
      color(colors[ci]) {
        minkowski(10) {
          cube(pixel_size);
          sphere(bevel);
        };
      };
    };
  };
};

module background() {
  translate([- bevel, - bevel, - abs(background_depth) - bevel]) {
    color("#000000") {
      cube([
        width * pixel_size + gap * width - gap + 2 * bevel,
        height * pixel_size + gap * height - gap + 2 * bevel,
        abs(background_depth)
      ]);
    };
  };
};

module lemming(number = 0) {
  for (row = [0 : height - 1]) {
    for (column = [0 : width - 1]) {
      pixel(column, row, figures[number][row][column]);
    };
  };
};

lemming(figure);
background();