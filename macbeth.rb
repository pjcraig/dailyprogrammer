file = File.open('macbeth.txt').read

puts "Enter the phrase: "
phrase = gets.chomp
phrase = phrase.downcase

passage = ''

act, scene, speaker = ''

file.each_line do |line|
    if line == "\n" and passage.downcase.include? phrase
        puts "#{act} #{scene} #{speaker} #{passage}"
    end
    if line.include? 'ACT'
        act = line
    elsif line.include? 'SCENE'
        scene = line
    elsif line.include? '  ' and !line.include? '    '
        speaker = line
    elsif line.include? '    '
        passage << line
    elsif !line.include? '    '
        passage = ''
    end
end

