# PlantUML

PlantUML in a nutshell <https://plantuml.com>

## Customize the look

- `skinparam handwritten true` - squiggling borders
- `skinparam monochrome true` - black&white

## Examples

- Sequence diagram <https://plantuml.com/sequence-diagram>
```csharp
@startuml sequence

title Device creation
hide footbox
' skinparam handwritten true
' skinparam monochrome true
' actor, participant, database, collections, queue
'
actor User as user 


user -> api_client: devices.create(device) 
note right: device is created using factory method:\n **Device.new_router(...)**
activate api_client
    alt NO EXCEPTION
        api_client -> devices_payload: payload = CreateRequest.from_device(device)
        activate devices_payload #red
            devices_payload -> devices_payload: validate(device)
        return
        api_client -> api_calls: api_call = create_device()
        api_client -> api_connector: response = send(api_call, payload)
        api_client -> devices_payload: result = CreateResponse.from_json(response.text).to_device()
        activate devices_payload #red
            devices_payload -> devices_payload: validate(json)
        return
        user <-- api_client: result
    else HTTP/VALIDATION/DESERIALIZATION EXCEPTION
        user <-- api_client: exception
    end
deactivate
@enduml
```
![](media/sequence.png)

- Component diagram <https://plantuml.com/component-diagram>

```csharp
@startuml component

title Components 

package "api_connection" {
    interface APIConnectorProtocol #red 
    note right: abstracts connection towards http api
    [APIConnector] - APIConnectorProtocol: provide
}

package "tests" {
    component StubAPIConnector
    note right: allows to test eg. DevicesAPI without spinning actual http server
    [StubAPIConnector] -- APIConnectorProtocol: provide
}
package "api_resources" {
    APIConnectorProtocol )..# [DevicesAPI]: require
    APIConnectorProtocol )..# [UsersAPI]: require
    APIConnectorProtocol )..# [PlansAPI]: require
}

package "public" {
    [Device]
}

package "requests_payloads" {
    [CreateRequest]
}

package "api_calls" {
    [create_device]
}
[DevicesAPI] --> [create_device]: use
[DevicesAPI] --> [Device]: use
[DevicesAPI] --> [CreateRequest]: use
[CreateRequest] -> [Device]: use
@enduml
```
![](media/component.png)

-  Activity diagram <https://plantuml.com/activity-diagram-beta>

```csharp
@startuml activity

title Bulk user create from .yaml
!pragma useVerticalIf off

start
    :users = load users from .yaml file;
    if (load successful?) then (no)
        :print failure;
        stop
    else (yes)
    endif

    partition "Create Users" {
        while (has more users?) is (yes)
            :pop user dict from users;
            :deserialize User from user dict;
            if (deserialization successful?) then (yes)
                #lightgreen:http request user create;
            else (no)
                #red:log error;
            endif
        endwhile (no)
    }
    :print num users created;
stop
@enduml
```
![](media/activity.png)