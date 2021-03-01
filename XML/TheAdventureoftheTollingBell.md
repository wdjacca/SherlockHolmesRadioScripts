# Regex Work for The Adventures of the Tolling Bell

1 Find: '^.+' (300 matches)
    Replace: '<ln> \0 </ln>'
    
2 Find: '(<ln>) (.+):' (280 matches)
    Replace: '\1<speaker>\2</speaker>'

3 Find: '<ln><speaker>F/X</speaker>(.+)</ln>' (23 matches)
    Replace: '<fx>\1</fx>'

4 Find: '.+MUSIC(.+)</ln>' (12 matches)
    Replace: '<music>\1</music>'

5 Find: 'Sherlock Holmes' (6 matches) # trying to tag up how many times it has been mentioned
    Replace: '<sherlockHolmes>\0</sherlockHolmes>'