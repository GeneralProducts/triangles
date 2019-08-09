# Triangles

Make your own triangles. 

On the command line, run 

`ruby lib/triangles.rb`

This creates a file called output.svg. Open it in your favourite browser to see your triangles. 

# Making different sorts of triangle patterns 

The lib/triangles file has a `DrawSVG` method. Amend the variables, save and run the file again to make different patterns. 

e.g. 

* change the number of rows from 50 to 10 or 100

* change the colours passed in to `GREYS` or `BROWNS`

* change the chained method from `random_colors!` to `flowing_colors!` or `logo_color_in!` (for a very brand-specific shape!) 

```
DrawSVG.new(
  AreaOfEquilateralTriangles.new(
    top_left:          Point.new(0,0),
    height:            59.0 * 40,
    width:             88.0 * 40,
    first_orientation: Orientation.up,
    number_of_rows:    50
  ).build!
  .random_colors!( PURPLES)
.polygons
).call

# .random_colors!( PURPLES)
# .logo_cut_out!(Logo.new(29, 13).call)
# .logo_color_in!(Logo.new(29, 13).call,BROWNS )
# .flowing_colors!([GREYS, GREYS , BROWNS, PURPLES])
```