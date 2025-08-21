# YunoAntifraudMagnes

Wrapper de Magnes (PayPal Risk) para Yuno iOS.

## Instalación (Swift Package Manager)

1. Agrega este repositorio en Xcode (File > Add Packages...).
2. Asegúrate de configurar en `Package.swift` la URL y el `checksum` del binario remoto `PPRiskMagnes`.

## Uso

```swift
import YunoSDK
import YunoAntifraudMagnes

// Registrar antes del flujo de checkout/enrollment
Yuno.setFraudProviders(with: [YunoAntifraudMagnes()])
```

- El SDK generará y enviará el `getPayPalClientMetaDataId()` automáticamente.
