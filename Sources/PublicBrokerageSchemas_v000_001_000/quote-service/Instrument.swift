import Foundation

public struct Instrument: Codable, Equatable, Sendable {
  public enum InstrumentType: String, Codable, Sendable {
    case bond = "BOND"
    case crypto = "CRYPTO"
    case equity = "EQUITY"
    case index = "INDEX"
    case alt = "ALT"
  }

  public let symbol: String
  public let type: InstrumentType

  public init(symbol: String, type: InstrumentType) {
    self.symbol = symbol
    self.type = type
  }
}

public enum TradingStatus: String, Codable, Sendable {
  case buyAndSell = "BUY_AND_SELL"
  case liquidationOnly = "LIQUIDATION_ONLY"
  case disabled = "DISABLED"
}

public struct InstrumentPermissions: Codable, Equatable, Sendable {
  public let instrument: Instrument
  public let trading: TradingStatus
  public let fractionalTrading: TradingStatus
  public let optionTrading: TradingStatus
  public let optionSpreadTrading: TradingStatus

  public init(
    instrument: Instrument,
    trading: TradingStatus,
    fractionalTrading: TradingStatus,
    optionTrading: TradingStatus,
    optionSpreadTrading: TradingStatus,
  ) {
    self.instrument = instrument
    self.trading = trading
    self.fractionalTrading = fractionalTrading
    self.optionTrading = optionTrading
    self.optionSpreadTrading = optionSpreadTrading
  }
}
