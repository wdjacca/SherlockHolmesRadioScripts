# Regex Work for The Adventures of the Tolling Bell

1 Find: '^.+' 
    Replace: '<ln>\0</ln>'
    
2 Find: '(MUSIC:) (.+)\n' (280 matches)
    Replace: '<music>\2</music>\n'

3 Find: '(SOUND:) (.+)\n'
    Replace: '<sound>\2</sound>\n'

4 Find: '^([A-Z]+): '
    Replace: '<speaker>\1</speaker>'

5 Find: '\(([A-Z].+)\)' (6 matches)
  Find: '<stageDirect>\1</stageDirect>'

    Replace: '<mention ref="#holmes">\0</mention>'
  

To find and replace the mentions in all files:

in XPath: //ln/text()
(Sherlock|Mr\.|Mr\.Sherlock)?\s(Holmes)
<mention ref="holmes">\0</mention>
(Mr\.|Dr\.)?\s(Watson)
