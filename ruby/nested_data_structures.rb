#Week 5: Design and Build a Nested Data Structure

new_school = {
  grade_2: {
    :english => ['grammar', 'spelling', 'reading'],
    math: ['numbers', 'fractions', 'operations'],
    science: ['nature', 'motion', 'space']
  },
  grade_6: {
    laguage_arts: {
      vocabulary: ['synonyms','antonyms', 'homonyms'],
      comprehension: ['summaries', 'synthesis']
    },
    physics: ['speed','mass','energy']
  }
}

p new_school

p "Second topic for second grade English"
puts new_school[:grade_2][:english][1]

p "Last comprehension topic for six grade Language Arts"
puts new_school[:grade_6][:laguage_arts][:comprehension].last

p "Adding a topic to six grade Physics"
new_school[:grade_6][:physics].push('optics')
p new_school[:grade_6][:physics]

p "Changing the value of the first second grade Science topic"
new_school[:grade_2][:science][0] = 'Biology'
p new_school[:grade_2][:science][0]