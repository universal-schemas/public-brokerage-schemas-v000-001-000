import Foundation

public enum OrderType: String, Codable, Equatable, Sendable {
  case market = "MARKET"
  case limit = "LIMIT"
  case stop = "STOP"
  case stopLimit = "STOP_LIMIT"
}

public enum OrderSide: String, Codable, Equatable, Sendable {
  case buy = "BUY"
  case sell = "SELL"
}

public struct OrderTicket: Codable, Equatable, Sendable {
  public let instrument: Instrument
  public let quantity: String
  public let type: OrderType
  public let side: OrderSide
  public let timeInForce: String?
  public let limitPrice: String?
  public let stopPrice: String?

  public init(
    instrument: Instrument,
    quantity: String,
    type: OrderType,
    side: OrderSide,
    timeInForce: String? = nil,
    limitPrice: String? = nil,
    stopPrice: String? = nil,
  ) {
    self.instrument = instrument
    self.quantity = quantity
    self.type = type
    self.side = side
    self.timeInForce = timeInForce
    self.limitPrice = limitPrice
    self.stopPrice = stopPrice
  }
}

public struct PreflightCheck: Codable, Equatable, Sendable {
  public let passes: Bool

  public init(passes: Bool) {
    self.passes = passes
  }
}

public struct OrderStatus: Codable, Equatable, Sendable {
  public let orderId: String
  public let status: String

  public init(orderId: String, status: String) {
    self.orderId = orderId
    self.status = status
  }
}
