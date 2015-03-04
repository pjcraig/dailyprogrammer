''' This is kind of a simplistic solution for dailyprogrammer 204 [easy].
    The program accepts a string as input and outputs the act, scene and who
    speaks the line. '''

text = open('macbeth.txt', 'rb')

phrase = raw_input("Enter the phrase: ")

str(phrase).lower()
passage = '' 
while text.readline():
    line = text.readline()
    if line == '\n' and phrase in passage.lower():
        print (act, scene, speaker, passage)

    
    if 'ACT' in line:
        act = line
    elif 'SCENE' in line:
        scene = line
    elif '  ' in line and '    ' not in line:
        speaker = line
    elif '    ' in line:
            passage += line
    elif '    ' not in line:
        passage = ""

    
