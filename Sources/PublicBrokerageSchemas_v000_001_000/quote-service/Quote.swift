import Foundation

public enum Outcome: String, Codable, Equatable, Sendable {
  case success = "SUCCESS"
  case failure = "FAILURE"
}

public struct Quote: Codable, Equatable, Sendable {
  public let instrument: Instrument
  public let outcome: Outcome
  public let last: String?
  public let lastTimestamp: String?
  public let bid: String?
  public let bidSize: Int?
  public let bidTimestamp: String?
  public let ask: String?
  public let askSize: Int?
  public let askTimestamp: String?
  public let volume: Int?
  public let openInterest: Int?

  public init(
    instrument: Instrument,
    outcome: Outcome,
    last: String? = nil,
    lastTimestamp: String? = nil,
    bid: String? = nil,
    bidSize: Int? = nil,
    bidTimestamp: String? = nil,
    ask: String? = nil,
    askSize: Int? = nil,
    askTimestamp: String? = nil,
    volume: Int? = nil,
    openInterest: Int? = nil,
  ) {
    self.instrument = instrument
    self.outcome = outcome
    self.last = last
    self.lastTimestamp = lastTimestamp
    self.bid = bid
    self.bidSize = bidSize
    self.bidTimestamp = bidTimestamp
    self.ask = ask
    self.askSize = askSize
    self.askTimestamp = askTimestamp
    self.volume = volume
    self.openInterest = openInterest
  }
}
