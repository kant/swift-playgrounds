//:## Logs

import AssistantV1

let assistant = setupAssistantV1()
let workspaceID = getWorkspaceID()

//:### List log events in a workspace

assistant.listLogs(workspaceID: workspaceID) {
    response, error in

    guard let logs = response?.result else {
        print(error?.localizedDescription ?? "unknown error")
        return
    }

    print(logs)
}

//:### List log events in all workspaces

assistant.listAllLogs(filter: "language::en,request.context.metadata.deployment::testDeployment") {
    response, error in

    guard let logs = response?.result else {
        print(error?.localizedDescription ?? "unknown error")
        return
    }

    print(logs)
}
