require_relative 'spec_helper'

describe 'Euler Project Exercise' do
  before(:each) do
    @euler = Euler.new
  end



  it 'should find all the multiples of 3 below 10.' do
    expect(@euler).to respond_to(:multiple_of_three)
    expect(@euler.multiple_of_three_array).to be_kind_of Array
    expect(@euler.multiple_of_three(1,10)[0]).to eq 3
  end

  it 'should find all the multiples of 5 below 10.' do
    expect(@euler).to respond_to(:multiple_of_five)
    expect(@euler.multiple_of_five_array).to be_kind_of Array
    expect(@euler.multiple_of_five(1,10)[0]).to eq 5
    expect(@euler.multiple_of_five(1,10)[1]).to eq 10
  end

  it 'should find the sum of all the multiples of three below 10.' do
    expect(@euler).to respond_to(:sum_of_mthree)
    expect(@euler.sum_of_mthree).to eql 18
  end

  it 'should find the sum of all the multiples of five below 10.' do
    expect(@euler).to respond_to(:sum_of_mfive)
    expect(@euler.sum_of_mfive).to eql 15
  end

  it 'should find the sum of all the multiples of three AND five below 1000' do
    expect(@euler).to respond_to(:sum_of_all)
  end





end
