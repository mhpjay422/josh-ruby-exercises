RSpec.describe 'ints and floats' do
  it 'test 1' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # add the lucky number and the unlucky number
    sum = lucky + unlucky
    expect(sum).to eq(20)
  end

  it 'test 2' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # subtract the unlucky from the lucky
    difference = lucky - unlucky
    # assert_equal -6, difference
    expect(difference).to eq(-6)
  end

  it 'test 3' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    # NOTE: this is integer division
    quotient = unlucky / lucky
    expect(quotient).to eq(1)
  end

  it 'test 4' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    quotient = unlucky / lucky.to_f
    expect(quotient).to eq(1.8571428571428572)
  end

  it 'test 5' do
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # find the remainder of the unlucky divided by the lucky
    remainder = unlucky % lucky
    expect(remainder).to eq(6)
  end

  it 'test 6' do
    lucky = 7
    # Using the variable defined above,
    # find out if the lucky number is even
    even = (lucky % 2) === 0
    expect(even).to eq(false)
  end

  it 'test 7' do
    pi = 3.14
    # Using the variable defined above,
    # round the number to the nearest whole number
    rounded = pi.to_i
    expect(rounded).to eq(3)
  end

  it 'test 8' do
    pi = 3.14
    # Using the variable defined above,
    # round the number to one decimal place
    rounded = pi.round(1)
    # assert_equal 3.1, rounded
    expect(rounded).to eq(3.1)
  end

  it 'test 9' do
    pi = 3.14
    if pi > pi.round
      pi = pi.round + 1
    end
    # Using the variable defined above,
    # round the number to the next highest whole number
    rounded = pi
    expect(rounded).to eq(4)
  end
end
