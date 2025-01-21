(define (script-fu-df-trim-to-metal image drawables
                               source1
                               source2
                               source3
                               source4
                               source5
                               source6
                               source7
                               source8
							   target1
                               target2
                               target3
                               target4
                               target5
                               target6
                               target7
                               target8
							   )

  (gimp-image-undo-group-start image)
  (plug-in-exchange 0 image drawables (color-get-red source1) (color-get-green source1) (color-get-blue source1) (color-get-red target1) (color-get-green target1) (color-get-blue target1) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source2) (color-get-green source2) (color-get-blue source2) (color-get-red target2) (color-get-green target2) (color-get-blue target2) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source3) (color-get-green source3) (color-get-blue source3) (color-get-red target3) (color-get-green target3) (color-get-blue target3) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source4) (color-get-green source4) (color-get-blue source4) (color-get-red target4) (color-get-green target4) (color-get-blue target4) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source5) (color-get-green source5) (color-get-blue source5) (color-get-red target5) (color-get-green target5) (color-get-blue target5) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source6) (color-get-green source6) (color-get-blue source6) (color-get-red target6) (color-get-green target6) (color-get-blue target6) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source7) (color-get-green source7) (color-get-blue source7) (color-get-red target7) (color-get-green target7) (color-get-blue target7) 0 0 0)
  (plug-in-exchange 0 image drawables (color-get-red source8) (color-get-green source8) (color-get-blue source8) (color-get-red target8) (color-get-green target8) (color-get-blue target8) 0 0 0)
  (gimp-image-undo-group-end image)
  (gimp-displays-flush)
)
(script-fu-register
    "script-fu-df-trim-to-metal"
    "Off-Palette to Metal"
    "Bulk converts color ramps\
      for source images\
	  based on the Dwarf Fortress Premium\
      graphics system."
    "DPh Kraken"
    "Freeware"
    "Jan. 21, 2025"
    "RGB*"
	SF-IMAGE		"Image"     0
	SF-DRAWABLE		"Drawable"  0
	SF-COLOR      "Source color 1"   "#FFFEFF"
	SF-COLOR      "Source color 2"   "#CECAB9"
	SF-COLOR      "Source color 3"   "#A9AAA9"
	SF-COLOR      "Source color 4"   "#8B9293"
	SF-COLOR      "Source color 5"   "#696F75"
	SF-COLOR      "Source color 6"   "#565B62"
	SF-COLOR      "Source color 7"   "#464951"
	SF-COLOR      "Source color 8"   "#3F434C"
	
	SF-COLOR      "Target color 1"   "white"
	SF-COLOR      "Target color 2"   "#C7C4B4"
	SF-COLOR      "Target color 3"   "#A5A6A5"
	SF-COLOR      "Target color 4"   "#8A9091"
	SF-COLOR      "Target color 5"   "#6B7076"
	SF-COLOR      "Target color 6"   "#5A5E65"
	SF-COLOR      "Target color 7"   "#494C54"
	SF-COLOR      "Target color 8"   "#3C3E46"
  )
  (script-fu-menu-register "script-fu-df-trim-to-metal" "<Image>/Colors/Map/Dwarf Fortress")
  
  
