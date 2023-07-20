require './test.rb'

RSpec.describe Test do
  let(:test_instance) { Test.new }

  describe '#count_visible_nodes' do
    context 'when the binary tree is empty' do
      it 'returns 0' do
        expect(test_instance.count_visible_nodes(nil)).to eq(0)
      end
    end

    context 'when the binary tree has only one node' do
      it 'returns 1' do
        tree = { val: 10, left: nil, right: nil }
        expect(test_instance.count_visible_nodes(tree)).to eq(1)
      end
    end

    context 'when the binary tree has multiple nodes' do
      it 'returns the correct count of visible nodes' do
        # Construct your binary tree for testing
        # Example:   5
        #           / \
        #          3   10
        #         / \    \
        #        20  21   11

        tree = {
          val: 5,
          left: {
            val: 3,
            left: { val: 20, left: nil, right: nil },
            right: { val: 21, left: nil, right: nil }
          },
          right: {
            val: 10,
            left: nil,
            right: { val: 11, left: nil, right: nil }
          }
        }

        expect(test_instance.count_visible_nodes(tree)).to eq(5)
      end
    end

    # Add more test cases here as needed...
    context 'when the binary tree is a straight line' do
      it 'returns the correct count of visible nodes' do
        # Construct your binary tree for testing
        # Example: 1 -> 2 -> 3 -> 4 -> 5
  
        tree = {
          val: 1,
          left: {
            val: 2,
            left: {
              val: 3,
              left: {
                val: 4,
                left: {
                  val: 5,
                  left: nil,
                  right: nil
                },
                right: nil
              },
              right: nil
            },
            right: nil
          },
          right: nil
        }
  
        expect(test_instance.count_visible_nodes(tree)).to eq(5)
      end
    end
  
    context 'when the binary tree has negative values' do
      it 'returns the correct count of visible nodes' do
        # Construct your binary tree for testing
        # Example:   -5
        #           / \
        #         -10  -3
        #               \
        #               -1
  
        tree = {
          val: -5,
          left: {
            val: -10,
            left: nil,
            right: nil
          },
          right: {
            val: -3,
            left: nil,
            right: { val: -1, left: nil, right: nil }
          }
        }
        expect(test_instance.count_visible_nodes(tree)).to eq(3)
      end
    end
  end
end
