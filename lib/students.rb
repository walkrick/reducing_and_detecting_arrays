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
    ages = 0
    all.each do |student|
      ages = ages + student[:age]
    end

    ages/all.length

  end

  def name_string
    all.map { |student| student[:name] }.join(' ')
  end


  def find_first_older_than(age)
    all.each do |student|
      if student[:age] > age
        return student
      end
    end

  end

  def any_older_than?(age)
    all.each do |student|
      if student[:age] > age
        return true
      end
    end
    false

  end

  def find_student(student_to_find)

  end

  def student_present?(student_to_find)

  end

  def grouped_by_age

  end

end
