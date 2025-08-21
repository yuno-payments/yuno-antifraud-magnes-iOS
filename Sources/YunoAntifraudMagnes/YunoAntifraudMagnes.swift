import Foundation
import YunoSDK
import PPRiskMagnes

public final class YunoAntifraudMagnes: FraudProviderProtocol {

    public let provider: String

    public init() {
        provider = .yunoProvider.payPalEnrollment
    }

    public func getFingerprint(key: String) async -> String? {
        let result: MagnesResult = MagnesSDK.shared().collectAndSubmit()
        return result.getPayPalClientMetaDataId()
    }
}
