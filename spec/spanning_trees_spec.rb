# frozen_string_literal: true

require "rgl/adjacency"
require "rgl/traversal"
require "spec_helper"

RSpec.describe SpanningTrees do
  it "uses RGL" do
    # > Fig. 1. A flow graph, with start vertex 1. Edge (1, 2) is a bridge
    # > (Tarjan, 1976, p.172)
    edge_data = <<~EOS
      1,2 1,6
      2,3 2,5
      3,5 3,4
      4,3 4,5 4,8 4,9
      5,3 5,4 5,6 5,7
      6,7
      7,4 7,8
      8,9
    EOS
    edges = edge_data.split(/\s+/).map { |e| e.split(',').map(&:to_i) }
    g = RGL::DirectedAdjacencyGraph[*edges.flatten]
    expect(g.num_vertices).to eq(9)
    expect(g.num_edges).to eq(18)
    expect(g.vertices).to match_array((1..9).to_a)
    expect(g.edges.map(&:to_a)).to match_array(edges)
    expect(g.adjacent_vertices(5)).to match_array([3, 4, 6, 7])
    dfs = g.dfs_iterator(1)
    traversal = []
    until dfs.at_end?
      traversal << dfs.forward
    end
    expect(traversal).to eq([1, 6, 7, 8, 9, 4, 5, 3, 2])
  end

  describe ".gem_version" do
    it "has a version number" do
      expect(SpanningTrees.gem_version).to be_a(::Gem::Version)
    end
  end
end
