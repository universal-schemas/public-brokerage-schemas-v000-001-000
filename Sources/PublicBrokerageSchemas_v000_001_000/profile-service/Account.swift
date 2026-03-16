import Foundation

public struct Account: Codable, Equatable, Sendable {
  /// Account types supported by the Public API.
  public enum AccountType: String, Codable, Sendable {
    case brokerage = "BROKERAGE"
    case highYield = "HIGH_YIELD"
    case bondAccount = "BOND_ACCOUNT"
    case riaAsset = "RIA_ASSET"
    case treasury = "TREASURY"
    case traditionalIRA = "TRADITIONAL_IRA"
    case rothIRA = "ROTH_IRA"
  }

  /// Options trading permission level.
  public enum OptionsLevel: String, Codable, Sendable {
    case none = "NONE"
    case level1 = "LEVEL_1"
    case level2 = "LEVEL_2"
    case level3 = "LEVEL_3"
    case level4 = "LEVEL_4"
  }

  /// Brokerage account type for the user.
  public enum BrokerageAccountType: String, Codable, Sendable {
    case cash = "CASH"
    case margin = "MARGIN"
  }

  /// Trading permissions granted on the account.
  public enum TradePermissions: String, Codable, Sendable {
    case buyAndSell = "BUY_AND_SELL"
    case restrictedSettledFundsOnly = "RESTRICTED_SETTLED_FUNDS_ONLY"
    case restrictedCloseOnly = "RESTRICTED_CLOSE_ONLY"
    case restrictedNoTrading = "RESTRICTED_NO_TRADING"
  }

  public let accountId: String
  public let accountType: AccountType
  public let optionsLevel: OptionsLevel
  public let brokerageAccountType: BrokerageAccountType
  public let tradePermissions: TradePermissions

  public init(
    accountId: String,
    accountType: AccountType,
    optionsLevel: OptionsLevel,
    brokerageAccountType: BrokerageAccountType,
    tradePermissions: TradePermissions,
  ) {
    self.accountId = accountId
    self.accountType = accountType
    self.optionsLevel = optionsLevel
    self.brokerageAccountType = brokerageAccountType
    self.tradePermissions = tradePermissions
  }
}
