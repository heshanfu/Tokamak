//
//  Edges.swift
//  Tokamak
//
//  Created by Max Desiatov on 02/02/2019.
//

public struct Edges: Equatable {
  public let target: Constraint.SafeAreaTarget
  public let insets: Insets

  public static func equal(
    to target: Constraint.SafeAreaTarget,
    insets: Insets = .zero
  ) -> Constraint {
    return .edges(Edges(target: target, insets: insets))
  }

  public static func equal(
    to target: Constraint.Target,
    insets: Insets = .zero
  ) -> Constraint {
    return .edges(Edges(target: .external(target), insets: insets))
  }
}
