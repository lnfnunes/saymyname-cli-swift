import ArgumentParser
import Foundation

struct cli: ParsableCommand {

    static let configuration = CommandConfiguration(
        abstract: "A Swift CLI to say names.",
        version: "0.0.1"
    )

    @Argument
    var name: String

    @Flag(help: "Wether to say the name capitalized.")
    var capitalized: Bool = false

    // MARK: - Init

    func run() throws {
      let strName = capitalized ? name.capitalized : name
      print("Hello, \(strName)!")
    }
}

cli.main()
