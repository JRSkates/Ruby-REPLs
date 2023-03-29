def average(scores)
  scores_accumulator = 0

  scores.each do |score|
    scores_accumulator += score
  end

  scores_accumulator.to_f / scores.length
end

test_scores_for_class_1 = [55, 78, 67, 92]
test_scores_for_class_2 = [48, 99, 91, 70]
test_scores_for_class_3 = [56, 58, 61, 98, 100]

# Print out the averages
puts "Class 1 average: " + average(test_scores_for_class_1).to_s
puts "Class 2 average: " + average(test_scores_for_class_2).to_s
puts "Class 3 average: " + average(test_scores_for_class_3).to_s

# Print out the school average
sch_average = average([average(test_scores_for_class_1), average(test_scores_for_class_2), average(test_scores_for_class_3)]).round(2).to_s
puts "School average: #{sch_average}"