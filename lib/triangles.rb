require "triangles/area_of_equilateral_triangles"
require "triangles/draw_svg"
require "triangles/equilateral_triangle"
require "triangles/orientation"
require "triangles/point"
require "triangles/polygon"
require "triangles/row_of_equilateral_triangles"
require "triangles/logo"

PALETTE = %w[
#3D0079
#4F009C
#6800CD
#8407FF
#9325FF
#AD57FF
#C78FFF
#E4CFFF
#F6EBFF
#24211E
#2E2A27
#38332F
#4A4541
#C0BBB6
#D0C9BF
#E1DCD4
#EFEBE7
#F5F2EF
#FAF7F5
#FCFAF8
#790007
#9C000A
#CD000C
#FF0716
#FF2533
#FF5760
#FF8F96
#0F6A49
#13885D
#18B47B
#28DD9B
#47DCA6
#73E3BB
#ABE3CE
#064873
#075D93
#087BC3
#169BEF
#38A5EB
#77B6DD
#A5CFE8
#C29100
#DFA700
#FFC500
#FFCE36
#FFD34E
#FFDF77
#FFE8A4
]

PURPLES = %w[
#3D0079
#4F009C
#6800CD
#8407FF
#9325FF
#AD57FF
#C78FFF
]

GREYS = %w[
#D0C9BF
#E1DCD4
#EFEBE7
#F5F2EF
#FAF7F5
]

BROWNS = %w[
#24211E
#2E2A27
#38332F
#4A4541
#C0BBB6
]

LOGO =
  [
    [49,29..32],
    [48,30..33],
    [47,31..34],
    [46,32..35],
    [45,33..36],
    [44,34..37],
    [43,35..38],
    [42,36..39],
    [41,37..39],
    [40,38],
    [42,40],
    [43,39..41],
    [44,39..42],
    [45,40..43],
    [46,41..44],
    [47,42..45],
    [48,43..46],
    [49,44..47],
    [49,37..40],
    [48,38..41],
    [47,39..41],
    [46,40],
    [45,44],
    [44,43..45],
    [43,43..46],
    [42,44..47],
    [41,45..48],
    [40,46..49],
    [39,47..53],
    [38,48..52],
    [37,49..51],
    [36,50],
    [40,51..54],
    [41,52..55],
    [42,53..56],
    [43,54..57],
    [44,55..58],
    [45,56..59],
    [46,57..60],
    [47,58..61],
    [48,59..62],
    [49,60..63],
    [49,48],
    [48,47..49],
    [47,47..50],
    [46,48..51],
    [45,49..52],
    [44,50..53],
    [43,51..53],
    [42,52],
    [41,56],
    [40,55..57],
    [39,55..58],
    [38,56..59],
    [37,57..60],
    [36,58..61],
    [35,59..62],
    [34,60..63],
    [33,61..64],
    [32,62..68],
    [31,63..67],
    [30,64..66],
    [29,65],
    [33,66..69],
    [34,67..70],
    [35,68..71],
    [36,69..72],
    [37,70..73],
    [38,71..74],
    [39,72..75],
    [40,73..76],
    [41,74..77],
    [42,75..78],
    [43,76..79],
    [44,77..80],
    [45,78..81],
    [46,79..82],
    [47,80..83],
    [48,81..84],
    [49,82..85]
  ]

DrawSVG.new(
  AreaOfEquilateralTriangles.new(
    top_left:          Point.new(0,0),
    height:            59.0 * 40,
    width:             88.0 * 40,
    first_orientation: Orientation.up,
    number_of_rows:    250
  ).build!
  .random_colors!((BROWNS * 2) + PURPLES)
  .logo_cut_out!(Logo.new(124, 80).call)
  .polygons
).call
