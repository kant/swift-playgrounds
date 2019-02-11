//:## Counterxamples

import AssistantV1

let assistant = setupAssistantV1()
let workspaceID = getWorkspaceID()

//:### List counterexamples

assistant.listCounterexamples(workspaceID: workspaceID) {
    response, error in

    guard let counterexamples = response?.result else {
        print(error?.localizedDescription ?? "unknown error")
        return
    }

    print(counterexamples)
}

//:### Create counterexample

assistant.createCounterexample(workspaceID: workspaceID, text: "Make me a sandwich") {
    response, error in

    guard let counterexample = response?.result else {
        print(error?.localizedDescription ?? "unknown error")
        return
    }

    print(counterexample)
}

//:### Get counterexample

assistant.getCounterexample(workspaceID: workspaceID, text: "Make me a sandwich") {
    response, error in

    guard let counterexample = response?.result else {
        print(error?.localizedDescription ?? "unknown error")
        return
    }

    print(counterexample)
}

//:### Update counterexample

assistant.updateCounterexample(workspaceID: workspaceID, text: "Make me a sandwich", newText: "Make me a cheeseburger"){
    response, error in

    guard let counterexample = response?.result else {
        print(error?.localizedDescription ?? "unknown error")
        return
    }

    print(counterexample)
}

//:### Delete counterexample

assistant.deleteCounterexample(workspaceID: workspaceID, text: "Make me a cheeseburger") {
    _, error in

    if let error = error {
        print(error.localizedDescription)
        return
    }

    print("counterexample deleted")
}
