# Regex Work for The Adventures of the Tolling Bell

1 Find: '^.+' (300 matches)
    Replace: '<ln> \0 </ln>'
    
2 Find: '(<ln>) (.+):' (280 matches)
    Replace: '\1<speaker>\2</speaker>'