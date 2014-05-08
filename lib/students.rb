class Students
  def all
    [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 22},
    ]
  end

  def average_age
    # all.inject(0) { |sum_of_ages, student| sum_of_ages + student[:age] } / all.length
    all.reduce(0) { |sum_of_ages, student| sum_of_ages + student[:age] } / all.length

    # sum_of_ages = 0
    # all.each do |student|
    #   sum_of_ages = sum_of_ages + student[:age]
    # end
    #
    # sum_of_ages/all.length
  end

  def name_string
    all.reduce("") { |accumulator, student| accumulator + student[:name] + " " }.strip
    # all.map { |student| student[:name] }.join(' ')
  end

  def find_first_older_than(age)
    # all.each do |student|
    #   if student[:age] > age
    #     return student
    #   end
    # end

    all.detect { |student| student[:age] > age }
  end

  def any_older_than?(age)
    all.any? { |student| student[:age] > age }

    # all.each do |student|
    #   if student[:age] > age
    #     return true
    #   end
    # end
    # false
  end

  def find_student(student_to_find)
    all.detect { |student| student == student_to_find }

    # all.each do |student|
    #   if student == student_to_find
    #     return student
    #   end
    # end
    # nil
  end

  def student_present?(student_to_find)
    all.include?(student_to_find)

    # all.each do |student|
    #   if student == student_to_find
    #     return true
    #   end
    # end
    # false
  end

  def grouped_by_age
    # This is a little less clear and
    # may be an anti-pattern depending
    # on who you talk to
    all.inject({}) do |acc, student|
      if  acc[student[:age]] == nil
        acc[student[:age]] = []
      end
      acc[student[:age]] << student[:name]
      acc
    end

    # I (MikeG) prefers this solution because it
    # is a bit more clear in my head
    # acc = {}
    #
    # all.each do |student|
    #   if  acc[student[:age]] == nil
    #     acc[student[:age]] = []
    #   end
    #   acc[student[:age]] << student[:name]
    # end
    # acc
  end
end