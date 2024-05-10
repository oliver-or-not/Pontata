//
//  UnifiedInfo.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/9/24.
//

import Foundation

class UnifiedInfo: ObservableObject {

    // MARK: - Setting

    static let atomicTimeLength: CGFloat = 1 / 60

    static let colorBoundBundle: (
        r: ClosedRange<CGFloat>,
        g: ClosedRange<CGFloat>,
        b: ClosedRange<CGFloat>,
        a: ClosedRange<CGFloat>
    ) = (
        r: 0.5...0.7,
        g: 0.5...0.7,
        b: 0.5...0.7,
        a: 0.4...0.8
    )

    static let radiusBound: ClosedRange<CGFloat> = 20...30
    static let velocityBound: (
        x: ClosedRange<CGFloat>,
        y: ClosedRange<CGFloat>
    ) = (
        x: -10...10,
        y: -10...10
    )

    // MARK: - Published

    @Published var ponBalls: [PonBall] = []

    @Published var isAddButtonTapped = false {
        didSet {
            if isAddButtonTapped {
                add()
                isAddButtonTapped = false
            }
        }
    }
    @Published var isSubtractButtonTapped = false {
        didSet {
            if isSubtractButtonTapped {
                subtract()
                isSubtractButtonTapped = false
            }
        }
    }
    @Published var isClearButtonTapped = false {
        didSet {
            if isClearButtonTapped {
                clear()
                isClearButtonTapped = false
            }
        }
    }

    // MARK: - State

    private var acceleration: (x: CGFloat, y: CGFloat) = (0, 0)
    private var isCalculating: Bool = false
    private var prevCalculationTime: CGFloat = 0
    private var missingFrameCount: Int = 0

    // MARK: - Configuration

    let width: CGFloat
    let height: CGFloat

    // MARK: - Lifecycle

    init(
        width: CGFloat,
        height: CGFloat
    ) {
        self.width = width
        self.height = height
    }

    // MARK: - Button Action

    func add() {
        let radius = CGFloat.random(in: Self.radiusBound)
        let ponBall = PonBall(
            radius: radius,
            color: (
                r: CGFloat.random(in: Self.colorBoundBundle.r),
                g: CGFloat.random(in: Self.colorBoundBundle.g),
                b: CGFloat.random(in: Self.colorBoundBundle.b),
                a: CGFloat.random(in: Self.colorBoundBundle.a)
            ),
            px: CGFloat.random(
                in: min(radius, width * 0.5)...max(width * 0.5, width - radius)
            ),
            py: CGFloat.random(
                in: min(radius, height * 0.5)...max(height * 0.5, height - radius)
            ),
            vx: CGFloat.random(in: Self.velocityBound.x),
            vy: CGFloat.random(in: Self.velocityBound.y),
            weight: 10
        )
        ponBalls.append(ponBall)
    }

    func subtract() {
        guard ponBalls.count > 0 else { return }
        let ind = Int.random(in: 0..<ponBalls.count)
        ponBalls.remove(at: ind)
    }

    func clear() {
        guard ponBalls.count > 0 else { return }
        ponBalls = []
    }

    // MARK: - Simulation

    func calculateNextFrame() {
        guard !isCalculating else {
            missingFrameCount += 1
            return
        }
        defer {
            missingFrameCount = 0
        }

        isCalculating = true
        defer { isCalculating = false }

        let startTime = Date()
        defer {
            let endTime = Date()
            prevCalculationTime = CGFloat(
                endTime.timeIntervalSince(startTime)
            )
        }

        var collisionOpponentArray: [Int?] = Array(repeating: nil, count: ponBalls.count)

        // TODO: 프레임 계산 내용 채우기
    }
}
