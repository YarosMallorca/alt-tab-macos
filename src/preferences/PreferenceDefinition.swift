import Foundation

struct PreferenceDefinition<T: MacroPreference & CaseIterable & Equatable> {
    let key: String
    let `default`: T

    func read() -> T {
        CachedUserDefaults.macroPref(key, Array(T.allCases))
    }
}
