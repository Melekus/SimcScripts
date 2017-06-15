module Interactive
  # Offers all simc templates matching prefix_*.simc
  # Returns the * part
  def Interactive.SelectTemplate(prefix)
    puts "Please choose the #{prefix} template you want to simulate:"
    profiles = {}
    index = 1
    Dir.glob("#{prefix}_[_a-zA-Z0-9]*\.simc").each do |file|
      if profile = file.match(/#{prefix}_([_a-zA-Z0-9]*)\.simc/)
        profiles[index] = profile[1]
        puts "#{index}: #{profile[1]}"
        index += 1
      end
    end
    print 'Profile: '
    index = gets.to_i
    unless profiles.has_key?(index)
      puts 'ERROR: Invalid profile index entered!'
      puts 'Press enter to quit...'
      gets
      exit
    end
    puts
    return "#{profiles[index]}"
  end

  # Ask for talent permutation input string
  # Returns array of arrays with talents for each row
  def Interactive.SelectTalentPermutations()
    puts 'Please select the talents for permutation:'
    puts 'Options: 0-off, 1-left, 2-middle, 3-right, x-Permutation'
    puts 'Example: xxx00xx'
    print 'Talents: '
    talentstring = gets
    unless talentstring.match(/\A[0-3xX]{7}\Z/)
      puts 'ERROR: Invalid talent string!'
      puts 'Press enter to quit...'
      gets
      exit
    end
    talentdata = []
    talentstring.chomp.each_char do |tier|
      if tier.downcase.eql? 'x'
        talentdata.push((1..3).to_a)
      else
        talentdata.push([tier.to_i])
      end
    end
    puts
    return talentdata
  end

  # Asks if the specified file should be removed and does so by default (no answer)
  def Interactive.RemoveFileWithQuestion(file)
    if File.exist?(file)
      puts "Do you want to delete the existing #{file} file? If you type \"n\", results will be appended."
      print 'Y/n: '
      deletefile = gets
      unless deletefile.chomp.downcase.eql? 'n'
        File.delete(file)
        puts 'Old file deleted!'
      end
      puts
    end
  end
end