require 'spec_helper'

require 'students'

describe Students do
  it 'can return all students' do
    students = Students.new

    expected_students = [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 21},
    ]

    expect(students.all).to match_array expected_students
  end
end